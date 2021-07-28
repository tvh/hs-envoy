{- This file was auto-generated from envoy/data/cluster/v3/outlier_detection_event.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Data.Cluster.V3.OutlierDetectionEvent (
        Action(..), Action(), Action'UnrecognizedValue,
        OutlierDetectionEvent(), OutlierDetectionEvent'Event(..),
        _OutlierDetectionEvent'EjectSuccessRateEvent,
        _OutlierDetectionEvent'EjectConsecutiveEvent,
        _OutlierDetectionEvent'EjectFailurePercentageEvent,
        OutlierEjectConsecutive(), OutlierEjectFailurePercentage(),
        OutlierEjectSuccessRate(), OutlierEjectionType(..),
        OutlierEjectionType(), OutlierEjectionType'UnrecognizedValue
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
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
newtype Action'UnrecognizedValue
  = Action'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Action
  = EJECT | UNEJECT | Action'Unrecognized !Action'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Action where
  maybeToEnum 0 = Prelude.Just EJECT
  maybeToEnum 1 = Prelude.Just UNEJECT
  maybeToEnum k
    = Prelude.Just
        (Action'Unrecognized
           (Action'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum EJECT = "EJECT"
  showEnum UNEJECT = "UNEJECT"
  showEnum (Action'Unrecognized (Action'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "EJECT" = Prelude.Just EJECT
    | (Prelude.==) k "UNEJECT" = Prelude.Just UNEJECT
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Action where
  minBound = EJECT
  maxBound = UNEJECT
instance Prelude.Enum Action where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Action: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum EJECT = 0
  fromEnum UNEJECT = 1
  fromEnum (Action'Unrecognized (Action'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ UNEJECT
    = Prelude.error
        "Action.succ: bad argument UNEJECT. This value would be out of bounds."
  succ EJECT = UNEJECT
  succ (Action'Unrecognized _)
    = Prelude.error "Action.succ: bad argument: unrecognized value"
  pred EJECT
    = Prelude.error
        "Action.pred: bad argument EJECT. This value would be out of bounds."
  pred UNEJECT = EJECT
  pred (Action'Unrecognized _)
    = Prelude.error "Action.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Action where
  fieldDefault = EJECT
instance Control.DeepSeq.NFData Action where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Data.Cluster.V3.OutlierDetectionEvent_Fields.type'' @:: Lens' OutlierDetectionEvent OutlierEjectionType@
         * 'Proto.Envoy.Data.Cluster.V3.OutlierDetectionEvent_Fields.timestamp' @:: Lens' OutlierDetectionEvent Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Envoy.Data.Cluster.V3.OutlierDetectionEvent_Fields.maybe'timestamp' @:: Lens' OutlierDetectionEvent (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Envoy.Data.Cluster.V3.OutlierDetectionEvent_Fields.secsSinceLastAction' @:: Lens' OutlierDetectionEvent Proto.Google.Protobuf.Wrappers.UInt64Value@
         * 'Proto.Envoy.Data.Cluster.V3.OutlierDetectionEvent_Fields.maybe'secsSinceLastAction' @:: Lens' OutlierDetectionEvent (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value)@
         * 'Proto.Envoy.Data.Cluster.V3.OutlierDetectionEvent_Fields.clusterName' @:: Lens' OutlierDetectionEvent Data.Text.Text@
         * 'Proto.Envoy.Data.Cluster.V3.OutlierDetectionEvent_Fields.upstreamUrl' @:: Lens' OutlierDetectionEvent Data.Text.Text@
         * 'Proto.Envoy.Data.Cluster.V3.OutlierDetectionEvent_Fields.action' @:: Lens' OutlierDetectionEvent Action@
         * 'Proto.Envoy.Data.Cluster.V3.OutlierDetectionEvent_Fields.numEjections' @:: Lens' OutlierDetectionEvent Data.Word.Word32@
         * 'Proto.Envoy.Data.Cluster.V3.OutlierDetectionEvent_Fields.enforced' @:: Lens' OutlierDetectionEvent Prelude.Bool@
         * 'Proto.Envoy.Data.Cluster.V3.OutlierDetectionEvent_Fields.maybe'event' @:: Lens' OutlierDetectionEvent (Prelude.Maybe OutlierDetectionEvent'Event)@
         * 'Proto.Envoy.Data.Cluster.V3.OutlierDetectionEvent_Fields.maybe'ejectSuccessRateEvent' @:: Lens' OutlierDetectionEvent (Prelude.Maybe OutlierEjectSuccessRate)@
         * 'Proto.Envoy.Data.Cluster.V3.OutlierDetectionEvent_Fields.ejectSuccessRateEvent' @:: Lens' OutlierDetectionEvent OutlierEjectSuccessRate@
         * 'Proto.Envoy.Data.Cluster.V3.OutlierDetectionEvent_Fields.maybe'ejectConsecutiveEvent' @:: Lens' OutlierDetectionEvent (Prelude.Maybe OutlierEjectConsecutive)@
         * 'Proto.Envoy.Data.Cluster.V3.OutlierDetectionEvent_Fields.ejectConsecutiveEvent' @:: Lens' OutlierDetectionEvent OutlierEjectConsecutive@
         * 'Proto.Envoy.Data.Cluster.V3.OutlierDetectionEvent_Fields.maybe'ejectFailurePercentageEvent' @:: Lens' OutlierDetectionEvent (Prelude.Maybe OutlierEjectFailurePercentage)@
         * 'Proto.Envoy.Data.Cluster.V3.OutlierDetectionEvent_Fields.ejectFailurePercentageEvent' @:: Lens' OutlierDetectionEvent OutlierEjectFailurePercentage@ -}
data OutlierDetectionEvent
  = OutlierDetectionEvent'_constructor {_OutlierDetectionEvent'type' :: !OutlierEjectionType,
                                        _OutlierDetectionEvent'timestamp :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                        _OutlierDetectionEvent'secsSinceLastAction :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value),
                                        _OutlierDetectionEvent'clusterName :: !Data.Text.Text,
                                        _OutlierDetectionEvent'upstreamUrl :: !Data.Text.Text,
                                        _OutlierDetectionEvent'action :: !Action,
                                        _OutlierDetectionEvent'numEjections :: !Data.Word.Word32,
                                        _OutlierDetectionEvent'enforced :: !Prelude.Bool,
                                        _OutlierDetectionEvent'event :: !(Prelude.Maybe OutlierDetectionEvent'Event),
                                        _OutlierDetectionEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OutlierDetectionEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data OutlierDetectionEvent'Event
  = OutlierDetectionEvent'EjectSuccessRateEvent !OutlierEjectSuccessRate |
    OutlierDetectionEvent'EjectConsecutiveEvent !OutlierEjectConsecutive |
    OutlierDetectionEvent'EjectFailurePercentageEvent !OutlierEjectFailurePercentage
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField OutlierDetectionEvent "type'" OutlierEjectionType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetectionEvent'type'
           (\ x__ y__ -> x__ {_OutlierDetectionEvent'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetectionEvent "timestamp" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetectionEvent'timestamp
           (\ x__ y__ -> x__ {_OutlierDetectionEvent'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OutlierDetectionEvent "maybe'timestamp" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetectionEvent'timestamp
           (\ x__ y__ -> x__ {_OutlierDetectionEvent'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetectionEvent "secsSinceLastAction" Proto.Google.Protobuf.Wrappers.UInt64Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetectionEvent'secsSinceLastAction
           (\ x__ y__
              -> x__ {_OutlierDetectionEvent'secsSinceLastAction = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OutlierDetectionEvent "maybe'secsSinceLastAction" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetectionEvent'secsSinceLastAction
           (\ x__ y__
              -> x__ {_OutlierDetectionEvent'secsSinceLastAction = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetectionEvent "clusterName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetectionEvent'clusterName
           (\ x__ y__ -> x__ {_OutlierDetectionEvent'clusterName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetectionEvent "upstreamUrl" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetectionEvent'upstreamUrl
           (\ x__ y__ -> x__ {_OutlierDetectionEvent'upstreamUrl = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetectionEvent "action" Action where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetectionEvent'action
           (\ x__ y__ -> x__ {_OutlierDetectionEvent'action = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetectionEvent "numEjections" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetectionEvent'numEjections
           (\ x__ y__ -> x__ {_OutlierDetectionEvent'numEjections = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetectionEvent "enforced" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetectionEvent'enforced
           (\ x__ y__ -> x__ {_OutlierDetectionEvent'enforced = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetectionEvent "maybe'event" (Prelude.Maybe OutlierDetectionEvent'Event) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetectionEvent'event
           (\ x__ y__ -> x__ {_OutlierDetectionEvent'event = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetectionEvent "maybe'ejectSuccessRateEvent" (Prelude.Maybe OutlierEjectSuccessRate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetectionEvent'event
           (\ x__ y__ -> x__ {_OutlierDetectionEvent'event = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (OutlierDetectionEvent'EjectSuccessRateEvent x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap OutlierDetectionEvent'EjectSuccessRateEvent y__))
instance Data.ProtoLens.Field.HasField OutlierDetectionEvent "ejectSuccessRateEvent" OutlierEjectSuccessRate where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetectionEvent'event
           (\ x__ y__ -> x__ {_OutlierDetectionEvent'event = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (OutlierDetectionEvent'EjectSuccessRateEvent x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap OutlierDetectionEvent'EjectSuccessRateEvent y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField OutlierDetectionEvent "maybe'ejectConsecutiveEvent" (Prelude.Maybe OutlierEjectConsecutive) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetectionEvent'event
           (\ x__ y__ -> x__ {_OutlierDetectionEvent'event = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (OutlierDetectionEvent'EjectConsecutiveEvent x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap OutlierDetectionEvent'EjectConsecutiveEvent y__))
instance Data.ProtoLens.Field.HasField OutlierDetectionEvent "ejectConsecutiveEvent" OutlierEjectConsecutive where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetectionEvent'event
           (\ x__ y__ -> x__ {_OutlierDetectionEvent'event = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (OutlierDetectionEvent'EjectConsecutiveEvent x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap OutlierDetectionEvent'EjectConsecutiveEvent y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField OutlierDetectionEvent "maybe'ejectFailurePercentageEvent" (Prelude.Maybe OutlierEjectFailurePercentage) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetectionEvent'event
           (\ x__ y__ -> x__ {_OutlierDetectionEvent'event = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (OutlierDetectionEvent'EjectFailurePercentageEvent x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   OutlierDetectionEvent'EjectFailurePercentageEvent y__))
instance Data.ProtoLens.Field.HasField OutlierDetectionEvent "ejectFailurePercentageEvent" OutlierEjectFailurePercentage where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetectionEvent'event
           (\ x__ y__ -> x__ {_OutlierDetectionEvent'event = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (OutlierDetectionEvent'EjectFailurePercentageEvent x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      OutlierDetectionEvent'EjectFailurePercentageEvent y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message OutlierDetectionEvent where
  messageName _
    = Data.Text.pack "envoy.data.cluster.v3.OutlierDetectionEvent"
  packedMessageDescriptor _
    = "\n\
      \\NAKOutlierDetectionEvent\DC2H\n\
      \\EOTtype\CAN\SOH \SOH(\SO2*.envoy.data.cluster.v3.OutlierEjectionTypeR\EOTtypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC28\n\
      \\ttimestamp\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestamp\DC2Q\n\
      \\SYNsecs_since_last_action\CAN\ETX \SOH(\v2\FS.google.protobuf.UInt64ValueR\DC3secsSinceLastAction\DC2*\n\
      \\fcluster_name\CAN\EOT \SOH(\tR\vclusterNameB\a\250B\EOTr\STX\DLE\SOH\DC2*\n\
      \\fupstream_url\CAN\ENQ \SOH(\tR\vupstreamUrlB\a\250B\EOTr\STX\DLE\SOH\DC2?\n\
      \\ACKaction\CAN\ACK \SOH(\SO2\GS.envoy.data.cluster.v3.ActionR\ACKactionB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2#\n\
      \\rnum_ejections\CAN\a \SOH(\rR\fnumEjections\DC2\SUB\n\
      \\benforced\CAN\b \SOH(\bR\benforced\DC2i\n\
      \\CANeject_success_rate_event\CAN\t \SOH(\v2..envoy.data.cluster.v3.OutlierEjectSuccessRateH\NULR\NAKejectSuccessRateEvent\DC2h\n\
      \\ETBeject_consecutive_event\CAN\n\
      \ \SOH(\v2..envoy.data.cluster.v3.OutlierEjectConsecutiveH\NULR\NAKejectConsecutiveEvent\DC2{\n\
      \\RSeject_failure_percentage_event\CAN\v \SOH(\v24.envoy.data.cluster.v3.OutlierEjectFailurePercentageH\NULR\ESCejectFailurePercentageEventB\f\n\
      \\ENQevent\DC2\ETX\248B\SOH:7\154\197\136\RS2\n\
      \0envoy.data.cluster.v2alpha.OutlierDetectionEvent"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor OutlierEjectionType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetectionEvent
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetectionEvent
        secsSinceLastAction__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "secs_since_last_action"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt64Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'secsSinceLastAction")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetectionEvent
        clusterName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"clusterName")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetectionEvent
        upstreamUrl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upstream_url"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"upstreamUrl")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetectionEvent
        action__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "action"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Action)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"action")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetectionEvent
        numEjections__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "num_ejections"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"numEjections")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetectionEvent
        enforced__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enforced"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"enforced")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetectionEvent
        ejectSuccessRateEvent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "eject_success_rate_event"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor OutlierEjectSuccessRate)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ejectSuccessRateEvent")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetectionEvent
        ejectConsecutiveEvent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "eject_consecutive_event"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor OutlierEjectConsecutive)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ejectConsecutiveEvent")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetectionEvent
        ejectFailurePercentageEvent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "eject_failure_percentage_event"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor OutlierEjectFailurePercentage)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'ejectFailurePercentageEvent")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetectionEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, type'__field_descriptor),
           (Data.ProtoLens.Tag 2, timestamp__field_descriptor),
           (Data.ProtoLens.Tag 3, secsSinceLastAction__field_descriptor),
           (Data.ProtoLens.Tag 4, clusterName__field_descriptor),
           (Data.ProtoLens.Tag 5, upstreamUrl__field_descriptor),
           (Data.ProtoLens.Tag 6, action__field_descriptor),
           (Data.ProtoLens.Tag 7, numEjections__field_descriptor),
           (Data.ProtoLens.Tag 8, enforced__field_descriptor),
           (Data.ProtoLens.Tag 9, ejectSuccessRateEvent__field_descriptor),
           (Data.ProtoLens.Tag 10, ejectConsecutiveEvent__field_descriptor),
           (Data.ProtoLens.Tag 11, 
            ejectFailurePercentageEvent__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OutlierDetectionEvent'_unknownFields
        (\ x__ y__ -> x__ {_OutlierDetectionEvent'_unknownFields = y__})
  defMessage
    = OutlierDetectionEvent'_constructor
        {_OutlierDetectionEvent'type' = Data.ProtoLens.fieldDefault,
         _OutlierDetectionEvent'timestamp = Prelude.Nothing,
         _OutlierDetectionEvent'secsSinceLastAction = Prelude.Nothing,
         _OutlierDetectionEvent'clusterName = Data.ProtoLens.fieldDefault,
         _OutlierDetectionEvent'upstreamUrl = Data.ProtoLens.fieldDefault,
         _OutlierDetectionEvent'action = Data.ProtoLens.fieldDefault,
         _OutlierDetectionEvent'numEjections = Data.ProtoLens.fieldDefault,
         _OutlierDetectionEvent'enforced = Data.ProtoLens.fieldDefault,
         _OutlierDetectionEvent'event = Prelude.Nothing,
         _OutlierDetectionEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          OutlierDetectionEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser OutlierDetectionEvent
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
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "secs_since_last_action"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"secsSinceLastAction") y x)
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
                                       "cluster_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"clusterName") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "upstream_url"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"upstreamUrl") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "action"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"action") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "num_ejections"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"numEjections") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "enforced"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"enforced") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "eject_success_rate_event"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"ejectSuccessRateEvent") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "eject_consecutive_event"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"ejectConsecutiveEvent") y x)
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "eject_failure_percentage_event"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"ejectFailurePercentageEvent")
                                     y
                                     x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "OutlierDetectionEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"type'") _x
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
                       (Data.ProtoLens.Field.field @"maybe'timestamp") _x
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
                          (Data.ProtoLens.Field.field @"maybe'secsSinceLastAction") _x
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
                      (let
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"clusterName") _x
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
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"upstreamUrl") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"action") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
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
                                        (Data.ProtoLens.Field.field @"numEjections") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           Prelude.fromIntegral
                                           _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"enforced") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                           ((Prelude..)
                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (\ b -> if b then 1 else 0)
                                              _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'event") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just (OutlierDetectionEvent'EjectSuccessRateEvent v))
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                               ((Prelude..)
                                                  (\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage
                                                  v)
                                        (Prelude.Just (OutlierDetectionEvent'EjectConsecutiveEvent v))
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                               ((Prelude..)
                                                  (\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage
                                                  v)
                                        (Prelude.Just (OutlierDetectionEvent'EjectFailurePercentageEvent v))
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                               ((Prelude..)
                                                  (\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage
                                                  v))
                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                        (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))))
instance Control.DeepSeq.NFData OutlierDetectionEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_OutlierDetectionEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_OutlierDetectionEvent'type' x__)
                (Control.DeepSeq.deepseq
                   (_OutlierDetectionEvent'timestamp x__)
                   (Control.DeepSeq.deepseq
                      (_OutlierDetectionEvent'secsSinceLastAction x__)
                      (Control.DeepSeq.deepseq
                         (_OutlierDetectionEvent'clusterName x__)
                         (Control.DeepSeq.deepseq
                            (_OutlierDetectionEvent'upstreamUrl x__)
                            (Control.DeepSeq.deepseq
                               (_OutlierDetectionEvent'action x__)
                               (Control.DeepSeq.deepseq
                                  (_OutlierDetectionEvent'numEjections x__)
                                  (Control.DeepSeq.deepseq
                                     (_OutlierDetectionEvent'enforced x__)
                                     (Control.DeepSeq.deepseq
                                        (_OutlierDetectionEvent'event x__) ())))))))))
instance Control.DeepSeq.NFData OutlierDetectionEvent'Event where
  rnf (OutlierDetectionEvent'EjectSuccessRateEvent x__)
    = Control.DeepSeq.rnf x__
  rnf (OutlierDetectionEvent'EjectConsecutiveEvent x__)
    = Control.DeepSeq.rnf x__
  rnf (OutlierDetectionEvent'EjectFailurePercentageEvent x__)
    = Control.DeepSeq.rnf x__
_OutlierDetectionEvent'EjectSuccessRateEvent ::
  Data.ProtoLens.Prism.Prism' OutlierDetectionEvent'Event OutlierEjectSuccessRate
_OutlierDetectionEvent'EjectSuccessRateEvent
  = Data.ProtoLens.Prism.prism'
      OutlierDetectionEvent'EjectSuccessRateEvent
      (\ p__
         -> case p__ of
              (OutlierDetectionEvent'EjectSuccessRateEvent p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_OutlierDetectionEvent'EjectConsecutiveEvent ::
  Data.ProtoLens.Prism.Prism' OutlierDetectionEvent'Event OutlierEjectConsecutive
_OutlierDetectionEvent'EjectConsecutiveEvent
  = Data.ProtoLens.Prism.prism'
      OutlierDetectionEvent'EjectConsecutiveEvent
      (\ p__
         -> case p__ of
              (OutlierDetectionEvent'EjectConsecutiveEvent p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_OutlierDetectionEvent'EjectFailurePercentageEvent ::
  Data.ProtoLens.Prism.Prism' OutlierDetectionEvent'Event OutlierEjectFailurePercentage
_OutlierDetectionEvent'EjectFailurePercentageEvent
  = Data.ProtoLens.Prism.prism'
      OutlierDetectionEvent'EjectFailurePercentageEvent
      (\ p__
         -> case p__ of
              (OutlierDetectionEvent'EjectFailurePercentageEvent p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
      -}
data OutlierEjectConsecutive
  = OutlierEjectConsecutive'_constructor {_OutlierEjectConsecutive'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OutlierEjectConsecutive where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message OutlierEjectConsecutive where
  messageName _
    = Data.Text.pack "envoy.data.cluster.v3.OutlierEjectConsecutive"
  packedMessageDescriptor _
    = "\n\
      \\ETBOutlierEjectConsecutive:9\154\197\136\RS4\n\
      \2envoy.data.cluster.v2alpha.OutlierEjectConsecutive"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OutlierEjectConsecutive'_unknownFields
        (\ x__ y__ -> x__ {_OutlierEjectConsecutive'_unknownFields = y__})
  defMessage
    = OutlierEjectConsecutive'_constructor
        {_OutlierEjectConsecutive'_unknownFields = []}
  parseMessage
    = let
        loop ::
          OutlierEjectConsecutive
          -> Data.ProtoLens.Encoding.Bytes.Parser OutlierEjectConsecutive
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
          (do loop Data.ProtoLens.defMessage) "OutlierEjectConsecutive"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData OutlierEjectConsecutive where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_OutlierEjectConsecutive'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Envoy.Data.Cluster.V3.OutlierDetectionEvent_Fields.hostSuccessRate' @:: Lens' OutlierEjectFailurePercentage Data.Word.Word32@ -}
data OutlierEjectFailurePercentage
  = OutlierEjectFailurePercentage'_constructor {_OutlierEjectFailurePercentage'hostSuccessRate :: !Data.Word.Word32,
                                                _OutlierEjectFailurePercentage'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OutlierEjectFailurePercentage where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField OutlierEjectFailurePercentage "hostSuccessRate" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierEjectFailurePercentage'hostSuccessRate
           (\ x__ y__
              -> x__ {_OutlierEjectFailurePercentage'hostSuccessRate = y__}))
        Prelude.id
instance Data.ProtoLens.Message OutlierEjectFailurePercentage where
  messageName _
    = Data.Text.pack
        "envoy.data.cluster.v3.OutlierEjectFailurePercentage"
  packedMessageDescriptor _
    = "\n\
      \\GSOutlierEjectFailurePercentage\DC23\n\
      \\DC1host_success_rate\CAN\SOH \SOH(\rR\SIhostSuccessRateB\a\250B\EOT*\STX\CANd:?\154\197\136\RS:\n\
      \8envoy.data.cluster.v2alpha.OutlierEjectFailurePercentage"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        hostSuccessRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "host_success_rate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"hostSuccessRate")) ::
              Data.ProtoLens.FieldDescriptor OutlierEjectFailurePercentage
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, hostSuccessRate__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OutlierEjectFailurePercentage'_unknownFields
        (\ x__ y__
           -> x__ {_OutlierEjectFailurePercentage'_unknownFields = y__})
  defMessage
    = OutlierEjectFailurePercentage'_constructor
        {_OutlierEjectFailurePercentage'hostSuccessRate = Data.ProtoLens.fieldDefault,
         _OutlierEjectFailurePercentage'_unknownFields = []}
  parseMessage
    = let
        loop ::
          OutlierEjectFailurePercentage
          -> Data.ProtoLens.Encoding.Bytes.Parser OutlierEjectFailurePercentage
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
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "host_success_rate"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"hostSuccessRate") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "OutlierEjectFailurePercentage"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"hostSuccessRate") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData OutlierEjectFailurePercentage where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_OutlierEjectFailurePercentage'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_OutlierEjectFailurePercentage'hostSuccessRate x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Data.Cluster.V3.OutlierDetectionEvent_Fields.hostSuccessRate' @:: Lens' OutlierEjectSuccessRate Data.Word.Word32@
         * 'Proto.Envoy.Data.Cluster.V3.OutlierDetectionEvent_Fields.clusterAverageSuccessRate' @:: Lens' OutlierEjectSuccessRate Data.Word.Word32@
         * 'Proto.Envoy.Data.Cluster.V3.OutlierDetectionEvent_Fields.clusterSuccessRateEjectionThreshold' @:: Lens' OutlierEjectSuccessRate Data.Word.Word32@ -}
data OutlierEjectSuccessRate
  = OutlierEjectSuccessRate'_constructor {_OutlierEjectSuccessRate'hostSuccessRate :: !Data.Word.Word32,
                                          _OutlierEjectSuccessRate'clusterAverageSuccessRate :: !Data.Word.Word32,
                                          _OutlierEjectSuccessRate'clusterSuccessRateEjectionThreshold :: !Data.Word.Word32,
                                          _OutlierEjectSuccessRate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OutlierEjectSuccessRate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField OutlierEjectSuccessRate "hostSuccessRate" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierEjectSuccessRate'hostSuccessRate
           (\ x__ y__
              -> x__ {_OutlierEjectSuccessRate'hostSuccessRate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierEjectSuccessRate "clusterAverageSuccessRate" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierEjectSuccessRate'clusterAverageSuccessRate
           (\ x__ y__
              -> x__ {_OutlierEjectSuccessRate'clusterAverageSuccessRate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierEjectSuccessRate "clusterSuccessRateEjectionThreshold" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierEjectSuccessRate'clusterSuccessRateEjectionThreshold
           (\ x__ y__
              -> x__
                   {_OutlierEjectSuccessRate'clusterSuccessRateEjectionThreshold = y__}))
        Prelude.id
instance Data.ProtoLens.Message OutlierEjectSuccessRate where
  messageName _
    = Data.Text.pack "envoy.data.cluster.v3.OutlierEjectSuccessRate"
  packedMessageDescriptor _
    = "\n\
      \\ETBOutlierEjectSuccessRate\DC23\n\
      \\DC1host_success_rate\CAN\SOH \SOH(\rR\SIhostSuccessRateB\a\250B\EOT*\STX\CANd\DC2H\n\
      \\FScluster_average_success_rate\CAN\STX \SOH(\rR\EMclusterAverageSuccessRateB\a\250B\EOT*\STX\CANd\DC2]\n\
      \'cluster_success_rate_ejection_threshold\CAN\ETX \SOH(\rR#clusterSuccessRateEjectionThresholdB\a\250B\EOT*\STX\CANd:9\154\197\136\RS4\n\
      \2envoy.data.cluster.v2alpha.OutlierEjectSuccessRate"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        hostSuccessRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "host_success_rate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"hostSuccessRate")) ::
              Data.ProtoLens.FieldDescriptor OutlierEjectSuccessRate
        clusterAverageSuccessRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster_average_success_rate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"clusterAverageSuccessRate")) ::
              Data.ProtoLens.FieldDescriptor OutlierEjectSuccessRate
        clusterSuccessRateEjectionThreshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster_success_rate_ejection_threshold"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field
                    @"clusterSuccessRateEjectionThreshold")) ::
              Data.ProtoLens.FieldDescriptor OutlierEjectSuccessRate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, hostSuccessRate__field_descriptor),
           (Data.ProtoLens.Tag 2, 
            clusterAverageSuccessRate__field_descriptor),
           (Data.ProtoLens.Tag 3, 
            clusterSuccessRateEjectionThreshold__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OutlierEjectSuccessRate'_unknownFields
        (\ x__ y__ -> x__ {_OutlierEjectSuccessRate'_unknownFields = y__})
  defMessage
    = OutlierEjectSuccessRate'_constructor
        {_OutlierEjectSuccessRate'hostSuccessRate = Data.ProtoLens.fieldDefault,
         _OutlierEjectSuccessRate'clusterAverageSuccessRate = Data.ProtoLens.fieldDefault,
         _OutlierEjectSuccessRate'clusterSuccessRateEjectionThreshold = Data.ProtoLens.fieldDefault,
         _OutlierEjectSuccessRate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          OutlierEjectSuccessRate
          -> Data.ProtoLens.Encoding.Bytes.Parser OutlierEjectSuccessRate
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
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "host_success_rate"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"hostSuccessRate") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "cluster_average_success_rate"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"clusterAverageSuccessRate") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "cluster_success_rate_ejection_threshold"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"clusterSuccessRateEjectionThreshold")
                                     y
                                     x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "OutlierEjectSuccessRate"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"hostSuccessRate") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"clusterAverageSuccessRate") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"clusterSuccessRateEjectionThreshold")
                            _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData OutlierEjectSuccessRate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_OutlierEjectSuccessRate'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_OutlierEjectSuccessRate'hostSuccessRate x__)
                (Control.DeepSeq.deepseq
                   (_OutlierEjectSuccessRate'clusterAverageSuccessRate x__)
                   (Control.DeepSeq.deepseq
                      (_OutlierEjectSuccessRate'clusterSuccessRateEjectionThreshold x__)
                      ())))
newtype OutlierEjectionType'UnrecognizedValue
  = OutlierEjectionType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data OutlierEjectionType
  = CONSECUTIVE_5XX |
    CONSECUTIVE_GATEWAY_FAILURE |
    SUCCESS_RATE |
    CONSECUTIVE_LOCAL_ORIGIN_FAILURE |
    SUCCESS_RATE_LOCAL_ORIGIN |
    FAILURE_PERCENTAGE |
    FAILURE_PERCENTAGE_LOCAL_ORIGIN |
    OutlierEjectionType'Unrecognized !OutlierEjectionType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum OutlierEjectionType where
  maybeToEnum 0 = Prelude.Just CONSECUTIVE_5XX
  maybeToEnum 1 = Prelude.Just CONSECUTIVE_GATEWAY_FAILURE
  maybeToEnum 2 = Prelude.Just SUCCESS_RATE
  maybeToEnum 3 = Prelude.Just CONSECUTIVE_LOCAL_ORIGIN_FAILURE
  maybeToEnum 4 = Prelude.Just SUCCESS_RATE_LOCAL_ORIGIN
  maybeToEnum 5 = Prelude.Just FAILURE_PERCENTAGE
  maybeToEnum 6 = Prelude.Just FAILURE_PERCENTAGE_LOCAL_ORIGIN
  maybeToEnum k
    = Prelude.Just
        (OutlierEjectionType'Unrecognized
           (OutlierEjectionType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum CONSECUTIVE_5XX = "CONSECUTIVE_5XX"
  showEnum CONSECUTIVE_GATEWAY_FAILURE
    = "CONSECUTIVE_GATEWAY_FAILURE"
  showEnum SUCCESS_RATE = "SUCCESS_RATE"
  showEnum CONSECUTIVE_LOCAL_ORIGIN_FAILURE
    = "CONSECUTIVE_LOCAL_ORIGIN_FAILURE"
  showEnum SUCCESS_RATE_LOCAL_ORIGIN = "SUCCESS_RATE_LOCAL_ORIGIN"
  showEnum FAILURE_PERCENTAGE = "FAILURE_PERCENTAGE"
  showEnum FAILURE_PERCENTAGE_LOCAL_ORIGIN
    = "FAILURE_PERCENTAGE_LOCAL_ORIGIN"
  showEnum
    (OutlierEjectionType'Unrecognized (OutlierEjectionType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "CONSECUTIVE_5XX" = Prelude.Just CONSECUTIVE_5XX
    | (Prelude.==) k "CONSECUTIVE_GATEWAY_FAILURE"
    = Prelude.Just CONSECUTIVE_GATEWAY_FAILURE
    | (Prelude.==) k "SUCCESS_RATE" = Prelude.Just SUCCESS_RATE
    | (Prelude.==) k "CONSECUTIVE_LOCAL_ORIGIN_FAILURE"
    = Prelude.Just CONSECUTIVE_LOCAL_ORIGIN_FAILURE
    | (Prelude.==) k "SUCCESS_RATE_LOCAL_ORIGIN"
    = Prelude.Just SUCCESS_RATE_LOCAL_ORIGIN
    | (Prelude.==) k "FAILURE_PERCENTAGE"
    = Prelude.Just FAILURE_PERCENTAGE
    | (Prelude.==) k "FAILURE_PERCENTAGE_LOCAL_ORIGIN"
    = Prelude.Just FAILURE_PERCENTAGE_LOCAL_ORIGIN
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded OutlierEjectionType where
  minBound = CONSECUTIVE_5XX
  maxBound = FAILURE_PERCENTAGE_LOCAL_ORIGIN
instance Prelude.Enum OutlierEjectionType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum OutlierEjectionType: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum CONSECUTIVE_5XX = 0
  fromEnum CONSECUTIVE_GATEWAY_FAILURE = 1
  fromEnum SUCCESS_RATE = 2
  fromEnum CONSECUTIVE_LOCAL_ORIGIN_FAILURE = 3
  fromEnum SUCCESS_RATE_LOCAL_ORIGIN = 4
  fromEnum FAILURE_PERCENTAGE = 5
  fromEnum FAILURE_PERCENTAGE_LOCAL_ORIGIN = 6
  fromEnum
    (OutlierEjectionType'Unrecognized (OutlierEjectionType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ FAILURE_PERCENTAGE_LOCAL_ORIGIN
    = Prelude.error
        "OutlierEjectionType.succ: bad argument FAILURE_PERCENTAGE_LOCAL_ORIGIN. This value would be out of bounds."
  succ CONSECUTIVE_5XX = CONSECUTIVE_GATEWAY_FAILURE
  succ CONSECUTIVE_GATEWAY_FAILURE = SUCCESS_RATE
  succ SUCCESS_RATE = CONSECUTIVE_LOCAL_ORIGIN_FAILURE
  succ CONSECUTIVE_LOCAL_ORIGIN_FAILURE = SUCCESS_RATE_LOCAL_ORIGIN
  succ SUCCESS_RATE_LOCAL_ORIGIN = FAILURE_PERCENTAGE
  succ FAILURE_PERCENTAGE = FAILURE_PERCENTAGE_LOCAL_ORIGIN
  succ (OutlierEjectionType'Unrecognized _)
    = Prelude.error
        "OutlierEjectionType.succ: bad argument: unrecognized value"
  pred CONSECUTIVE_5XX
    = Prelude.error
        "OutlierEjectionType.pred: bad argument CONSECUTIVE_5XX. This value would be out of bounds."
  pred CONSECUTIVE_GATEWAY_FAILURE = CONSECUTIVE_5XX
  pred SUCCESS_RATE = CONSECUTIVE_GATEWAY_FAILURE
  pred CONSECUTIVE_LOCAL_ORIGIN_FAILURE = SUCCESS_RATE
  pred SUCCESS_RATE_LOCAL_ORIGIN = CONSECUTIVE_LOCAL_ORIGIN_FAILURE
  pred FAILURE_PERCENTAGE = SUCCESS_RATE_LOCAL_ORIGIN
  pred FAILURE_PERCENTAGE_LOCAL_ORIGIN = FAILURE_PERCENTAGE
  pred (OutlierEjectionType'Unrecognized _)
    = Prelude.error
        "OutlierEjectionType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault OutlierEjectionType where
  fieldDefault = CONSECUTIVE_5XX
instance Control.DeepSeq.NFData OutlierEjectionType where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \3envoy/data/cluster/v3/outlier_detection_event.proto\DC2\NAKenvoy.data.cluster.v3\SUB\USgoogle/protobuf/timestamp.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\225\ACK\n\
    \\NAKOutlierDetectionEvent\DC2H\n\
    \\EOTtype\CAN\SOH \SOH(\SO2*.envoy.data.cluster.v3.OutlierEjectionTypeR\EOTtypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC28\n\
    \\ttimestamp\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestamp\DC2Q\n\
    \\SYNsecs_since_last_action\CAN\ETX \SOH(\v2\FS.google.protobuf.UInt64ValueR\DC3secsSinceLastAction\DC2*\n\
    \\fcluster_name\CAN\EOT \SOH(\tR\vclusterNameB\a\250B\EOTr\STX\DLE\SOH\DC2*\n\
    \\fupstream_url\CAN\ENQ \SOH(\tR\vupstreamUrlB\a\250B\EOTr\STX\DLE\SOH\DC2?\n\
    \\ACKaction\CAN\ACK \SOH(\SO2\GS.envoy.data.cluster.v3.ActionR\ACKactionB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2#\n\
    \\rnum_ejections\CAN\a \SOH(\rR\fnumEjections\DC2\SUB\n\
    \\benforced\CAN\b \SOH(\bR\benforced\DC2i\n\
    \\CANeject_success_rate_event\CAN\t \SOH(\v2..envoy.data.cluster.v3.OutlierEjectSuccessRateH\NULR\NAKejectSuccessRateEvent\DC2h\n\
    \\ETBeject_consecutive_event\CAN\n\
    \ \SOH(\v2..envoy.data.cluster.v3.OutlierEjectConsecutiveH\NULR\NAKejectConsecutiveEvent\DC2{\n\
    \\RSeject_failure_percentage_event\CAN\v \SOH(\v24.envoy.data.cluster.v3.OutlierEjectFailurePercentageH\NULR\ESCejectFailurePercentageEventB\f\n\
    \\ENQevent\DC2\ETX\248B\SOH:7\154\197\136\RS2\n\
    \0envoy.data.cluster.v2alpha.OutlierDetectionEvent\"\178\STX\n\
    \\ETBOutlierEjectSuccessRate\DC23\n\
    \\DC1host_success_rate\CAN\SOH \SOH(\rR\SIhostSuccessRateB\a\250B\EOT*\STX\CANd\DC2H\n\
    \\FScluster_average_success_rate\CAN\STX \SOH(\rR\EMclusterAverageSuccessRateB\a\250B\EOT*\STX\CANd\DC2]\n\
    \'cluster_success_rate_ejection_threshold\CAN\ETX \SOH(\rR#clusterSuccessRateEjectionThresholdB\a\250B\EOT*\STX\CANd:9\154\197\136\RS4\n\
    \2envoy.data.cluster.v2alpha.OutlierEjectSuccessRate\"T\n\
    \\ETBOutlierEjectConsecutive:9\154\197\136\RS4\n\
    \2envoy.data.cluster.v2alpha.OutlierEjectConsecutive\"\149\SOH\n\
    \\GSOutlierEjectFailurePercentage\DC23\n\
    \\DC1host_success_rate\CAN\SOH \SOH(\rR\SIhostSuccessRateB\a\250B\EOT*\STX\CANd:?\154\197\136\RS:\n\
    \8envoy.data.cluster.v2alpha.OutlierEjectFailurePercentage*\223\SOH\n\
    \\DC3OutlierEjectionType\DC2\DC3\n\
    \\SICONSECUTIVE_5XX\DLE\NUL\DC2\US\n\
    \\ESCCONSECUTIVE_GATEWAY_FAILURE\DLE\SOH\DC2\DLE\n\
    \\fSUCCESS_RATE\DLE\STX\DC2$\n\
    \ CONSECUTIVE_LOCAL_ORIGIN_FAILURE\DLE\ETX\DC2\GS\n\
    \\EMSUCCESS_RATE_LOCAL_ORIGIN\DLE\EOT\DC2\SYN\n\
    \\DC2FAILURE_PERCENTAGE\DLE\ENQ\DC2#\n\
    \\USFAILURE_PERCENTAGE_LOCAL_ORIGIN\DLE\ACK* \n\
    \\ACKAction\DC2\t\n\
    \\ENQEJECT\DLE\NUL\DC2\v\n\
    \\aUNEJECT\DLE\SOHBK\n\
    \#io.envoyproxy.envoy.data.cluster.v3B\SUBOutlierDetectionEventProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\243+\n\
    \\a\DC2\ENQ\NUL\NUL\144\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL+\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL<\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NUL<\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL;\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL;\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\r\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SO\NULF\n\
    \\179\SOH\n\
    \\STX\ENQ\NUL\DC2\EOT\DC4\NUL@\SOH\SUB\" Type of ejection that took place\n\
    \2\130\SOH [#protodoc-title: Outlier detection logging events]\n\
    \ :ref:`Outlier detection logging <arch_overview_outlier_detection_logging>`.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\DC4\ENQ\CAN\n\
    \\143\ETX\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX\ESC\STX\SYN\SUB\129\ETX In case upstream host returns certain number of consecutive 5xx.\n\
    \ If\n\
    \ :ref:`outlier_detection.split_external_local_origin_errors<envoy_v3_api_field_config.cluster.v3.OutlierDetection.split_external_local_origin_errors>`\n\
    \ is *false*, all type of errors are treated as HTTP 5xx errors.\n\
    \ See :ref:`Cluster outlier detection <arch_overview_outlier_detection>` documentation for\n\
    \ details.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX\ESC\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX\ESC\DC4\NAK\n\
    \Y\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX\RS\STX\"\SUBL In case upstream host returns certain number of consecutive gateway errors\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX\RS\STX\GS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX\RS !\n\
    \\164\EOT\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX(\STX\DC3\SUB\150\EOT Runs over aggregated success rate statistics from every host in cluster\n\
    \ and selects hosts for which ratio of successful replies deviates from other hosts\n\
    \ in the cluster.\n\
    \ If\n\
    \ :ref:`outlier_detection.split_external_local_origin_errors<envoy_v3_api_field_config.cluster.v3.OutlierDetection.split_external_local_origin_errors>`\n\
    \ is *false*, all errors (externally and locally generated) are used to calculate success rate\n\
    \ statistics. See :ref:`Cluster outlier detection <arch_overview_outlier_detection>`\n\
    \ documentation for details.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX(\STX\SO\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX(\DC1\DC2\n\
    \\138\ETX\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETX/\STX'\SUB\252\STX Consecutive local origin failures: Connection failures, resets, timeouts, etc\n\
    \ This type of ejection happens only when\n\
    \ :ref:`outlier_detection.split_external_local_origin_errors<envoy_v3_api_field_config.cluster.v3.OutlierDetection.split_external_local_origin_errors>`\n\
    \ is set to *true*.\n\
    \ See :ref:`Cluster outlier detection <arch_overview_outlier_detection>` documentation for\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETX/\STX\"\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETX/%&\n\
    \\244\ETX\n\
    \\EOT\ENQ\NUL\STX\EOT\DC2\ETX7\STX \SUB\230\ETX Runs over aggregated success rate statistics for local origin failures\n\
    \ for all hosts in the cluster and selects hosts for which success rate deviates from other\n\
    \ hosts in the cluster. This type of ejection happens only when\n\
    \ :ref:`outlier_detection.split_external_local_origin_errors<envoy_v3_api_field_config.cluster.v3.OutlierDetection.split_external_local_origin_errors>`\n\
    \ is set to *true*.\n\
    \ See :ref:`Cluster outlier detection <arch_overview_outlier_detection>` documentation for\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\SOH\DC2\ETX7\STX\ESC\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\STX\DC2\ETX7\RS\US\n\
    \\167\SOH\n\
    \\EOT\ENQ\NUL\STX\ENQ\DC2\ETX;\STX\EM\SUB\153\SOH Runs over aggregated success rate statistics from every host in cluster and selects hosts for\n\
    \ which ratio of failed replies is above configured value.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ENQ\SOH\DC2\ETX;\STX\DC4\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ENQ\STX\DC2\ETX;\ETB\CAN\n\
    \\193\SOH\n\
    \\EOT\ENQ\NUL\STX\ACK\DC2\ETX?\STX&\SUB\179\SOH Runs over aggregated success rate statistics for local origin failures from every host in\n\
    \ cluster and selects hosts for which ratio of failed replies is above configured value.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ACK\SOH\DC2\ETX?\STX!\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ACK\STX\DC2\ETX?$%\n\
    \A\n\
    \\STX\ENQ\SOH\DC2\EOTC\NULI\SOH\SUB5 Represents possible action applied to upstream host\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\SOH\SOH\DC2\ETXC\ENQ\v\n\
    \5\n\
    \\EOT\ENQ\SOH\STX\NUL\DC2\ETXE\STX\f\SUB( In case host was excluded from service\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\NUL\SOH\DC2\ETXE\STX\a\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\NUL\STX\DC2\ETXE\n\
    \\v\n\
    \9\n\
    \\EOT\ENQ\SOH\STX\SOH\DC2\ETXH\STX\SO\SUB, In case host was brought back into service\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\SOH\SOH\DC2\ETXH\STX\t\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\SOH\STX\DC2\ETXH\f\r\n\
    \$\n\
    \\STX\EOT\NUL\DC2\EOTL\NULt\SOH\SUB\CAN [#next-free-field: 12]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETXL\b\GS\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOTM\STXN9\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOTM\STXN9\n\
    \L\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXQ\STXN\SUB? In case of eject represents type of ejection that took place.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETXQ\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXQ\SYN\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXQ\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETXQ\USM\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DLE\DC2\ETXQ L\n\
    \#\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXT\STX*\SUB\SYN Timestamp for event.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETXT\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXT\FS%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXT()\n\
    \g\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXW\STX9\SUBZ The time in seconds since the last action (either an ejection or unejection) took place.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETXW\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXW\RS4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXW78\n\
    \j\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETXZ\STXC\SUB] The :ref:`cluster <envoy_v3_api_msg_config.cluster.v3.Cluster>` that owns the ejected host.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETXZ\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETXZ\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETXZ\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETXZ\SUBB\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\175\b\SO\DC2\ETXZ\ESCA\n\
    \G\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX]\STXC\SUB: The URL of the ejected host. E.g., ``tcp://1.2.3.4:80``.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX]\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX]\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX]\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\ETX]\SUBB\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\175\b\SO\DC2\ETX]\ESCA\n\
    \*\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX`\STXC\SUB\GS The action that took place.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX`\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX`\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX`\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\b\DC2\ETX`\DC4B\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\175\b\DLE\DC2\ETX`\NAKA\n\
    \\223\SOH\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETXe\STX\ESC\SUB\209\SOH If ``action`` is ``eject``, specifies the number of times the host has been ejected (local to\n\
    \ that Envoy and gets reset if the host gets removed from the upstream cluster for any reason and\n\
    \ then re-added).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETXe\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETXe\t\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETXe\EM\SUB\n\
    \\197\SOH\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETXi\STX\DC4\SUB\183\SOH If ``action`` is ``eject``, specifies if the ejection was enforced. ``true`` means the host was\n\
    \ ejected. ``false`` means the event was logged but the host was not actually ejected.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\ETXi\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETXi\a\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETXi\DC2\DC3\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOTk\STXs\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETXk\b\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\ETXl\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\ETXl\EOT&\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETXn\EOT9\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ACK\DC2\ETXn\EOT\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETXn\FS4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETXn78\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\t\DC2\ETXp\EOT9\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ACK\DC2\ETXp\EOT\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\ETXp\FS3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\ETXp68\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\ETXr\EOTF\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ACK\DC2\ETXr\EOT!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\ETXr\"@\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\ETXrCE\n\
    \\v\n\
    \\STX\EOT\SOH\DC2\ENQv\NUL\131\SOH\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXv\b\US\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOTw\STXx;\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOTw\STXx;\n\
    \X\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX{\STXF\SUBK Host\226\128\153s success rate at the time of the ejection event on a 0-100 range.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX{\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX{\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX{\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX{\USE\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\ENQ\DC2\ETX{ D\n\
    \t\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\DEL\STXQ\SUBg Average success rate of the hosts in the cluster at the time of the ejection event on a 0-100\n\
    \ range.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\DEL\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\DEL\t%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\DEL()\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\ETX\DEL*P\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\175\b\ENQ\DC2\ETX\DEL+O\n\
    \R\n\
    \\EOT\EOT\SOH\STX\STX\DC2\EOT\130\SOH\STX\\\SUBD Success rate ejection threshold at the time of the ejection event.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\EOT\130\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\EOT\130\SOH\t0\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\EOT\130\SOH34\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\b\DC2\EOT\130\SOH5[\n\
    \\DLE\n\
    \\b\EOT\SOH\STX\STX\b\175\b\ENQ\DC2\EOT\130\SOH6Z\n\
    \\f\n\
    \\STX\EOT\STX\DC2\ACK\133\SOH\NUL\136\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\STX\SOH\DC2\EOT\133\SOH\b\US\n\
    \\r\n\
    \\ETX\EOT\STX\a\DC2\ACK\134\SOH\STX\135\SOH;\n\
    \\DC2\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\ACK\134\SOH\STX\135\SOH;\n\
    \\f\n\
    \\STX\EOT\ETX\DC2\ACK\138\SOH\NUL\144\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\138\SOH\b%\n\
    \\r\n\
    \\ETX\EOT\ETX\a\DC2\ACK\139\SOH\STX\140\SOHA\n\
    \\DC2\n\
    \\b\EOT\ETX\a\211\136\225\ETX\SOH\DC2\ACK\139\SOH\STX\140\SOHA\n\
    \W\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\143\SOH\STXF\SUBI Host's success rate at the time of the ejection event on a 0-100 range.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\EOT\143\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\143\SOH\t\SUB\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\143\SOH\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\EOT\143\SOH\USE\n\
    \\DLE\n\
    \\b\EOT\ETX\STX\NUL\b\175\b\ENQ\DC2\EOT\143\SOH Db\ACKproto3"