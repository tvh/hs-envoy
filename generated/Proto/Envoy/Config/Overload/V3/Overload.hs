{- This file was auto-generated from envoy/config/overload/v3/overload.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Overload.V3.Overload (
        OverloadAction(), OverloadManager(), ResourceMonitor(),
        ResourceMonitor'ConfigType(..), _ResourceMonitor'TypedConfig,
        ScaleTimersOverloadActionConfig(),
        ScaleTimersOverloadActionConfig'ScaleTimer(),
        ScaleTimersOverloadActionConfig'ScaleTimer'OverloadAdjust(..),
        _ScaleTimersOverloadActionConfig'ScaleTimer'MinTimeout,
        _ScaleTimersOverloadActionConfig'ScaleTimer'MinScale,
        ScaleTimersOverloadActionConfig'TimerType(..),
        ScaleTimersOverloadActionConfig'TimerType(),
        ScaleTimersOverloadActionConfig'TimerType'UnrecognizedValue,
        ScaledTrigger(), ThresholdTrigger(), Trigger(),
        Trigger'TriggerOneof(..), _Trigger'Threshold, _Trigger'Scaled
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
import qualified Proto.Envoy.Type.V3.Percent
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.name' @:: Lens' OverloadAction Data.Text.Text@
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.triggers' @:: Lens' OverloadAction [Trigger]@
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.vec'triggers' @:: Lens' OverloadAction (Data.Vector.Vector Trigger)@
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.typedConfig' @:: Lens' OverloadAction Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.maybe'typedConfig' @:: Lens' OverloadAction (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data OverloadAction
  = OverloadAction'_constructor {_OverloadAction'name :: !Data.Text.Text,
                                 _OverloadAction'triggers :: !(Data.Vector.Vector Trigger),
                                 _OverloadAction'typedConfig :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                 _OverloadAction'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OverloadAction where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField OverloadAction "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OverloadAction'name
           (\ x__ y__ -> x__ {_OverloadAction'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OverloadAction "triggers" [Trigger] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OverloadAction'triggers
           (\ x__ y__ -> x__ {_OverloadAction'triggers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField OverloadAction "vec'triggers" (Data.Vector.Vector Trigger) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OverloadAction'triggers
           (\ x__ y__ -> x__ {_OverloadAction'triggers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OverloadAction "typedConfig" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OverloadAction'typedConfig
           (\ x__ y__ -> x__ {_OverloadAction'typedConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OverloadAction "maybe'typedConfig" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OverloadAction'typedConfig
           (\ x__ y__ -> x__ {_OverloadAction'typedConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message OverloadAction where
  messageName _
    = Data.Text.pack "envoy.config.overload.v3.OverloadAction"
  packedMessageDescriptor _
    = "\n\
      \\SOOverloadAction\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2G\n\
      \\btriggers\CAN\STX \ETX(\v2!.envoy.config.overload.v3.TriggerR\btriggersB\b\250B\ENQ\146\SOH\STX\b\SOH\DC27\n\
      \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyR\vtypedConfig:3\154\197\136\RS.\n\
      \,envoy.config.overload.v2alpha.OverloadAction"
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
              Data.ProtoLens.FieldDescriptor OverloadAction
        triggers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "triggers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Trigger)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"triggers")) ::
              Data.ProtoLens.FieldDescriptor OverloadAction
        typedConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "typed_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'typedConfig")) ::
              Data.ProtoLens.FieldDescriptor OverloadAction
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, triggers__field_descriptor),
           (Data.ProtoLens.Tag 3, typedConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OverloadAction'_unknownFields
        (\ x__ y__ -> x__ {_OverloadAction'_unknownFields = y__})
  defMessage
    = OverloadAction'_constructor
        {_OverloadAction'name = Data.ProtoLens.fieldDefault,
         _OverloadAction'triggers = Data.Vector.Generic.empty,
         _OverloadAction'typedConfig = Prelude.Nothing,
         _OverloadAction'_unknownFields = []}
  parseMessage
    = let
        loop ::
          OverloadAction
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Trigger
             -> Data.ProtoLens.Encoding.Bytes.Parser OverloadAction
        loop x mutable'triggers
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'triggers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'triggers)
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
                              (Data.ProtoLens.Field.field @"vec'triggers") frozen'triggers x))
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
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'triggers
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "triggers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'triggers y)
                                loop x v
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "typed_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"typedConfig") y x)
                                  mutable'triggers
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'triggers
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'triggers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'triggers)
          "OverloadAction"
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
                      (Data.ProtoLens.Field.field @"vec'triggers") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'typedConfig") _x
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
instance Control.DeepSeq.NFData OverloadAction where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_OverloadAction'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_OverloadAction'name x__)
                (Control.DeepSeq.deepseq
                   (_OverloadAction'triggers x__)
                   (Control.DeepSeq.deepseq (_OverloadAction'typedConfig x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.refreshInterval' @:: Lens' OverloadManager Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.maybe'refreshInterval' @:: Lens' OverloadManager (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.resourceMonitors' @:: Lens' OverloadManager [ResourceMonitor]@
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.vec'resourceMonitors' @:: Lens' OverloadManager (Data.Vector.Vector ResourceMonitor)@
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.actions' @:: Lens' OverloadManager [OverloadAction]@
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.vec'actions' @:: Lens' OverloadManager (Data.Vector.Vector OverloadAction)@ -}
data OverloadManager
  = OverloadManager'_constructor {_OverloadManager'refreshInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                  _OverloadManager'resourceMonitors :: !(Data.Vector.Vector ResourceMonitor),
                                  _OverloadManager'actions :: !(Data.Vector.Vector OverloadAction),
                                  _OverloadManager'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OverloadManager where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField OverloadManager "refreshInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OverloadManager'refreshInterval
           (\ x__ y__ -> x__ {_OverloadManager'refreshInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OverloadManager "maybe'refreshInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OverloadManager'refreshInterval
           (\ x__ y__ -> x__ {_OverloadManager'refreshInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OverloadManager "resourceMonitors" [ResourceMonitor] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OverloadManager'resourceMonitors
           (\ x__ y__ -> x__ {_OverloadManager'resourceMonitors = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField OverloadManager "vec'resourceMonitors" (Data.Vector.Vector ResourceMonitor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OverloadManager'resourceMonitors
           (\ x__ y__ -> x__ {_OverloadManager'resourceMonitors = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OverloadManager "actions" [OverloadAction] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OverloadManager'actions
           (\ x__ y__ -> x__ {_OverloadManager'actions = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField OverloadManager "vec'actions" (Data.Vector.Vector OverloadAction) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OverloadManager'actions
           (\ x__ y__ -> x__ {_OverloadManager'actions = y__}))
        Prelude.id
instance Data.ProtoLens.Message OverloadManager where
  messageName _
    = Data.Text.pack "envoy.config.overload.v3.OverloadManager"
  packedMessageDescriptor _
    = "\n\
      \\SIOverloadManager\DC2D\n\
      \\DLErefresh_interval\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\SIrefreshInterval\DC2`\n\
      \\DC1resource_monitors\CAN\STX \ETX(\v2).envoy.config.overload.v3.ResourceMonitorR\DLEresourceMonitorsB\b\250B\ENQ\146\SOH\STX\b\SOH\DC2B\n\
      \\aactions\CAN\ETX \ETX(\v2(.envoy.config.overload.v3.OverloadActionR\aactions:4\154\197\136\RS/\n\
      \-envoy.config.overload.v2alpha.OverloadManager"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        refreshInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "refresh_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'refreshInterval")) ::
              Data.ProtoLens.FieldDescriptor OverloadManager
        resourceMonitors__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resource_monitors"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResourceMonitor)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"resourceMonitors")) ::
              Data.ProtoLens.FieldDescriptor OverloadManager
        actions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "actions"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor OverloadAction)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"actions")) ::
              Data.ProtoLens.FieldDescriptor OverloadManager
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, refreshInterval__field_descriptor),
           (Data.ProtoLens.Tag 2, resourceMonitors__field_descriptor),
           (Data.ProtoLens.Tag 3, actions__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OverloadManager'_unknownFields
        (\ x__ y__ -> x__ {_OverloadManager'_unknownFields = y__})
  defMessage
    = OverloadManager'_constructor
        {_OverloadManager'refreshInterval = Prelude.Nothing,
         _OverloadManager'resourceMonitors = Data.Vector.Generic.empty,
         _OverloadManager'actions = Data.Vector.Generic.empty,
         _OverloadManager'_unknownFields = []}
  parseMessage
    = let
        loop ::
          OverloadManager
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld OverloadAction
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ResourceMonitor
                -> Data.ProtoLens.Encoding.Bytes.Parser OverloadManager
        loop x mutable'actions mutable'resourceMonitors
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'actions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'actions)
                      frozen'resourceMonitors <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'resourceMonitors)
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
                              (Data.ProtoLens.Field.field @"vec'actions")
                              frozen'actions
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'resourceMonitors")
                                 frozen'resourceMonitors
                                 x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "refresh_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"refreshInterval") y x)
                                  mutable'actions
                                  mutable'resourceMonitors
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "resource_monitors"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'resourceMonitors y)
                                loop x mutable'actions v
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "actions"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'actions y)
                                loop x v mutable'resourceMonitors
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'actions
                                  mutable'resourceMonitors
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'actions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              mutable'resourceMonitors <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'actions mutable'resourceMonitors)
          "OverloadManager"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'refreshInterval") _x
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
                      (Data.ProtoLens.Field.field @"vec'resourceMonitors") _x))
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
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'actions") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData OverloadManager where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_OverloadManager'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_OverloadManager'refreshInterval x__)
                (Control.DeepSeq.deepseq
                   (_OverloadManager'resourceMonitors x__)
                   (Control.DeepSeq.deepseq (_OverloadManager'actions x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.name' @:: Lens' ResourceMonitor Data.Text.Text@
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.maybe'configType' @:: Lens' ResourceMonitor (Prelude.Maybe ResourceMonitor'ConfigType)@
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.maybe'typedConfig' @:: Lens' ResourceMonitor (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.typedConfig' @:: Lens' ResourceMonitor Proto.Google.Protobuf.Any.Any@ -}
data ResourceMonitor
  = ResourceMonitor'_constructor {_ResourceMonitor'name :: !Data.Text.Text,
                                  _ResourceMonitor'configType :: !(Prelude.Maybe ResourceMonitor'ConfigType),
                                  _ResourceMonitor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResourceMonitor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ResourceMonitor'ConfigType
  = ResourceMonitor'TypedConfig !Proto.Google.Protobuf.Any.Any
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ResourceMonitor "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResourceMonitor'name
           (\ x__ y__ -> x__ {_ResourceMonitor'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResourceMonitor "maybe'configType" (Prelude.Maybe ResourceMonitor'ConfigType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResourceMonitor'configType
           (\ x__ y__ -> x__ {_ResourceMonitor'configType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResourceMonitor "maybe'typedConfig" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResourceMonitor'configType
           (\ x__ y__ -> x__ {_ResourceMonitor'configType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ResourceMonitor'TypedConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ResourceMonitor'TypedConfig y__))
instance Data.ProtoLens.Field.HasField ResourceMonitor "typedConfig" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResourceMonitor'configType
           (\ x__ y__ -> x__ {_ResourceMonitor'configType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ResourceMonitor'TypedConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ResourceMonitor'TypedConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ResourceMonitor where
  messageName _
    = Data.Text.pack "envoy.config.overload.v3.ResourceMonitor"
  packedMessageDescriptor _
    = "\n\
      \\SIResourceMonitor\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC29\n\
      \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfigB\r\n\
      \\vconfig_type:4\154\197\136\RS/\n\
      \-envoy.config.overload.v2alpha.ResourceMonitorJ\EOT\b\STX\DLE\ETXR\ACKconfig"
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
              Data.ProtoLens.FieldDescriptor ResourceMonitor
        typedConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "typed_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'typedConfig")) ::
              Data.ProtoLens.FieldDescriptor ResourceMonitor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 3, typedConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResourceMonitor'_unknownFields
        (\ x__ y__ -> x__ {_ResourceMonitor'_unknownFields = y__})
  defMessage
    = ResourceMonitor'_constructor
        {_ResourceMonitor'name = Data.ProtoLens.fieldDefault,
         _ResourceMonitor'configType = Prelude.Nothing,
         _ResourceMonitor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResourceMonitor
          -> Data.ProtoLens.Encoding.Bytes.Parser ResourceMonitor
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
          (do loop Data.ProtoLens.defMessage) "ResourceMonitor"
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
                   (Prelude.Just (ResourceMonitor'TypedConfig v))
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
instance Control.DeepSeq.NFData ResourceMonitor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResourceMonitor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResourceMonitor'name x__)
                (Control.DeepSeq.deepseq (_ResourceMonitor'configType x__) ()))
instance Control.DeepSeq.NFData ResourceMonitor'ConfigType where
  rnf (ResourceMonitor'TypedConfig x__) = Control.DeepSeq.rnf x__
_ResourceMonitor'TypedConfig ::
  Data.ProtoLens.Prism.Prism' ResourceMonitor'ConfigType Proto.Google.Protobuf.Any.Any
_ResourceMonitor'TypedConfig
  = Data.ProtoLens.Prism.prism'
      ResourceMonitor'TypedConfig
      (\ p__
         -> case p__ of {
              (ResourceMonitor'TypedConfig p__val) -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.timerScaleFactors' @:: Lens' ScaleTimersOverloadActionConfig [ScaleTimersOverloadActionConfig'ScaleTimer]@
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.vec'timerScaleFactors' @:: Lens' ScaleTimersOverloadActionConfig (Data.Vector.Vector ScaleTimersOverloadActionConfig'ScaleTimer)@ -}
data ScaleTimersOverloadActionConfig
  = ScaleTimersOverloadActionConfig'_constructor {_ScaleTimersOverloadActionConfig'timerScaleFactors :: !(Data.Vector.Vector ScaleTimersOverloadActionConfig'ScaleTimer),
                                                  _ScaleTimersOverloadActionConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScaleTimersOverloadActionConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScaleTimersOverloadActionConfig "timerScaleFactors" [ScaleTimersOverloadActionConfig'ScaleTimer] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScaleTimersOverloadActionConfig'timerScaleFactors
           (\ x__ y__
              -> x__ {_ScaleTimersOverloadActionConfig'timerScaleFactors = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ScaleTimersOverloadActionConfig "vec'timerScaleFactors" (Data.Vector.Vector ScaleTimersOverloadActionConfig'ScaleTimer) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScaleTimersOverloadActionConfig'timerScaleFactors
           (\ x__ y__
              -> x__ {_ScaleTimersOverloadActionConfig'timerScaleFactors = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScaleTimersOverloadActionConfig where
  messageName _
    = Data.Text.pack
        "envoy.config.overload.v3.ScaleTimersOverloadActionConfig"
  packedMessageDescriptor _
    = "\n\
      \\USScaleTimersOverloadActionConfig\DC2~\n\
      \\DC3timer_scale_factors\CAN\SOH \ETX(\v2D.envoy.config.overload.v3.ScaleTimersOverloadActionConfig.ScaleTimerR\DC1timerScaleFactorsB\b\250B\ENQ\146\SOH\STX\b\SOH\SUB\128\STX\n\
      \\n\
      \ScaleTimer\DC2e\n\
      \\ENQtimer\CAN\SOH \SOH(\SO2C.envoy.config.overload.v3.ScaleTimersOverloadActionConfig.TimerTypeR\ENQtimerB\n\
      \\250B\a\130\SOH\EOT\DLE\SOH \NUL\DC2<\n\
      \\vmin_timeout\CAN\STX \SOH(\v2\EM.google.protobuf.DurationH\NULR\n\
      \minTimeout\DC25\n\
      \\tmin_scale\CAN\ETX \SOH(\v2\SYN.envoy.type.v3.PercentH\NULR\bminScaleB\SYN\n\
      \\SIoverload_adjust\DC2\ETX\248B\SOH\"\128\SOH\n\
      \\tTimerType\DC2\SI\n\
      \\vUNSPECIFIED\DLE\NUL\DC2#\n\
      \\USHTTP_DOWNSTREAM_CONNECTION_IDLE\DLE\SOH\DC2\US\n\
      \\ESCHTTP_DOWNSTREAM_STREAM_IDLE\DLE\STX\DC2\FS\n\
      \\CANTRANSPORT_SOCKET_CONNECT\DLE\ETX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        timerScaleFactors__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timer_scale_factors"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScaleTimersOverloadActionConfig'ScaleTimer)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"timerScaleFactors")) ::
              Data.ProtoLens.FieldDescriptor ScaleTimersOverloadActionConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, timerScaleFactors__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScaleTimersOverloadActionConfig'_unknownFields
        (\ x__ y__
           -> x__ {_ScaleTimersOverloadActionConfig'_unknownFields = y__})
  defMessage
    = ScaleTimersOverloadActionConfig'_constructor
        {_ScaleTimersOverloadActionConfig'timerScaleFactors = Data.Vector.Generic.empty,
         _ScaleTimersOverloadActionConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScaleTimersOverloadActionConfig
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ScaleTimersOverloadActionConfig'ScaleTimer
             -> Data.ProtoLens.Encoding.Bytes.Parser ScaleTimersOverloadActionConfig
        loop x mutable'timerScaleFactors
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'timerScaleFactors <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                       mutable'timerScaleFactors)
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
                              (Data.ProtoLens.Field.field @"vec'timerScaleFactors")
                              frozen'timerScaleFactors
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "timer_scale_factors"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'timerScaleFactors y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'timerScaleFactors
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'timerScaleFactors <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'timerScaleFactors)
          "ScaleTimersOverloadActionConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
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
                           _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'timerScaleFactors") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ScaleTimersOverloadActionConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScaleTimersOverloadActionConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScaleTimersOverloadActionConfig'timerScaleFactors x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.timer' @:: Lens' ScaleTimersOverloadActionConfig'ScaleTimer ScaleTimersOverloadActionConfig'TimerType@
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.maybe'overloadAdjust' @:: Lens' ScaleTimersOverloadActionConfig'ScaleTimer (Prelude.Maybe ScaleTimersOverloadActionConfig'ScaleTimer'OverloadAdjust)@
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.maybe'minTimeout' @:: Lens' ScaleTimersOverloadActionConfig'ScaleTimer (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.minTimeout' @:: Lens' ScaleTimersOverloadActionConfig'ScaleTimer Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.maybe'minScale' @:: Lens' ScaleTimersOverloadActionConfig'ScaleTimer (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent)@
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.minScale' @:: Lens' ScaleTimersOverloadActionConfig'ScaleTimer Proto.Envoy.Type.V3.Percent.Percent@ -}
data ScaleTimersOverloadActionConfig'ScaleTimer
  = ScaleTimersOverloadActionConfig'ScaleTimer'_constructor {_ScaleTimersOverloadActionConfig'ScaleTimer'timer :: !ScaleTimersOverloadActionConfig'TimerType,
                                                             _ScaleTimersOverloadActionConfig'ScaleTimer'overloadAdjust :: !(Prelude.Maybe ScaleTimersOverloadActionConfig'ScaleTimer'OverloadAdjust),
                                                             _ScaleTimersOverloadActionConfig'ScaleTimer'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScaleTimersOverloadActionConfig'ScaleTimer where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ScaleTimersOverloadActionConfig'ScaleTimer'OverloadAdjust
  = ScaleTimersOverloadActionConfig'ScaleTimer'MinTimeout !Proto.Google.Protobuf.Duration.Duration |
    ScaleTimersOverloadActionConfig'ScaleTimer'MinScale !Proto.Envoy.Type.V3.Percent.Percent
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ScaleTimersOverloadActionConfig'ScaleTimer "timer" ScaleTimersOverloadActionConfig'TimerType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScaleTimersOverloadActionConfig'ScaleTimer'timer
           (\ x__ y__
              -> x__ {_ScaleTimersOverloadActionConfig'ScaleTimer'timer = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScaleTimersOverloadActionConfig'ScaleTimer "maybe'overloadAdjust" (Prelude.Maybe ScaleTimersOverloadActionConfig'ScaleTimer'OverloadAdjust) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScaleTimersOverloadActionConfig'ScaleTimer'overloadAdjust
           (\ x__ y__
              -> x__
                   {_ScaleTimersOverloadActionConfig'ScaleTimer'overloadAdjust = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScaleTimersOverloadActionConfig'ScaleTimer "maybe'minTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScaleTimersOverloadActionConfig'ScaleTimer'overloadAdjust
           (\ x__ y__
              -> x__
                   {_ScaleTimersOverloadActionConfig'ScaleTimer'overloadAdjust = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ScaleTimersOverloadActionConfig'ScaleTimer'MinTimeout x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   ScaleTimersOverloadActionConfig'ScaleTimer'MinTimeout y__))
instance Data.ProtoLens.Field.HasField ScaleTimersOverloadActionConfig'ScaleTimer "minTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScaleTimersOverloadActionConfig'ScaleTimer'overloadAdjust
           (\ x__ y__
              -> x__
                   {_ScaleTimersOverloadActionConfig'ScaleTimer'overloadAdjust = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ScaleTimersOverloadActionConfig'ScaleTimer'MinTimeout x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      ScaleTimersOverloadActionConfig'ScaleTimer'MinTimeout y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ScaleTimersOverloadActionConfig'ScaleTimer "maybe'minScale" (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScaleTimersOverloadActionConfig'ScaleTimer'overloadAdjust
           (\ x__ y__
              -> x__
                   {_ScaleTimersOverloadActionConfig'ScaleTimer'overloadAdjust = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ScaleTimersOverloadActionConfig'ScaleTimer'MinScale x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   ScaleTimersOverloadActionConfig'ScaleTimer'MinScale y__))
instance Data.ProtoLens.Field.HasField ScaleTimersOverloadActionConfig'ScaleTimer "minScale" Proto.Envoy.Type.V3.Percent.Percent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScaleTimersOverloadActionConfig'ScaleTimer'overloadAdjust
           (\ x__ y__
              -> x__
                   {_ScaleTimersOverloadActionConfig'ScaleTimer'overloadAdjust = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ScaleTimersOverloadActionConfig'ScaleTimer'MinScale x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      ScaleTimersOverloadActionConfig'ScaleTimer'MinScale y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ScaleTimersOverloadActionConfig'ScaleTimer where
  messageName _
    = Data.Text.pack
        "envoy.config.overload.v3.ScaleTimersOverloadActionConfig.ScaleTimer"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \ScaleTimer\DC2e\n\
      \\ENQtimer\CAN\SOH \SOH(\SO2C.envoy.config.overload.v3.ScaleTimersOverloadActionConfig.TimerTypeR\ENQtimerB\n\
      \\250B\a\130\SOH\EOT\DLE\SOH \NUL\DC2<\n\
      \\vmin_timeout\CAN\STX \SOH(\v2\EM.google.protobuf.DurationH\NULR\n\
      \minTimeout\DC25\n\
      \\tmin_scale\CAN\ETX \SOH(\v2\SYN.envoy.type.v3.PercentH\NULR\bminScaleB\SYN\n\
      \\SIoverload_adjust\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        timer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timer"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ScaleTimersOverloadActionConfig'TimerType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"timer")) ::
              Data.ProtoLens.FieldDescriptor ScaleTimersOverloadActionConfig'ScaleTimer
        minTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'minTimeout")) ::
              Data.ProtoLens.FieldDescriptor ScaleTimersOverloadActionConfig'ScaleTimer
        minScale__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min_scale"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Percent.Percent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'minScale")) ::
              Data.ProtoLens.FieldDescriptor ScaleTimersOverloadActionConfig'ScaleTimer
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, timer__field_descriptor),
           (Data.ProtoLens.Tag 2, minTimeout__field_descriptor),
           (Data.ProtoLens.Tag 3, minScale__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScaleTimersOverloadActionConfig'ScaleTimer'_unknownFields
        (\ x__ y__
           -> x__
                {_ScaleTimersOverloadActionConfig'ScaleTimer'_unknownFields = y__})
  defMessage
    = ScaleTimersOverloadActionConfig'ScaleTimer'_constructor
        {_ScaleTimersOverloadActionConfig'ScaleTimer'timer = Data.ProtoLens.fieldDefault,
         _ScaleTimersOverloadActionConfig'ScaleTimer'overloadAdjust = Prelude.Nothing,
         _ScaleTimersOverloadActionConfig'ScaleTimer'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScaleTimersOverloadActionConfig'ScaleTimer
          -> Data.ProtoLens.Encoding.Bytes.Parser ScaleTimersOverloadActionConfig'ScaleTimer
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
                                       "timer"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"timer") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "min_timeout"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"minTimeout") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "min_scale"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"minScale") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ScaleTimer"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"timer") _x
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'overloadAdjust") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (ScaleTimersOverloadActionConfig'ScaleTimer'MinTimeout v))
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
                   (Prelude.Just (ScaleTimersOverloadActionConfig'ScaleTimer'MinScale v))
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
instance Control.DeepSeq.NFData ScaleTimersOverloadActionConfig'ScaleTimer where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScaleTimersOverloadActionConfig'ScaleTimer'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScaleTimersOverloadActionConfig'ScaleTimer'timer x__)
                (Control.DeepSeq.deepseq
                   (_ScaleTimersOverloadActionConfig'ScaleTimer'overloadAdjust x__)
                   ()))
instance Control.DeepSeq.NFData ScaleTimersOverloadActionConfig'ScaleTimer'OverloadAdjust where
  rnf (ScaleTimersOverloadActionConfig'ScaleTimer'MinTimeout x__)
    = Control.DeepSeq.rnf x__
  rnf (ScaleTimersOverloadActionConfig'ScaleTimer'MinScale x__)
    = Control.DeepSeq.rnf x__
_ScaleTimersOverloadActionConfig'ScaleTimer'MinTimeout ::
  Data.ProtoLens.Prism.Prism' ScaleTimersOverloadActionConfig'ScaleTimer'OverloadAdjust Proto.Google.Protobuf.Duration.Duration
_ScaleTimersOverloadActionConfig'ScaleTimer'MinTimeout
  = Data.ProtoLens.Prism.prism'
      ScaleTimersOverloadActionConfig'ScaleTimer'MinTimeout
      (\ p__
         -> case p__ of
              (ScaleTimersOverloadActionConfig'ScaleTimer'MinTimeout p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ScaleTimersOverloadActionConfig'ScaleTimer'MinScale ::
  Data.ProtoLens.Prism.Prism' ScaleTimersOverloadActionConfig'ScaleTimer'OverloadAdjust Proto.Envoy.Type.V3.Percent.Percent
_ScaleTimersOverloadActionConfig'ScaleTimer'MinScale
  = Data.ProtoLens.Prism.prism'
      ScaleTimersOverloadActionConfig'ScaleTimer'MinScale
      (\ p__
         -> case p__ of
              (ScaleTimersOverloadActionConfig'ScaleTimer'MinScale p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
newtype ScaleTimersOverloadActionConfig'TimerType'UnrecognizedValue
  = ScaleTimersOverloadActionConfig'TimerType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ScaleTimersOverloadActionConfig'TimerType
  = ScaleTimersOverloadActionConfig'UNSPECIFIED |
    ScaleTimersOverloadActionConfig'HTTP_DOWNSTREAM_CONNECTION_IDLE |
    ScaleTimersOverloadActionConfig'HTTP_DOWNSTREAM_STREAM_IDLE |
    ScaleTimersOverloadActionConfig'TRANSPORT_SOCKET_CONNECT |
    ScaleTimersOverloadActionConfig'TimerType'Unrecognized !ScaleTimersOverloadActionConfig'TimerType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ScaleTimersOverloadActionConfig'TimerType where
  maybeToEnum 0
    = Prelude.Just ScaleTimersOverloadActionConfig'UNSPECIFIED
  maybeToEnum 1
    = Prelude.Just
        ScaleTimersOverloadActionConfig'HTTP_DOWNSTREAM_CONNECTION_IDLE
  maybeToEnum 2
    = Prelude.Just
        ScaleTimersOverloadActionConfig'HTTP_DOWNSTREAM_STREAM_IDLE
  maybeToEnum 3
    = Prelude.Just
        ScaleTimersOverloadActionConfig'TRANSPORT_SOCKET_CONNECT
  maybeToEnum k
    = Prelude.Just
        (ScaleTimersOverloadActionConfig'TimerType'Unrecognized
           (ScaleTimersOverloadActionConfig'TimerType'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum ScaleTimersOverloadActionConfig'UNSPECIFIED
    = "UNSPECIFIED"
  showEnum
    ScaleTimersOverloadActionConfig'HTTP_DOWNSTREAM_CONNECTION_IDLE
    = "HTTP_DOWNSTREAM_CONNECTION_IDLE"
  showEnum
    ScaleTimersOverloadActionConfig'HTTP_DOWNSTREAM_STREAM_IDLE
    = "HTTP_DOWNSTREAM_STREAM_IDLE"
  showEnum ScaleTimersOverloadActionConfig'TRANSPORT_SOCKET_CONNECT
    = "TRANSPORT_SOCKET_CONNECT"
  showEnum
    (ScaleTimersOverloadActionConfig'TimerType'Unrecognized (ScaleTimersOverloadActionConfig'TimerType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "UNSPECIFIED"
    = Prelude.Just ScaleTimersOverloadActionConfig'UNSPECIFIED
    | (Prelude.==) k "HTTP_DOWNSTREAM_CONNECTION_IDLE"
    = Prelude.Just
        ScaleTimersOverloadActionConfig'HTTP_DOWNSTREAM_CONNECTION_IDLE
    | (Prelude.==) k "HTTP_DOWNSTREAM_STREAM_IDLE"
    = Prelude.Just
        ScaleTimersOverloadActionConfig'HTTP_DOWNSTREAM_STREAM_IDLE
    | (Prelude.==) k "TRANSPORT_SOCKET_CONNECT"
    = Prelude.Just
        ScaleTimersOverloadActionConfig'TRANSPORT_SOCKET_CONNECT
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ScaleTimersOverloadActionConfig'TimerType where
  minBound = ScaleTimersOverloadActionConfig'UNSPECIFIED
  maxBound = ScaleTimersOverloadActionConfig'TRANSPORT_SOCKET_CONNECT
instance Prelude.Enum ScaleTimersOverloadActionConfig'TimerType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum TimerType: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum ScaleTimersOverloadActionConfig'UNSPECIFIED = 0
  fromEnum
    ScaleTimersOverloadActionConfig'HTTP_DOWNSTREAM_CONNECTION_IDLE
    = 1
  fromEnum
    ScaleTimersOverloadActionConfig'HTTP_DOWNSTREAM_STREAM_IDLE
    = 2
  fromEnum ScaleTimersOverloadActionConfig'TRANSPORT_SOCKET_CONNECT
    = 3
  fromEnum
    (ScaleTimersOverloadActionConfig'TimerType'Unrecognized (ScaleTimersOverloadActionConfig'TimerType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ ScaleTimersOverloadActionConfig'TRANSPORT_SOCKET_CONNECT
    = Prelude.error
        "ScaleTimersOverloadActionConfig'TimerType.succ: bad argument ScaleTimersOverloadActionConfig'TRANSPORT_SOCKET_CONNECT. This value would be out of bounds."
  succ ScaleTimersOverloadActionConfig'UNSPECIFIED
    = ScaleTimersOverloadActionConfig'HTTP_DOWNSTREAM_CONNECTION_IDLE
  succ
    ScaleTimersOverloadActionConfig'HTTP_DOWNSTREAM_CONNECTION_IDLE
    = ScaleTimersOverloadActionConfig'HTTP_DOWNSTREAM_STREAM_IDLE
  succ ScaleTimersOverloadActionConfig'HTTP_DOWNSTREAM_STREAM_IDLE
    = ScaleTimersOverloadActionConfig'TRANSPORT_SOCKET_CONNECT
  succ (ScaleTimersOverloadActionConfig'TimerType'Unrecognized _)
    = Prelude.error
        "ScaleTimersOverloadActionConfig'TimerType.succ: bad argument: unrecognized value"
  pred ScaleTimersOverloadActionConfig'UNSPECIFIED
    = Prelude.error
        "ScaleTimersOverloadActionConfig'TimerType.pred: bad argument ScaleTimersOverloadActionConfig'UNSPECIFIED. This value would be out of bounds."
  pred
    ScaleTimersOverloadActionConfig'HTTP_DOWNSTREAM_CONNECTION_IDLE
    = ScaleTimersOverloadActionConfig'UNSPECIFIED
  pred ScaleTimersOverloadActionConfig'HTTP_DOWNSTREAM_STREAM_IDLE
    = ScaleTimersOverloadActionConfig'HTTP_DOWNSTREAM_CONNECTION_IDLE
  pred ScaleTimersOverloadActionConfig'TRANSPORT_SOCKET_CONNECT
    = ScaleTimersOverloadActionConfig'HTTP_DOWNSTREAM_STREAM_IDLE
  pred (ScaleTimersOverloadActionConfig'TimerType'Unrecognized _)
    = Prelude.error
        "ScaleTimersOverloadActionConfig'TimerType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ScaleTimersOverloadActionConfig'TimerType where
  fieldDefault = ScaleTimersOverloadActionConfig'UNSPECIFIED
instance Control.DeepSeq.NFData ScaleTimersOverloadActionConfig'TimerType where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.scalingThreshold' @:: Lens' ScaledTrigger Prelude.Double@
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.saturationThreshold' @:: Lens' ScaledTrigger Prelude.Double@ -}
data ScaledTrigger
  = ScaledTrigger'_constructor {_ScaledTrigger'scalingThreshold :: !Prelude.Double,
                                _ScaledTrigger'saturationThreshold :: !Prelude.Double,
                                _ScaledTrigger'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScaledTrigger where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScaledTrigger "scalingThreshold" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScaledTrigger'scalingThreshold
           (\ x__ y__ -> x__ {_ScaledTrigger'scalingThreshold = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScaledTrigger "saturationThreshold" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScaledTrigger'saturationThreshold
           (\ x__ y__ -> x__ {_ScaledTrigger'saturationThreshold = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScaledTrigger where
  messageName _
    = Data.Text.pack "envoy.config.overload.v3.ScaledTrigger"
  packedMessageDescriptor _
    = "\n\
      \\rScaledTrigger\DC2D\n\
      \\DC1scaling_threshold\CAN\SOH \SOH(\SOHR\DLEscalingThresholdB\ETB\250B\DC4\DC2\DC2\EM\NUL\NUL\NUL\NUL\NUL\NUL\240?)\NUL\NUL\NUL\NUL\NUL\NUL\NUL\NUL\DC2J\n\
      \\DC4saturation_threshold\CAN\STX \SOH(\SOHR\DC3saturationThresholdB\ETB\250B\DC4\DC2\DC2\EM\NUL\NUL\NUL\NUL\NUL\NUL\240?)\NUL\NUL\NUL\NUL\NUL\NUL\NUL\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        scalingThreshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scaling_threshold"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"scalingThreshold")) ::
              Data.ProtoLens.FieldDescriptor ScaledTrigger
        saturationThreshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "saturation_threshold"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"saturationThreshold")) ::
              Data.ProtoLens.FieldDescriptor ScaledTrigger
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, scalingThreshold__field_descriptor),
           (Data.ProtoLens.Tag 2, saturationThreshold__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScaledTrigger'_unknownFields
        (\ x__ y__ -> x__ {_ScaledTrigger'_unknownFields = y__})
  defMessage
    = ScaledTrigger'_constructor
        {_ScaledTrigger'scalingThreshold = Data.ProtoLens.fieldDefault,
         _ScaledTrigger'saturationThreshold = Data.ProtoLens.fieldDefault,
         _ScaledTrigger'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScaledTrigger -> Data.ProtoLens.Encoding.Bytes.Parser ScaledTrigger
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
                        9 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "scaling_threshold"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scalingThreshold") y x)
                        17
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "saturation_threshold"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"saturationThreshold") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ScaledTrigger"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"scalingThreshold") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 9)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putFixed64
                         Data.ProtoLens.Encoding.Bytes.doubleToWord
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"saturationThreshold") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 17)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putFixed64
                            Data.ProtoLens.Encoding.Bytes.doubleToWord
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ScaledTrigger where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScaledTrigger'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScaledTrigger'scalingThreshold x__)
                (Control.DeepSeq.deepseq
                   (_ScaledTrigger'saturationThreshold x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.value' @:: Lens' ThresholdTrigger Prelude.Double@ -}
data ThresholdTrigger
  = ThresholdTrigger'_constructor {_ThresholdTrigger'value :: !Prelude.Double,
                                   _ThresholdTrigger'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ThresholdTrigger where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ThresholdTrigger "value" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThresholdTrigger'value
           (\ x__ y__ -> x__ {_ThresholdTrigger'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message ThresholdTrigger where
  messageName _
    = Data.Text.pack "envoy.config.overload.v3.ThresholdTrigger"
  packedMessageDescriptor _
    = "\n\
      \\DLEThresholdTrigger\DC2-\n\
      \\ENQvalue\CAN\SOH \SOH(\SOHR\ENQvalueB\ETB\250B\DC4\DC2\DC2\EM\NUL\NUL\NUL\NUL\NUL\NUL\240?)\NUL\NUL\NUL\NUL\NUL\NUL\NUL\NUL:5\154\197\136\RS0\n\
      \.envoy.config.overload.v2alpha.ThresholdTrigger"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor ThresholdTrigger
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ThresholdTrigger'_unknownFields
        (\ x__ y__ -> x__ {_ThresholdTrigger'_unknownFields = y__})
  defMessage
    = ThresholdTrigger'_constructor
        {_ThresholdTrigger'value = Data.ProtoLens.fieldDefault,
         _ThresholdTrigger'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ThresholdTrigger
          -> Data.ProtoLens.Encoding.Bytes.Parser ThresholdTrigger
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
                        9 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
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
          (do loop Data.ProtoLens.defMessage) "ThresholdTrigger"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 9)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putFixed64
                         Data.ProtoLens.Encoding.Bytes.doubleToWord
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ThresholdTrigger where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ThresholdTrigger'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ThresholdTrigger'value x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.name' @:: Lens' Trigger Data.Text.Text@
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.maybe'triggerOneof' @:: Lens' Trigger (Prelude.Maybe Trigger'TriggerOneof)@
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.maybe'threshold' @:: Lens' Trigger (Prelude.Maybe ThresholdTrigger)@
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.threshold' @:: Lens' Trigger ThresholdTrigger@
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.maybe'scaled' @:: Lens' Trigger (Prelude.Maybe ScaledTrigger)@
         * 'Proto.Envoy.Config.Overload.V3.Overload_Fields.scaled' @:: Lens' Trigger ScaledTrigger@ -}
data Trigger
  = Trigger'_constructor {_Trigger'name :: !Data.Text.Text,
                          _Trigger'triggerOneof :: !(Prelude.Maybe Trigger'TriggerOneof),
                          _Trigger'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Trigger where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Trigger'TriggerOneof
  = Trigger'Threshold !ThresholdTrigger |
    Trigger'Scaled !ScaledTrigger
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Trigger "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Trigger'name (\ x__ y__ -> x__ {_Trigger'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Trigger "maybe'triggerOneof" (Prelude.Maybe Trigger'TriggerOneof) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Trigger'triggerOneof
           (\ x__ y__ -> x__ {_Trigger'triggerOneof = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Trigger "maybe'threshold" (Prelude.Maybe ThresholdTrigger) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Trigger'triggerOneof
           (\ x__ y__ -> x__ {_Trigger'triggerOneof = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Trigger'Threshold x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Trigger'Threshold y__))
instance Data.ProtoLens.Field.HasField Trigger "threshold" ThresholdTrigger where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Trigger'triggerOneof
           (\ x__ y__ -> x__ {_Trigger'triggerOneof = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Trigger'Threshold x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Trigger'Threshold y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Trigger "maybe'scaled" (Prelude.Maybe ScaledTrigger) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Trigger'triggerOneof
           (\ x__ y__ -> x__ {_Trigger'triggerOneof = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Trigger'Scaled x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Trigger'Scaled y__))
instance Data.ProtoLens.Field.HasField Trigger "scaled" ScaledTrigger where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Trigger'triggerOneof
           (\ x__ y__ -> x__ {_Trigger'triggerOneof = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Trigger'Scaled x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Trigger'Scaled y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Trigger where
  messageName _ = Data.Text.pack "envoy.config.overload.v3.Trigger"
  packedMessageDescriptor _
    = "\n\
      \\aTrigger\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2J\n\
      \\tthreshold\CAN\STX \SOH(\v2*.envoy.config.overload.v3.ThresholdTriggerH\NULR\tthreshold\DC2A\n\
      \\ACKscaled\CAN\ETX \SOH(\v2'.envoy.config.overload.v3.ScaledTriggerH\NULR\ACKscaledB\DC4\n\
      \\rtrigger_oneof\DC2\ETX\248B\SOH:,\154\197\136\RS'\n\
      \%envoy.config.overload.v2alpha.Trigger"
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
              Data.ProtoLens.FieldDescriptor Trigger
        threshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "threshold"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ThresholdTrigger)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'threshold")) ::
              Data.ProtoLens.FieldDescriptor Trigger
        scaled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scaled"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScaledTrigger)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scaled")) ::
              Data.ProtoLens.FieldDescriptor Trigger
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, threshold__field_descriptor),
           (Data.ProtoLens.Tag 3, scaled__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Trigger'_unknownFields
        (\ x__ y__ -> x__ {_Trigger'_unknownFields = y__})
  defMessage
    = Trigger'_constructor
        {_Trigger'name = Data.ProtoLens.fieldDefault,
         _Trigger'triggerOneof = Prelude.Nothing,
         _Trigger'_unknownFields = []}
  parseMessage
    = let
        loop :: Trigger -> Data.ProtoLens.Encoding.Bytes.Parser Trigger
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
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "threshold"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"threshold") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "scaled"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"scaled") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Trigger"
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
                       (Data.ProtoLens.Field.field @"maybe'triggerOneof") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (Trigger'Threshold v))
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
                   (Prelude.Just (Trigger'Scaled v))
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
instance Control.DeepSeq.NFData Trigger where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Trigger'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Trigger'name x__)
                (Control.DeepSeq.deepseq (_Trigger'triggerOneof x__) ()))
instance Control.DeepSeq.NFData Trigger'TriggerOneof where
  rnf (Trigger'Threshold x__) = Control.DeepSeq.rnf x__
  rnf (Trigger'Scaled x__) = Control.DeepSeq.rnf x__
_Trigger'Threshold ::
  Data.ProtoLens.Prism.Prism' Trigger'TriggerOneof ThresholdTrigger
_Trigger'Threshold
  = Data.ProtoLens.Prism.prism'
      Trigger'Threshold
      (\ p__
         -> case p__ of
              (Trigger'Threshold p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Trigger'Scaled ::
  Data.ProtoLens.Prism.Prism' Trigger'TriggerOneof ScaledTrigger
_Trigger'Scaled
  = Data.ProtoLens.Prism.prism'
      Trigger'Scaled
      (\ p__
         -> case p__ of
              (Trigger'Scaled p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \'envoy/config/overload/v3/overload.proto\DC2\CANenvoy.config.overload.v3\SUB\ESCenvoy/type/v3/percent.proto\SUB\EMgoogle/protobuf/any.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\188\SOH\n\
    \\SIResourceMonitor\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC29\n\
    \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfigB\r\n\
    \\vconfig_type:4\154\197\136\RS/\n\
    \-envoy.config.overload.v2alpha.ResourceMonitorJ\EOT\b\STX\DLE\ETXR\ACKconfig\"x\n\
    \\DLEThresholdTrigger\DC2-\n\
    \\ENQvalue\CAN\SOH \SOH(\SOHR\ENQvalueB\ETB\250B\DC4\DC2\DC2\EM\NUL\NUL\NUL\NUL\NUL\NUL\240?)\NUL\NUL\NUL\NUL\NUL\NUL\NUL\NUL:5\154\197\136\RS0\n\
    \.envoy.config.overload.v2alpha.ThresholdTrigger\"\161\SOH\n\
    \\rScaledTrigger\DC2D\n\
    \\DC1scaling_threshold\CAN\SOH \SOH(\SOHR\DLEscalingThresholdB\ETB\250B\DC4\DC2\DC2\EM\NUL\NUL\NUL\NUL\NUL\NUL\240?)\NUL\NUL\NUL\NUL\NUL\NUL\NUL\NUL\DC2J\n\
    \\DC4saturation_threshold\CAN\STX \SOH(\SOHR\DC3saturationThresholdB\ETB\250B\DC4\DC2\DC2\EM\NUL\NUL\NUL\NUL\NUL\NUL\240?)\NUL\NUL\NUL\NUL\NUL\NUL\NUL\NUL\"\249\SOH\n\
    \\aTrigger\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2J\n\
    \\tthreshold\CAN\STX \SOH(\v2*.envoy.config.overload.v3.ThresholdTriggerH\NULR\tthreshold\DC2A\n\
    \\ACKscaled\CAN\ETX \SOH(\v2'.envoy.config.overload.v3.ScaledTriggerH\NULR\ACKscaledB\DC4\n\
    \\rtrigger_oneof\DC2\ETX\248B\SOH:,\154\197\136\RS'\n\
    \%envoy.config.overload.v2alpha.Trigger\"\167\EOT\n\
    \\USScaleTimersOverloadActionConfig\DC2~\n\
    \\DC3timer_scale_factors\CAN\SOH \ETX(\v2D.envoy.config.overload.v3.ScaleTimersOverloadActionConfig.ScaleTimerR\DC1timerScaleFactorsB\b\250B\ENQ\146\SOH\STX\b\SOH\SUB\128\STX\n\
    \\n\
    \ScaleTimer\DC2e\n\
    \\ENQtimer\CAN\SOH \SOH(\SO2C.envoy.config.overload.v3.ScaleTimersOverloadActionConfig.TimerTypeR\ENQtimerB\n\
    \\250B\a\130\SOH\EOT\DLE\SOH \NUL\DC2<\n\
    \\vmin_timeout\CAN\STX \SOH(\v2\EM.google.protobuf.DurationH\NULR\n\
    \minTimeout\DC25\n\
    \\tmin_scale\CAN\ETX \SOH(\v2\SYN.envoy.type.v3.PercentH\NULR\bminScaleB\SYN\n\
    \\SIoverload_adjust\DC2\ETX\248B\SOH\"\128\SOH\n\
    \\tTimerType\DC2\SI\n\
    \\vUNSPECIFIED\DLE\NUL\DC2#\n\
    \\USHTTP_DOWNSTREAM_CONNECTION_IDLE\DLE\SOH\DC2\US\n\
    \\ESCHTTP_DOWNSTREAM_STREAM_IDLE\DLE\STX\DC2\FS\n\
    \\CANTRANSPORT_SOCKET_CONNECT\DLE\ETX\"\228\SOH\n\
    \\SOOverloadAction\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2G\n\
    \\btriggers\CAN\STX \ETX(\v2!.envoy.config.overload.v3.TriggerR\btriggersB\b\250B\ENQ\146\SOH\STX\b\SOH\DC27\n\
    \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyR\vtypedConfig:3\154\197\136\RS.\n\
    \,envoy.config.overload.v2alpha.OverloadAction\"\179\STX\n\
    \\SIOverloadManager\DC2D\n\
    \\DLErefresh_interval\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\SIrefreshInterval\DC2`\n\
    \\DC1resource_monitors\CAN\STX \ETX(\v2).envoy.config.overload.v3.ResourceMonitorR\DLEresourceMonitorsB\b\250B\ENQ\146\SOH\STX\b\SOH\DC2B\n\
    \\aactions\CAN\ETX \ETX(\v2(.envoy.config.overload.v3.OverloadActionR\aactions:4\154\197\136\RS/\n\
    \-envoy.config.overload.v2alpha.OverloadManagerBA\n\
    \&io.envoyproxy.envoy.config.overload.v3B\rOverloadProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\151,\n\
    \\a\DC2\ENQ\NUL\NUL\155\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL!\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL%\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL#\n\
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
    \\SOH\b\DC2\ETX\r\NUL?\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\r\NUL?\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL.\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SO\NUL.\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SI\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DLE\NULF\n\
    \\207\STX\n\
    \\STX\EOT\NUL\DC2\EOT\EM\NUL+\SOH2% [#protodoc-title: Overload Manager]\n\
    \2\155\STX The Overload Manager provides an extensible framework to protect Envoy instances\n\
    \ from overload of various resources (memory, cpu, file descriptors, etc).\n\
    \ It monitors a configurable set of resources and notifies registered listeners\n\
    \ when triggers related to those resources fire.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\EM\b\ETB\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\SUB\STX\ESC6\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\SUB\STX\ESC6\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\t\DC2\ETX\GS\STX\r\n\
    \\v\n\
    \\EOT\EOT\NUL\t\NUL\DC2\ETX\GS\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\SOH\DC2\ETX\GS\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\STX\DC2\ETX\GS\v\f\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\n\
    \\DC2\ETX\US\STX\DC4\n\
    \\v\n\
    \\EOT\EOT\NUL\n\
    \\NUL\DC2\ETX\US\v\DC3\n\
    \\137\STX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX$\STX;\SUB\251\SOH The name of the resource monitor to instantiate. Must match a registered\n\
    \ resource monitor type.\n\
    \ See the :ref:`extensions listed in typed_config below <extension_category_envoy.resource_monitors>` for the default list of available resource monitor.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX$\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX$\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX$\DLE\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX$\DC2:\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX$\DC39\n\
    \z\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT(\STX*\ETX\SUBl Configuration for the resource monitor being instantiated.\n\
    \ [#extension-category: envoy.resource_monitors]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX(\b\DC3\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX)\EOT)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX)\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX)\CAN$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX)'(\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT-\NUL4\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX-\b\CAN\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT.\STX/7\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT.\STX/7\n\
    \s\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX3\STXC\SUBf If the resource pressure is greater than or equal to this value, the trigger\n\
    \ will enter saturation.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX3\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX3\t\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX3\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX3\DC3B\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\STX\DC2\ETX3\DC4A\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT6\NUL>\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX6\b\NAK\n\
    \\128\STX\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX:\STXO\SUB\242\SOH If the resource pressure is greater than this value, the trigger will be in the\n\
    \ :ref:`scaling <arch_overview_overload_manager-triggers-state>` state with value\n\
    \ `(pressure - scaling_threshold) / (saturation_threshold - scaling_threshold)`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX:\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX:\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX:\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX:\USN\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\175\b\STX\DC2\ETX: M\n\
    \f\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX=\STXR\SUBY If the resource pressure is greater than this value, the trigger will enter saturation.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX=\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX=\t\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX= !\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\ETX=\"Q\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\175\b\STX\DC2\ETX=#P\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT@\NULN\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX@\b\SI\n\
    \\v\n\
    \\ETX\EOT\ETX\a\DC2\EOTA\STXB.\n\
    \\DLE\n\
    \\b\EOT\ETX\a\211\136\225\ETX\SOH\DC2\EOTA\STXB.\n\
    \>\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXE\STX;\SUB1 The name of the resource this is a trigger for.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXE\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXE\t\r\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXE\DLE\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\ETXE\DC2:\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\175\b\SO\DC2\ETXE\DC39\n\
    \\f\n\
    \\EOT\EOT\ETX\b\NUL\DC2\EOTG\STXM\ETX\n\
    \\f\n\
    \\ENQ\EOT\ETX\b\NUL\SOH\DC2\ETXG\b\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\b\NUL\STX\DC2\ETXH\EOT&\n\
    \\SO\n\
    \\a\EOT\ETX\b\NUL\STX\175\b\DC2\ETXH\EOT&\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXJ\EOT#\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETXJ\EOT\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXJ\NAK\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXJ!\"\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETXL\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ACK\DC2\ETXL\EOT\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETXL\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETXL\ESC\FS\n\
    \\247\SOH\n\
    \\STX\EOT\EOT\DC2\EOTS\NUL{\SOH\SUB\234\SOH Typed configuration for the \"envoy.overload_actions.reduce_timeouts\" action. See\n\
    \ :ref:`the docs <config_overload_manager_reducing_timeouts>` for an example of how to configure\n\
    \ the action with different timeouts and minimum values.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXS\b'\n\
    \\f\n\
    \\EOT\EOT\EOT\EOT\NUL\DC2\EOTT\STXh\ETX\n\
    \\f\n\
    \\ENQ\EOT\EOT\EOT\NUL\SOH\DC2\ETXT\a\DLE\n\
    \]\n\
    \\ACK\EOT\EOT\EOT\NUL\STX\NUL\DC2\ETXV\EOT\DC4\SUBN Unsupported value; users must explicitly specify the timer they want scaled.\n\
    \\n\
    \\SO\n\
    \\a\EOT\EOT\EOT\NUL\STX\NUL\SOH\DC2\ETXV\EOT\SI\n\
    \\SO\n\
    \\a\EOT\EOT\EOT\NUL\STX\NUL\STX\DC2\ETXV\DC2\DC3\n\
    \\164\STX\n\
    \\ACK\EOT\EOT\EOT\NUL\STX\SOH\DC2\ETX[\EOT(\SUB\148\STX Adjusts the idle timer for downstream HTTP connections that takes effect when there are no active streams.\n\
    \ This affects the value of :ref:`HttpConnectionManager.common_http_protocol_options.idle_timeout\n\
    \ <envoy_v3_api_field_config.core.v3.HttpProtocolOptions.idle_timeout>`\n\
    \\n\
    \\SO\n\
    \\a\EOT\EOT\EOT\NUL\STX\SOH\SOH\DC2\ETX[\EOT#\n\
    \\SO\n\
    \\a\EOT\EOT\EOT\NUL\STX\SOH\STX\DC2\ETX[&'\n\
    \\255\STX\n\
    \\ACK\EOT\EOT\EOT\NUL\STX\STX\DC2\ETXa\EOT$\SUB\239\STX Adjusts the idle timer for HTTP streams initiated by downstream clients.\n\
    \ This affects the value of :ref:`RouteAction.idle_timeout <envoy_v3_api_field_config.route.v3.RouteAction.idle_timeout>` and\n\
    \ :ref:`HttpConnectionManager.stream_idle_timeout\n\
    \ <envoy_v3_api_field_extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.stream_idle_timeout>`\n\
    \\n\
    \\SO\n\
    \\a\EOT\EOT\EOT\NUL\STX\STX\SOH\DC2\ETXa\EOT\US\n\
    \\SO\n\
    \\a\EOT\EOT\EOT\NUL\STX\STX\STX\DC2\ETXa\"#\n\
    \\183\STX\n\
    \\ACK\EOT\EOT\EOT\NUL\STX\ETX\DC2\ETXg\EOT!\SUB\167\STX Adjusts the timer for how long downstream clients have to finish transport-level negotiations\n\
    \ before the connection is closed.\n\
    \ This affects the value of\n\
    \ :ref:`FilterChain.transport_socket_connect_timeout <envoy_v3_api_field_config.listener.v3.FilterChain.transport_socket_connect_timeout>`.\n\
    \\n\
    \\SO\n\
    \\a\EOT\EOT\EOT\NUL\STX\ETX\SOH\DC2\ETXg\EOT\FS\n\
    \\SO\n\
    \\a\EOT\EOT\EOT\NUL\STX\ETX\STX\DC2\ETXg\US \n\
    \\f\n\
    \\EOT\EOT\EOT\ETX\NUL\DC2\EOTj\STXw\ETX\n\
    \\f\n\
    \\ENQ\EOT\EOT\ETX\NUL\SOH\DC2\ETXj\n\
    \\DC4\n\
    \;\n\
    \\ACK\EOT\EOT\ETX\NUL\STX\NUL\DC2\ETXl\EOTQ\SUB, The type of timer this minimum applies to.\n\
    \\n\
    \\SO\n\
    \\a\EOT\EOT\ETX\NUL\STX\NUL\ACK\DC2\ETXl\EOT\r\n\
    \\SO\n\
    \\a\EOT\EOT\ETX\NUL\STX\NUL\SOH\DC2\ETXl\SO\DC3\n\
    \\SO\n\
    \\a\EOT\EOT\ETX\NUL\STX\NUL\ETX\DC2\ETXl\SYN\ETB\n\
    \\SO\n\
    \\a\EOT\EOT\ETX\NUL\STX\NUL\b\DC2\ETXl\CANP\n\
    \\DC1\n\
    \\n\
    \\EOT\EOT\ETX\NUL\STX\NUL\b\175\b\DLE\DC2\ETXl\EMO\n\
    \\SO\n\
    \\ACK\EOT\EOT\ETX\NUL\b\NUL\DC2\EOTn\EOTv\ENQ\n\
    \\SO\n\
    \\a\EOT\EOT\ETX\NUL\b\NUL\SOH\DC2\ETXn\n\
    \\EM\n\
    \\SO\n\
    \\a\EOT\EOT\ETX\NUL\b\NUL\STX\DC2\ETXo\ACK(\n\
    \\DLE\n\
    \\t\EOT\EOT\ETX\NUL\b\NUL\STX\175\b\DC2\ETXo\ACK(\n\
    \@\n\
    \\ACK\EOT\EOT\ETX\NUL\STX\SOH\DC2\ETXr\ACK/\SUB1 Sets the minimum duration as an absolute value.\n\
    \\n\
    \\SO\n\
    \\a\EOT\EOT\ETX\NUL\STX\SOH\ACK\DC2\ETXr\ACK\RS\n\
    \\SO\n\
    \\a\EOT\EOT\ETX\NUL\STX\SOH\SOH\DC2\ETXr\US*\n\
    \\SO\n\
    \\a\EOT\EOT\ETX\NUL\STX\SOH\ETX\DC2\ETXr-.\n\
    \P\n\
    \\ACK\EOT\EOT\ETX\NUL\STX\STX\DC2\ETXu\ACK$\SUBA Sets the minimum duration as a percentage of the maximum value.\n\
    \\n\
    \\SO\n\
    \\a\EOT\EOT\ETX\NUL\STX\STX\ACK\DC2\ETXu\ACK\NAK\n\
    \\SO\n\
    \\a\EOT\EOT\ETX\NUL\STX\STX\SOH\DC2\ETXu\SYN\US\n\
    \\SO\n\
    \\a\EOT\EOT\ETX\NUL\STX\STX\ETX\DC2\ETXu\"#\n\
    \:\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXz\STX[\SUB- A set of timer scaling rules to be applied.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETXz\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\ETXz\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXz\SYN)\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXz,-\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ETXz.Z\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\175\b\DC2\DC2\ETXz/Y\n\
    \\v\n\
    \\STX\EOT\ENQ\DC2\ENQ}\NUL\141\SOH\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX}\b\SYN\n\
    \\v\n\
    \\ETX\EOT\ENQ\a\DC2\EOT~\STX\DEL5\n\
    \\DLE\n\
    \\b\EOT\ENQ\a\211\136\225\ETX\SOH\DC2\EOT~\STX\DEL5\n\
    \\214\SOH\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\132\SOH\STX;\SUB\199\SOH The name of the overload action. This is just a well-known string that listeners can\n\
    \ use for registering callbacks. Custom overload actions should be named using reverse\n\
    \ DNS to ensure uniqueness.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\EOT\132\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\132\SOH\t\r\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\132\SOH\DLE\DC1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\b\DC2\EOT\132\SOH\DC2:\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\NUL\b\175\b\SO\DC2\EOT\132\SOH\DC39\n\
    \\229\SOH\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\137\SOH\STXM\SUB\214\SOH A set of triggers for this action. The state of the action is the maximum\n\
    \ state of all triggers, which can be scaling between 0 and 1 or saturated. Listeners\n\
    \ are notified when the overload action changes state.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\EOT\DC2\EOT\137\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\EOT\137\SOH\v\DC2\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\137\SOH\DC3\ESC\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\137\SOH\RS\US\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\b\DC2\EOT\137\SOH L\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\SOH\b\175\b\DC2\DC2\EOT\137\SOH!K\n\
    \@\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\EOT\140\SOH\STX'\SUB2 Configuration for the action being instantiated.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ACK\DC2\EOT\140\SOH\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\EOT\140\SOH\SYN\"\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\EOT\140\SOH%&\n\
    \\f\n\
    \\STX\EOT\ACK\DC2\ACK\143\SOH\NUL\155\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\143\SOH\b\ETB\n\
    \\r\n\
    \\ETX\EOT\ACK\a\DC2\ACK\144\SOH\STX\145\SOH6\n\
    \\DC2\n\
    \\b\EOT\ACK\a\211\136\225\ETX\SOH\DC2\ACK\144\SOH\STX\145\SOH6\n\
    \;\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\148\SOH\STX0\SUB- The interval for refreshing resource usage.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\EOT\148\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\148\SOH\ESC+\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\148\SOH./\n\
    \0\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\151\SOH\STX^\SUB\" The set of resources to monitor.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\EOT\DC2\EOT\151\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ACK\DC2\EOT\151\SOH\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\151\SOH\ESC,\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\151\SOH/0\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\b\DC2\EOT\151\SOH1]\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\SOH\b\175\b\DC2\DC2\EOT\151\SOH2\\\n\
    \,\n\
    \\EOT\EOT\ACK\STX\STX\DC2\EOT\154\SOH\STX&\SUB\RS The set of overload actions.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\EOT\DC2\EOT\154\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ACK\DC2\EOT\154\SOH\v\EM\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\EOT\154\SOH\SUB!\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\EOT\154\SOH$%b\ACKproto3"