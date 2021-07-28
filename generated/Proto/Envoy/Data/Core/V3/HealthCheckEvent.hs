{- This file was auto-generated from envoy/data/core/v3/health_check_event.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Data.Core.V3.HealthCheckEvent (
        DegradedHealthyHost(), HealthCheckAddHealthy(),
        HealthCheckEjectUnhealthy(), HealthCheckEvent(),
        HealthCheckEvent'Event(..), _HealthCheckEvent'EjectUnhealthyEvent,
        _HealthCheckEvent'AddHealthyEvent,
        _HealthCheckEvent'HealthCheckFailureEvent,
        _HealthCheckEvent'DegradedHealthyHost,
        _HealthCheckEvent'NoLongerDegradedHost, HealthCheckFailure(),
        HealthCheckFailureType(..), HealthCheckFailureType(),
        HealthCheckFailureType'UnrecognizedValue, HealthCheckerType(..),
        HealthCheckerType(), HealthCheckerType'UnrecognizedValue,
        NoLongerDegradedHost()
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
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
      -}
data DegradedHealthyHost
  = DegradedHealthyHost'_constructor {_DegradedHealthyHost'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DegradedHealthyHost where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message DegradedHealthyHost where
  messageName _
    = Data.Text.pack "envoy.data.core.v3.DegradedHealthyHost"
  packedMessageDescriptor _
    = "\n\
      \\DC3DegradedHealthyHost:2\154\197\136\RS-\n\
      \+envoy.data.core.v2alpha.DegradedHealthyHost"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DegradedHealthyHost'_unknownFields
        (\ x__ y__ -> x__ {_DegradedHealthyHost'_unknownFields = y__})
  defMessage
    = DegradedHealthyHost'_constructor
        {_DegradedHealthyHost'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DegradedHealthyHost
          -> Data.ProtoLens.Encoding.Bytes.Parser DegradedHealthyHost
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
          (do loop Data.ProtoLens.defMessage) "DegradedHealthyHost"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData DegradedHealthyHost where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DegradedHealthyHost'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Envoy.Data.Core.V3.HealthCheckEvent_Fields.firstCheck' @:: Lens' HealthCheckAddHealthy Prelude.Bool@ -}
data HealthCheckAddHealthy
  = HealthCheckAddHealthy'_constructor {_HealthCheckAddHealthy'firstCheck :: !Prelude.Bool,
                                        _HealthCheckAddHealthy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HealthCheckAddHealthy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HealthCheckAddHealthy "firstCheck" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckAddHealthy'firstCheck
           (\ x__ y__ -> x__ {_HealthCheckAddHealthy'firstCheck = y__}))
        Prelude.id
instance Data.ProtoLens.Message HealthCheckAddHealthy where
  messageName _
    = Data.Text.pack "envoy.data.core.v3.HealthCheckAddHealthy"
  packedMessageDescriptor _
    = "\n\
      \\NAKHealthCheckAddHealthy\DC2\US\n\
      \\vfirst_check\CAN\SOH \SOH(\bR\n\
      \firstCheck:4\154\197\136\RS/\n\
      \-envoy.data.core.v2alpha.HealthCheckAddHealthy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        firstCheck__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "first_check"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"firstCheck")) ::
              Data.ProtoLens.FieldDescriptor HealthCheckAddHealthy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, firstCheck__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HealthCheckAddHealthy'_unknownFields
        (\ x__ y__ -> x__ {_HealthCheckAddHealthy'_unknownFields = y__})
  defMessage
    = HealthCheckAddHealthy'_constructor
        {_HealthCheckAddHealthy'firstCheck = Data.ProtoLens.fieldDefault,
         _HealthCheckAddHealthy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HealthCheckAddHealthy
          -> Data.ProtoLens.Encoding.Bytes.Parser HealthCheckAddHealthy
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
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "first_check"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"firstCheck") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HealthCheckAddHealthy"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"firstCheck") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt
                         (\ b -> if b then 1 else 0)
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData HealthCheckAddHealthy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HealthCheckAddHealthy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HealthCheckAddHealthy'firstCheck x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Data.Core.V3.HealthCheckEvent_Fields.failureType' @:: Lens' HealthCheckEjectUnhealthy HealthCheckFailureType@ -}
data HealthCheckEjectUnhealthy
  = HealthCheckEjectUnhealthy'_constructor {_HealthCheckEjectUnhealthy'failureType :: !HealthCheckFailureType,
                                            _HealthCheckEjectUnhealthy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HealthCheckEjectUnhealthy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HealthCheckEjectUnhealthy "failureType" HealthCheckFailureType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckEjectUnhealthy'failureType
           (\ x__ y__ -> x__ {_HealthCheckEjectUnhealthy'failureType = y__}))
        Prelude.id
instance Data.ProtoLens.Message HealthCheckEjectUnhealthy where
  messageName _
    = Data.Text.pack "envoy.data.core.v3.HealthCheckEjectUnhealthy"
  packedMessageDescriptor _
    = "\n\
      \\EMHealthCheckEjectUnhealthy\DC2W\n\
      \\ffailure_type\CAN\SOH \SOH(\SO2*.envoy.data.core.v3.HealthCheckFailureTypeR\vfailureTypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH:8\154\197\136\RS3\n\
      \1envoy.data.core.v2alpha.HealthCheckEjectUnhealthy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        failureType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor HealthCheckFailureType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"failureType")) ::
              Data.ProtoLens.FieldDescriptor HealthCheckEjectUnhealthy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, failureType__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HealthCheckEjectUnhealthy'_unknownFields
        (\ x__ y__
           -> x__ {_HealthCheckEjectUnhealthy'_unknownFields = y__})
  defMessage
    = HealthCheckEjectUnhealthy'_constructor
        {_HealthCheckEjectUnhealthy'failureType = Data.ProtoLens.fieldDefault,
         _HealthCheckEjectUnhealthy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HealthCheckEjectUnhealthy
          -> Data.ProtoLens.Encoding.Bytes.Parser HealthCheckEjectUnhealthy
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
                                       "failure_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"failureType") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HealthCheckEjectUnhealthy"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"failureType") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData HealthCheckEjectUnhealthy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HealthCheckEjectUnhealthy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HealthCheckEjectUnhealthy'failureType x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Data.Core.V3.HealthCheckEvent_Fields.healthCheckerType' @:: Lens' HealthCheckEvent HealthCheckerType@
         * 'Proto.Envoy.Data.Core.V3.HealthCheckEvent_Fields.host' @:: Lens' HealthCheckEvent Proto.Envoy.Config.Core.V3.Address.Address@
         * 'Proto.Envoy.Data.Core.V3.HealthCheckEvent_Fields.maybe'host' @:: Lens' HealthCheckEvent (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address)@
         * 'Proto.Envoy.Data.Core.V3.HealthCheckEvent_Fields.clusterName' @:: Lens' HealthCheckEvent Data.Text.Text@
         * 'Proto.Envoy.Data.Core.V3.HealthCheckEvent_Fields.timestamp' @:: Lens' HealthCheckEvent Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Envoy.Data.Core.V3.HealthCheckEvent_Fields.maybe'timestamp' @:: Lens' HealthCheckEvent (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Envoy.Data.Core.V3.HealthCheckEvent_Fields.maybe'event' @:: Lens' HealthCheckEvent (Prelude.Maybe HealthCheckEvent'Event)@
         * 'Proto.Envoy.Data.Core.V3.HealthCheckEvent_Fields.maybe'ejectUnhealthyEvent' @:: Lens' HealthCheckEvent (Prelude.Maybe HealthCheckEjectUnhealthy)@
         * 'Proto.Envoy.Data.Core.V3.HealthCheckEvent_Fields.ejectUnhealthyEvent' @:: Lens' HealthCheckEvent HealthCheckEjectUnhealthy@
         * 'Proto.Envoy.Data.Core.V3.HealthCheckEvent_Fields.maybe'addHealthyEvent' @:: Lens' HealthCheckEvent (Prelude.Maybe HealthCheckAddHealthy)@
         * 'Proto.Envoy.Data.Core.V3.HealthCheckEvent_Fields.addHealthyEvent' @:: Lens' HealthCheckEvent HealthCheckAddHealthy@
         * 'Proto.Envoy.Data.Core.V3.HealthCheckEvent_Fields.maybe'healthCheckFailureEvent' @:: Lens' HealthCheckEvent (Prelude.Maybe HealthCheckFailure)@
         * 'Proto.Envoy.Data.Core.V3.HealthCheckEvent_Fields.healthCheckFailureEvent' @:: Lens' HealthCheckEvent HealthCheckFailure@
         * 'Proto.Envoy.Data.Core.V3.HealthCheckEvent_Fields.maybe'degradedHealthyHost' @:: Lens' HealthCheckEvent (Prelude.Maybe DegradedHealthyHost)@
         * 'Proto.Envoy.Data.Core.V3.HealthCheckEvent_Fields.degradedHealthyHost' @:: Lens' HealthCheckEvent DegradedHealthyHost@
         * 'Proto.Envoy.Data.Core.V3.HealthCheckEvent_Fields.maybe'noLongerDegradedHost' @:: Lens' HealthCheckEvent (Prelude.Maybe NoLongerDegradedHost)@
         * 'Proto.Envoy.Data.Core.V3.HealthCheckEvent_Fields.noLongerDegradedHost' @:: Lens' HealthCheckEvent NoLongerDegradedHost@ -}
data HealthCheckEvent
  = HealthCheckEvent'_constructor {_HealthCheckEvent'healthCheckerType :: !HealthCheckerType,
                                   _HealthCheckEvent'host :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address),
                                   _HealthCheckEvent'clusterName :: !Data.Text.Text,
                                   _HealthCheckEvent'timestamp :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                   _HealthCheckEvent'event :: !(Prelude.Maybe HealthCheckEvent'Event),
                                   _HealthCheckEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HealthCheckEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data HealthCheckEvent'Event
  = HealthCheckEvent'EjectUnhealthyEvent !HealthCheckEjectUnhealthy |
    HealthCheckEvent'AddHealthyEvent !HealthCheckAddHealthy |
    HealthCheckEvent'HealthCheckFailureEvent !HealthCheckFailure |
    HealthCheckEvent'DegradedHealthyHost !DegradedHealthyHost |
    HealthCheckEvent'NoLongerDegradedHost !NoLongerDegradedHost
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField HealthCheckEvent "healthCheckerType" HealthCheckerType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckEvent'healthCheckerType
           (\ x__ y__ -> x__ {_HealthCheckEvent'healthCheckerType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheckEvent "host" Proto.Envoy.Config.Core.V3.Address.Address where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckEvent'host
           (\ x__ y__ -> x__ {_HealthCheckEvent'host = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheckEvent "maybe'host" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckEvent'host
           (\ x__ y__ -> x__ {_HealthCheckEvent'host = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheckEvent "clusterName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckEvent'clusterName
           (\ x__ y__ -> x__ {_HealthCheckEvent'clusterName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheckEvent "timestamp" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckEvent'timestamp
           (\ x__ y__ -> x__ {_HealthCheckEvent'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheckEvent "maybe'timestamp" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckEvent'timestamp
           (\ x__ y__ -> x__ {_HealthCheckEvent'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheckEvent "maybe'event" (Prelude.Maybe HealthCheckEvent'Event) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckEvent'event
           (\ x__ y__ -> x__ {_HealthCheckEvent'event = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheckEvent "maybe'ejectUnhealthyEvent" (Prelude.Maybe HealthCheckEjectUnhealthy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckEvent'event
           (\ x__ y__ -> x__ {_HealthCheckEvent'event = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HealthCheckEvent'EjectUnhealthyEvent x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HealthCheckEvent'EjectUnhealthyEvent y__))
instance Data.ProtoLens.Field.HasField HealthCheckEvent "ejectUnhealthyEvent" HealthCheckEjectUnhealthy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckEvent'event
           (\ x__ y__ -> x__ {_HealthCheckEvent'event = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HealthCheckEvent'EjectUnhealthyEvent x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HealthCheckEvent'EjectUnhealthyEvent y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HealthCheckEvent "maybe'addHealthyEvent" (Prelude.Maybe HealthCheckAddHealthy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckEvent'event
           (\ x__ y__ -> x__ {_HealthCheckEvent'event = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HealthCheckEvent'AddHealthyEvent x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HealthCheckEvent'AddHealthyEvent y__))
instance Data.ProtoLens.Field.HasField HealthCheckEvent "addHealthyEvent" HealthCheckAddHealthy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckEvent'event
           (\ x__ y__ -> x__ {_HealthCheckEvent'event = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HealthCheckEvent'AddHealthyEvent x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HealthCheckEvent'AddHealthyEvent y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HealthCheckEvent "maybe'healthCheckFailureEvent" (Prelude.Maybe HealthCheckFailure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckEvent'event
           (\ x__ y__ -> x__ {_HealthCheckEvent'event = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HealthCheckEvent'HealthCheckFailureEvent x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap HealthCheckEvent'HealthCheckFailureEvent y__))
instance Data.ProtoLens.Field.HasField HealthCheckEvent "healthCheckFailureEvent" HealthCheckFailure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckEvent'event
           (\ x__ y__ -> x__ {_HealthCheckEvent'event = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HealthCheckEvent'HealthCheckFailureEvent x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap HealthCheckEvent'HealthCheckFailureEvent y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HealthCheckEvent "maybe'degradedHealthyHost" (Prelude.Maybe DegradedHealthyHost) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckEvent'event
           (\ x__ y__ -> x__ {_HealthCheckEvent'event = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HealthCheckEvent'DegradedHealthyHost x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HealthCheckEvent'DegradedHealthyHost y__))
instance Data.ProtoLens.Field.HasField HealthCheckEvent "degradedHealthyHost" DegradedHealthyHost where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckEvent'event
           (\ x__ y__ -> x__ {_HealthCheckEvent'event = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HealthCheckEvent'DegradedHealthyHost x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HealthCheckEvent'DegradedHealthyHost y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HealthCheckEvent "maybe'noLongerDegradedHost" (Prelude.Maybe NoLongerDegradedHost) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckEvent'event
           (\ x__ y__ -> x__ {_HealthCheckEvent'event = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HealthCheckEvent'NoLongerDegradedHost x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap HealthCheckEvent'NoLongerDegradedHost y__))
instance Data.ProtoLens.Field.HasField HealthCheckEvent "noLongerDegradedHost" NoLongerDegradedHost where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckEvent'event
           (\ x__ y__ -> x__ {_HealthCheckEvent'event = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HealthCheckEvent'NoLongerDegradedHost x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap HealthCheckEvent'NoLongerDegradedHost y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message HealthCheckEvent where
  messageName _
    = Data.Text.pack "envoy.data.core.v3.HealthCheckEvent"
  packedMessageDescriptor _
    = "\n\
      \\DLEHealthCheckEvent\DC2_\n\
      \\DC3health_checker_type\CAN\SOH \SOH(\SO2%.envoy.data.core.v3.HealthCheckerTypeR\DC1healthCheckerTypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC21\n\
      \\EOThost\CAN\STX \SOH(\v2\GS.envoy.config.core.v3.AddressR\EOThost\DC2*\n\
      \\fcluster_name\CAN\ETX \SOH(\tR\vclusterNameB\a\250B\EOTr\STX\DLE\SOH\DC2c\n\
      \\NAKeject_unhealthy_event\CAN\EOT \SOH(\v2-.envoy.data.core.v3.HealthCheckEjectUnhealthyH\NULR\DC3ejectUnhealthyEvent\DC2W\n\
      \\DC1add_healthy_event\CAN\ENQ \SOH(\v2).envoy.data.core.v3.HealthCheckAddHealthyH\NULR\SIaddHealthyEvent\DC2e\n\
      \\SUBhealth_check_failure_event\CAN\a \SOH(\v2&.envoy.data.core.v3.HealthCheckFailureH\NULR\ETBhealthCheckFailureEvent\DC2]\n\
      \\NAKdegraded_healthy_host\CAN\b \SOH(\v2'.envoy.data.core.v3.DegradedHealthyHostH\NULR\DC3degradedHealthyHost\DC2a\n\
      \\ETBno_longer_degraded_host\CAN\t \SOH(\v2(.envoy.data.core.v3.NoLongerDegradedHostH\NULR\DC4noLongerDegradedHost\DC28\n\
      \\ttimestamp\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestampB\f\n\
      \\ENQevent\DC2\ETX\248B\SOH:/\154\197\136\RS*\n\
      \(envoy.data.core.v2alpha.HealthCheckEvent"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        healthCheckerType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "health_checker_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor HealthCheckerType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"healthCheckerType")) ::
              Data.ProtoLens.FieldDescriptor HealthCheckEvent
        host__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "host"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.Address)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'host")) ::
              Data.ProtoLens.FieldDescriptor HealthCheckEvent
        clusterName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"clusterName")) ::
              Data.ProtoLens.FieldDescriptor HealthCheckEvent
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor HealthCheckEvent
        ejectUnhealthyEvent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "eject_unhealthy_event"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HealthCheckEjectUnhealthy)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ejectUnhealthyEvent")) ::
              Data.ProtoLens.FieldDescriptor HealthCheckEvent
        addHealthyEvent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "add_healthy_event"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HealthCheckAddHealthy)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'addHealthyEvent")) ::
              Data.ProtoLens.FieldDescriptor HealthCheckEvent
        healthCheckFailureEvent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "health_check_failure_event"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HealthCheckFailure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'healthCheckFailureEvent")) ::
              Data.ProtoLens.FieldDescriptor HealthCheckEvent
        degradedHealthyHost__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "degraded_healthy_host"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DegradedHealthyHost)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'degradedHealthyHost")) ::
              Data.ProtoLens.FieldDescriptor HealthCheckEvent
        noLongerDegradedHost__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "no_longer_degraded_host"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor NoLongerDegradedHost)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'noLongerDegradedHost")) ::
              Data.ProtoLens.FieldDescriptor HealthCheckEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, healthCheckerType__field_descriptor),
           (Data.ProtoLens.Tag 2, host__field_descriptor),
           (Data.ProtoLens.Tag 3, clusterName__field_descriptor),
           (Data.ProtoLens.Tag 6, timestamp__field_descriptor),
           (Data.ProtoLens.Tag 4, ejectUnhealthyEvent__field_descriptor),
           (Data.ProtoLens.Tag 5, addHealthyEvent__field_descriptor),
           (Data.ProtoLens.Tag 7, healthCheckFailureEvent__field_descriptor),
           (Data.ProtoLens.Tag 8, degradedHealthyHost__field_descriptor),
           (Data.ProtoLens.Tag 9, noLongerDegradedHost__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HealthCheckEvent'_unknownFields
        (\ x__ y__ -> x__ {_HealthCheckEvent'_unknownFields = y__})
  defMessage
    = HealthCheckEvent'_constructor
        {_HealthCheckEvent'healthCheckerType = Data.ProtoLens.fieldDefault,
         _HealthCheckEvent'host = Prelude.Nothing,
         _HealthCheckEvent'clusterName = Data.ProtoLens.fieldDefault,
         _HealthCheckEvent'timestamp = Prelude.Nothing,
         _HealthCheckEvent'event = Prelude.Nothing,
         _HealthCheckEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HealthCheckEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser HealthCheckEvent
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
                                       "health_checker_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"healthCheckerType") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "host"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"host") y x)
                        26
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
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "eject_unhealthy_event"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"ejectUnhealthyEvent") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "add_healthy_event"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"addHealthyEvent") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "health_check_failure_event"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"healthCheckFailureEvent") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "degraded_healthy_host"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"degradedHealthyHost") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "no_longer_degraded_host"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"noLongerDegradedHost") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HealthCheckEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"healthCheckerType") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'host") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"clusterName") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
                             (Data.ProtoLens.Field.field @"maybe'timestamp") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
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
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'event") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just (HealthCheckEvent'EjectUnhealthyEvent v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage
                                      v)
                            (Prelude.Just (HealthCheckEvent'AddHealthyEvent v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage
                                      v)
                            (Prelude.Just (HealthCheckEvent'HealthCheckFailureEvent v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage
                                      v)
                            (Prelude.Just (HealthCheckEvent'DegradedHealthyHost v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage
                                      v)
                            (Prelude.Just (HealthCheckEvent'NoLongerDegradedHost v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage
                                      v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData HealthCheckEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HealthCheckEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HealthCheckEvent'healthCheckerType x__)
                (Control.DeepSeq.deepseq
                   (_HealthCheckEvent'host x__)
                   (Control.DeepSeq.deepseq
                      (_HealthCheckEvent'clusterName x__)
                      (Control.DeepSeq.deepseq
                         (_HealthCheckEvent'timestamp x__)
                         (Control.DeepSeq.deepseq (_HealthCheckEvent'event x__) ())))))
instance Control.DeepSeq.NFData HealthCheckEvent'Event where
  rnf (HealthCheckEvent'EjectUnhealthyEvent x__)
    = Control.DeepSeq.rnf x__
  rnf (HealthCheckEvent'AddHealthyEvent x__)
    = Control.DeepSeq.rnf x__
  rnf (HealthCheckEvent'HealthCheckFailureEvent x__)
    = Control.DeepSeq.rnf x__
  rnf (HealthCheckEvent'DegradedHealthyHost x__)
    = Control.DeepSeq.rnf x__
  rnf (HealthCheckEvent'NoLongerDegradedHost x__)
    = Control.DeepSeq.rnf x__
_HealthCheckEvent'EjectUnhealthyEvent ::
  Data.ProtoLens.Prism.Prism' HealthCheckEvent'Event HealthCheckEjectUnhealthy
_HealthCheckEvent'EjectUnhealthyEvent
  = Data.ProtoLens.Prism.prism'
      HealthCheckEvent'EjectUnhealthyEvent
      (\ p__
         -> case p__ of
              (HealthCheckEvent'EjectUnhealthyEvent p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HealthCheckEvent'AddHealthyEvent ::
  Data.ProtoLens.Prism.Prism' HealthCheckEvent'Event HealthCheckAddHealthy
_HealthCheckEvent'AddHealthyEvent
  = Data.ProtoLens.Prism.prism'
      HealthCheckEvent'AddHealthyEvent
      (\ p__
         -> case p__ of
              (HealthCheckEvent'AddHealthyEvent p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HealthCheckEvent'HealthCheckFailureEvent ::
  Data.ProtoLens.Prism.Prism' HealthCheckEvent'Event HealthCheckFailure
_HealthCheckEvent'HealthCheckFailureEvent
  = Data.ProtoLens.Prism.prism'
      HealthCheckEvent'HealthCheckFailureEvent
      (\ p__
         -> case p__ of
              (HealthCheckEvent'HealthCheckFailureEvent p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HealthCheckEvent'DegradedHealthyHost ::
  Data.ProtoLens.Prism.Prism' HealthCheckEvent'Event DegradedHealthyHost
_HealthCheckEvent'DegradedHealthyHost
  = Data.ProtoLens.Prism.prism'
      HealthCheckEvent'DegradedHealthyHost
      (\ p__
         -> case p__ of
              (HealthCheckEvent'DegradedHealthyHost p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HealthCheckEvent'NoLongerDegradedHost ::
  Data.ProtoLens.Prism.Prism' HealthCheckEvent'Event NoLongerDegradedHost
_HealthCheckEvent'NoLongerDegradedHost
  = Data.ProtoLens.Prism.prism'
      HealthCheckEvent'NoLongerDegradedHost
      (\ p__
         -> case p__ of
              (HealthCheckEvent'NoLongerDegradedHost p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Data.Core.V3.HealthCheckEvent_Fields.failureType' @:: Lens' HealthCheckFailure HealthCheckFailureType@
         * 'Proto.Envoy.Data.Core.V3.HealthCheckEvent_Fields.firstCheck' @:: Lens' HealthCheckFailure Prelude.Bool@ -}
data HealthCheckFailure
  = HealthCheckFailure'_constructor {_HealthCheckFailure'failureType :: !HealthCheckFailureType,
                                     _HealthCheckFailure'firstCheck :: !Prelude.Bool,
                                     _HealthCheckFailure'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HealthCheckFailure where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HealthCheckFailure "failureType" HealthCheckFailureType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckFailure'failureType
           (\ x__ y__ -> x__ {_HealthCheckFailure'failureType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheckFailure "firstCheck" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckFailure'firstCheck
           (\ x__ y__ -> x__ {_HealthCheckFailure'firstCheck = y__}))
        Prelude.id
instance Data.ProtoLens.Message HealthCheckFailure where
  messageName _
    = Data.Text.pack "envoy.data.core.v3.HealthCheckFailure"
  packedMessageDescriptor _
    = "\n\
      \\DC2HealthCheckFailure\DC2W\n\
      \\ffailure_type\CAN\SOH \SOH(\SO2*.envoy.data.core.v3.HealthCheckFailureTypeR\vfailureTypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2\US\n\
      \\vfirst_check\CAN\STX \SOH(\bR\n\
      \firstCheck:1\154\197\136\RS,\n\
      \*envoy.data.core.v2alpha.HealthCheckFailure"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        failureType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor HealthCheckFailureType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"failureType")) ::
              Data.ProtoLens.FieldDescriptor HealthCheckFailure
        firstCheck__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "first_check"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"firstCheck")) ::
              Data.ProtoLens.FieldDescriptor HealthCheckFailure
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, failureType__field_descriptor),
           (Data.ProtoLens.Tag 2, firstCheck__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HealthCheckFailure'_unknownFields
        (\ x__ y__ -> x__ {_HealthCheckFailure'_unknownFields = y__})
  defMessage
    = HealthCheckFailure'_constructor
        {_HealthCheckFailure'failureType = Data.ProtoLens.fieldDefault,
         _HealthCheckFailure'firstCheck = Data.ProtoLens.fieldDefault,
         _HealthCheckFailure'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HealthCheckFailure
          -> Data.ProtoLens.Encoding.Bytes.Parser HealthCheckFailure
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
                                       "failure_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"failureType") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "first_check"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"firstCheck") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HealthCheckFailure"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"failureType") _x
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
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"firstCheck") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData HealthCheckFailure where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HealthCheckFailure'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HealthCheckFailure'failureType x__)
                (Control.DeepSeq.deepseq (_HealthCheckFailure'firstCheck x__) ()))
newtype HealthCheckFailureType'UnrecognizedValue
  = HealthCheckFailureType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data HealthCheckFailureType
  = ACTIVE |
    PASSIVE |
    NETWORK |
    NETWORK_TIMEOUT |
    HealthCheckFailureType'Unrecognized !HealthCheckFailureType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum HealthCheckFailureType where
  maybeToEnum 0 = Prelude.Just ACTIVE
  maybeToEnum 1 = Prelude.Just PASSIVE
  maybeToEnum 2 = Prelude.Just NETWORK
  maybeToEnum 3 = Prelude.Just NETWORK_TIMEOUT
  maybeToEnum k
    = Prelude.Just
        (HealthCheckFailureType'Unrecognized
           (HealthCheckFailureType'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum ACTIVE = "ACTIVE"
  showEnum PASSIVE = "PASSIVE"
  showEnum NETWORK = "NETWORK"
  showEnum NETWORK_TIMEOUT = "NETWORK_TIMEOUT"
  showEnum
    (HealthCheckFailureType'Unrecognized (HealthCheckFailureType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "ACTIVE" = Prelude.Just ACTIVE
    | (Prelude.==) k "PASSIVE" = Prelude.Just PASSIVE
    | (Prelude.==) k "NETWORK" = Prelude.Just NETWORK
    | (Prelude.==) k "NETWORK_TIMEOUT" = Prelude.Just NETWORK_TIMEOUT
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded HealthCheckFailureType where
  minBound = ACTIVE
  maxBound = NETWORK_TIMEOUT
instance Prelude.Enum HealthCheckFailureType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum HealthCheckFailureType: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum ACTIVE = 0
  fromEnum PASSIVE = 1
  fromEnum NETWORK = 2
  fromEnum NETWORK_TIMEOUT = 3
  fromEnum
    (HealthCheckFailureType'Unrecognized (HealthCheckFailureType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ NETWORK_TIMEOUT
    = Prelude.error
        "HealthCheckFailureType.succ: bad argument NETWORK_TIMEOUT. This value would be out of bounds."
  succ ACTIVE = PASSIVE
  succ PASSIVE = NETWORK
  succ NETWORK = NETWORK_TIMEOUT
  succ (HealthCheckFailureType'Unrecognized _)
    = Prelude.error
        "HealthCheckFailureType.succ: bad argument: unrecognized value"
  pred ACTIVE
    = Prelude.error
        "HealthCheckFailureType.pred: bad argument ACTIVE. This value would be out of bounds."
  pred PASSIVE = ACTIVE
  pred NETWORK = PASSIVE
  pred NETWORK_TIMEOUT = NETWORK
  pred (HealthCheckFailureType'Unrecognized _)
    = Prelude.error
        "HealthCheckFailureType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault HealthCheckFailureType where
  fieldDefault = ACTIVE
instance Control.DeepSeq.NFData HealthCheckFailureType where
  rnf x__ = Prelude.seq x__ ()
newtype HealthCheckerType'UnrecognizedValue
  = HealthCheckerType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data HealthCheckerType
  = HTTP |
    TCP |
    GRPC |
    REDIS |
    HealthCheckerType'Unrecognized !HealthCheckerType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum HealthCheckerType where
  maybeToEnum 0 = Prelude.Just HTTP
  maybeToEnum 1 = Prelude.Just TCP
  maybeToEnum 2 = Prelude.Just GRPC
  maybeToEnum 3 = Prelude.Just REDIS
  maybeToEnum k
    = Prelude.Just
        (HealthCheckerType'Unrecognized
           (HealthCheckerType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum HTTP = "HTTP"
  showEnum TCP = "TCP"
  showEnum GRPC = "GRPC"
  showEnum REDIS = "REDIS"
  showEnum
    (HealthCheckerType'Unrecognized (HealthCheckerType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "HTTP" = Prelude.Just HTTP
    | (Prelude.==) k "TCP" = Prelude.Just TCP
    | (Prelude.==) k "GRPC" = Prelude.Just GRPC
    | (Prelude.==) k "REDIS" = Prelude.Just REDIS
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded HealthCheckerType where
  minBound = HTTP
  maxBound = REDIS
instance Prelude.Enum HealthCheckerType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum HealthCheckerType: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum HTTP = 0
  fromEnum TCP = 1
  fromEnum GRPC = 2
  fromEnum REDIS = 3
  fromEnum
    (HealthCheckerType'Unrecognized (HealthCheckerType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ REDIS
    = Prelude.error
        "HealthCheckerType.succ: bad argument REDIS. This value would be out of bounds."
  succ HTTP = TCP
  succ TCP = GRPC
  succ GRPC = REDIS
  succ (HealthCheckerType'Unrecognized _)
    = Prelude.error
        "HealthCheckerType.succ: bad argument: unrecognized value"
  pred HTTP
    = Prelude.error
        "HealthCheckerType.pred: bad argument HTTP. This value would be out of bounds."
  pred TCP = HTTP
  pred GRPC = TCP
  pred REDIS = GRPC
  pred (HealthCheckerType'Unrecognized _)
    = Prelude.error
        "HealthCheckerType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault HealthCheckerType where
  fieldDefault = HTTP
instance Control.DeepSeq.NFData HealthCheckerType where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
      -}
data NoLongerDegradedHost
  = NoLongerDegradedHost'_constructor {_NoLongerDegradedHost'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NoLongerDegradedHost where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message NoLongerDegradedHost where
  messageName _
    = Data.Text.pack "envoy.data.core.v3.NoLongerDegradedHost"
  packedMessageDescriptor _
    = "\n\
      \\DC4NoLongerDegradedHost:3\154\197\136\RS.\n\
      \,envoy.data.core.v2alpha.NoLongerDegradedHost"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NoLongerDegradedHost'_unknownFields
        (\ x__ y__ -> x__ {_NoLongerDegradedHost'_unknownFields = y__})
  defMessage
    = NoLongerDegradedHost'_constructor
        {_NoLongerDegradedHost'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NoLongerDegradedHost
          -> Data.ProtoLens.Encoding.Bytes.Parser NoLongerDegradedHost
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
          (do loop Data.ProtoLens.defMessage) "NoLongerDegradedHost"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData NoLongerDegradedHost where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NoLongerDegradedHost'_unknownFields x__) ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \+envoy/data/core/v3/health_check_event.proto\DC2\DC2envoy.data.core.v3\SUB\"envoy/config/core/v3/address.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\178\ACK\n\
    \\DLEHealthCheckEvent\DC2_\n\
    \\DC3health_checker_type\CAN\SOH \SOH(\SO2%.envoy.data.core.v3.HealthCheckerTypeR\DC1healthCheckerTypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC21\n\
    \\EOThost\CAN\STX \SOH(\v2\GS.envoy.config.core.v3.AddressR\EOThost\DC2*\n\
    \\fcluster_name\CAN\ETX \SOH(\tR\vclusterNameB\a\250B\EOTr\STX\DLE\SOH\DC2c\n\
    \\NAKeject_unhealthy_event\CAN\EOT \SOH(\v2-.envoy.data.core.v3.HealthCheckEjectUnhealthyH\NULR\DC3ejectUnhealthyEvent\DC2W\n\
    \\DC1add_healthy_event\CAN\ENQ \SOH(\v2).envoy.data.core.v3.HealthCheckAddHealthyH\NULR\SIaddHealthyEvent\DC2e\n\
    \\SUBhealth_check_failure_event\CAN\a \SOH(\v2&.envoy.data.core.v3.HealthCheckFailureH\NULR\ETBhealthCheckFailureEvent\DC2]\n\
    \\NAKdegraded_healthy_host\CAN\b \SOH(\v2'.envoy.data.core.v3.DegradedHealthyHostH\NULR\DC3degradedHealthyHost\DC2a\n\
    \\ETBno_longer_degraded_host\CAN\t \SOH(\v2(.envoy.data.core.v3.NoLongerDegradedHostH\NULR\DC4noLongerDegradedHost\DC28\n\
    \\ttimestamp\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestampB\f\n\
    \\ENQevent\DC2\ETX\248B\SOH:/\154\197\136\RS*\n\
    \(envoy.data.core.v2alpha.HealthCheckEvent\"\174\SOH\n\
    \\EMHealthCheckEjectUnhealthy\DC2W\n\
    \\ffailure_type\CAN\SOH \SOH(\SO2*.envoy.data.core.v3.HealthCheckFailureTypeR\vfailureTypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH:8\154\197\136\RS3\n\
    \1envoy.data.core.v2alpha.HealthCheckEjectUnhealthy\"n\n\
    \\NAKHealthCheckAddHealthy\DC2\US\n\
    \\vfirst_check\CAN\SOH \SOH(\bR\n\
    \firstCheck:4\154\197\136\RS/\n\
    \-envoy.data.core.v2alpha.HealthCheckAddHealthy\"\193\SOH\n\
    \\DC2HealthCheckFailure\DC2W\n\
    \\ffailure_type\CAN\SOH \SOH(\SO2*.envoy.data.core.v3.HealthCheckFailureTypeR\vfailureTypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2\US\n\
    \\vfirst_check\CAN\STX \SOH(\bR\n\
    \firstCheck:1\154\197\136\RS,\n\
    \*envoy.data.core.v2alpha.HealthCheckFailure\"I\n\
    \\DC3DegradedHealthyHost:2\154\197\136\RS-\n\
    \+envoy.data.core.v2alpha.DegradedHealthyHost\"K\n\
    \\DC4NoLongerDegradedHost:3\154\197\136\RS.\n\
    \,envoy.data.core.v2alpha.NoLongerDegradedHost*S\n\
    \\SYNHealthCheckFailureType\DC2\n\
    \\n\
    \\ACKACTIVE\DLE\NUL\DC2\v\n\
    \\aPASSIVE\DLE\SOH\DC2\v\n\
    \\aNETWORK\DLE\STX\DC2\DC3\n\
    \\SINETWORK_TIMEOUT\DLE\ETX*;\n\
    \\DC1HealthCheckerType\DC2\b\n\
    \\EOTHTTP\DLE\NUL\DC2\a\n\
    \\ETXTCP\DLE\SOH\DC2\b\n\
    \\EOTGRPC\DLE\STX\DC2\t\n\
    \\ENQREDIS\DLE\ETXBC\n\
    \ io.envoyproxy.envoy.data.core.v3B\NAKHealthCheckEventProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\196\DC3\n\
    \\ACK\DC2\EOT\NUL\NULi\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL,\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL+\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL9\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NUL9\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL6\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL6\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SO\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SI\NULF\n\
    \\DEL\n\
    \\STX\ENQ\NUL\DC2\EOT\DC4\NUL\EM\SOH2s [#protodoc-title: Health check logging events]\n\
    \ :ref:`Health check logging <arch_overview_health_check_logging>`.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\DC4\ENQ\ESC\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX\NAK\STX\r\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX\NAK\STX\b\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX\NAK\v\f\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX\SYN\STX\SO\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX\SYN\STX\t\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX\SYN\f\r\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX\ETB\STX\SO\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX\ETB\STX\t\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX\ETB\f\r\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETX\CAN\STX\SYN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETX\CAN\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETX\CAN\DC4\NAK\n\
    \\n\
    \\n\
    \\STX\ENQ\SOH\DC2\EOT\ESC\NUL \SOH\n\
    \\n\
    \\n\
    \\ETX\ENQ\SOH\SOH\DC2\ETX\ESC\ENQ\SYN\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\NUL\DC2\ETX\FS\STX\v\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\NUL\SOH\DC2\ETX\FS\STX\ACK\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\NUL\STX\DC2\ETX\FS\t\n\
    \\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\SOH\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\SOH\SOH\DC2\ETX\GS\STX\ENQ\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\SOH\STX\DC2\ETX\GS\b\t\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\STX\DC2\ETX\RS\STX\v\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\STX\SOH\DC2\ETX\RS\STX\ACK\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\STX\STX\DC2\ETX\RS\t\n\
    \\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\ETX\DC2\ETX\US\STX\f\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\ETX\SOH\DC2\ETX\US\STX\a\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\ETX\STX\DC2\ETX\US\n\
    \\v\n\
    \$\n\
    \\STX\EOT\NUL\DC2\EOT#\NULB\SOH\SUB\CAN [#next-free-field: 10]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX#\b\CAN\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT$\STX%1\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT$\STX%1\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX'\STX[\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX'\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX'\DC4'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX'*+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX',Z\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DLE\DC2\ETX'-Y\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX)\STX\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX)\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX)\EM\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX) !\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX+\STXC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX+\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX+\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX+\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX+\SUBB\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\175\b\SO\DC2\ETX+\ESCA\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT-\STX>\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX-\b\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\ETX.\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\ETX.\EOT&\n\
    \\GS\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX1\EOT8\SUB\DLE Host ejection.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX1\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX1\RS3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX167\n\
    \\GS\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX4\EOT0\SUB\DLE Host addition.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX4\EOT\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX4\SUB+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX4./\n\
    \\FS\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX7\EOT6\SUB\SI Host failure.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX7\EOT\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX7\ETB1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX745\n\
    \,\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX:\EOT2\SUB\US Healthy host became degraded.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETX:\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX:\CAN-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX:01\n\
    \9\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX=\EOT5\SUB, A degraded host returned to being healthy.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ACK\DC2\ETX=\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX=\EM0\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX=34\n\
    \#\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETXA\STX*\SUB\SYN Timestamp for event.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ACK\DC2\ETXA\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETXA\FS%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETXA()\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOTD\NULJ\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXD\b!\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOTE\STXF:\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOTE\STXF:\n\
    \=\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXI\STXY\SUB0 The type of failure that caused this ejection.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXI\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXI\EM%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXI()\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETXI*X\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\DLE\DC2\ETXI+W\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOTL\NULT\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXL\b\GS\n\
    \\v\n\
    \\ETX\EOT\STX\a\DC2\EOTM\STXN6\n\
    \\DLE\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\EOTM\STXN6\n\
    \\134\STX\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXS\STX\ETB\SUB\248\SOH Whether this addition is the result of the first ever health check on a host, in which case\n\
    \ the configured :ref:`healthy threshold <envoy_v3_api_field_config.core.v3.HealthCheck.healthy_threshold>`\n\
    \ is bypassed and the host is immediately added.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXS\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXS\a\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXS\NAK\SYN\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOTV\NUL_\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXV\b\SUB\n\
    \\v\n\
    \\ETX\EOT\ETX\a\DC2\EOTW\STXX3\n\
    \\DLE\n\
    \\b\EOT\ETX\a\211\136\225\ETX\SOH\DC2\EOTW\STXX3\n\
    \:\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX[\STXY\SUB- The type of failure that caused this event.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETX[\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX[\EM%\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX[()\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\ETX[*X\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\175\b\DLE\DC2\ETX[+W\n\
    \Y\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX^\STX\ETB\SUBL Whether this event is the result of the first ever health check on a host.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX^\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX^\a\DC2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX^\NAK\SYN\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOTa\NULd\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXa\b\ESC\n\
    \\v\n\
    \\ETX\EOT\EOT\a\DC2\EOTb\STXc4\n\
    \\DLE\n\
    \\b\EOT\EOT\a\211\136\225\ETX\SOH\DC2\EOTb\STXc4\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOTf\NULi\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXf\b\FS\n\
    \\v\n\
    \\ETX\EOT\ENQ\a\DC2\EOTg\STXh5\n\
    \\DLE\n\
    \\b\EOT\ENQ\a\211\136\225\ETX\SOH\DC2\EOTg\STXh5b\ACKproto3"