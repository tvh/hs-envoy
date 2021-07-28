{- This file was auto-generated from envoy/admin/v3/clusters.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Admin.V3.Clusters (
        ClusterStatus(), Clusters(), HostHealthStatus(), HostStatus()
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
import qualified Proto.Envoy.Admin.V3.Metrics
import qualified Proto.Envoy.Config.Cluster.V3.CircuitBreaker
import qualified Proto.Envoy.Config.Core.V3.Address
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Config.Core.V3.HealthCheck
import qualified Proto.Envoy.Type.V3.Percent
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.name' @:: Lens' ClusterStatus Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.addedViaApi' @:: Lens' ClusterStatus Prelude.Bool@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.successRateEjectionThreshold' @:: Lens' ClusterStatus Proto.Envoy.Type.V3.Percent.Percent@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.maybe'successRateEjectionThreshold' @:: Lens' ClusterStatus (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent)@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.hostStatuses' @:: Lens' ClusterStatus [HostStatus]@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.vec'hostStatuses' @:: Lens' ClusterStatus (Data.Vector.Vector HostStatus)@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.localOriginSuccessRateEjectionThreshold' @:: Lens' ClusterStatus Proto.Envoy.Type.V3.Percent.Percent@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.maybe'localOriginSuccessRateEjectionThreshold' @:: Lens' ClusterStatus (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent)@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.circuitBreakers' @:: Lens' ClusterStatus Proto.Envoy.Config.Cluster.V3.CircuitBreaker.CircuitBreakers@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.maybe'circuitBreakers' @:: Lens' ClusterStatus (Prelude.Maybe Proto.Envoy.Config.Cluster.V3.CircuitBreaker.CircuitBreakers)@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.observabilityName' @:: Lens' ClusterStatus Data.Text.Text@ -}
data ClusterStatus
  = ClusterStatus'_constructor {_ClusterStatus'name :: !Data.Text.Text,
                                _ClusterStatus'addedViaApi :: !Prelude.Bool,
                                _ClusterStatus'successRateEjectionThreshold :: !(Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent),
                                _ClusterStatus'hostStatuses :: !(Data.Vector.Vector HostStatus),
                                _ClusterStatus'localOriginSuccessRateEjectionThreshold :: !(Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent),
                                _ClusterStatus'circuitBreakers :: !(Prelude.Maybe Proto.Envoy.Config.Cluster.V3.CircuitBreaker.CircuitBreakers),
                                _ClusterStatus'observabilityName :: !Data.Text.Text,
                                _ClusterStatus'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClusterStatus where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClusterStatus "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterStatus'name (\ x__ y__ -> x__ {_ClusterStatus'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterStatus "addedViaApi" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterStatus'addedViaApi
           (\ x__ y__ -> x__ {_ClusterStatus'addedViaApi = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterStatus "successRateEjectionThreshold" Proto.Envoy.Type.V3.Percent.Percent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterStatus'successRateEjectionThreshold
           (\ x__ y__
              -> x__ {_ClusterStatus'successRateEjectionThreshold = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClusterStatus "maybe'successRateEjectionThreshold" (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterStatus'successRateEjectionThreshold
           (\ x__ y__
              -> x__ {_ClusterStatus'successRateEjectionThreshold = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterStatus "hostStatuses" [HostStatus] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterStatus'hostStatuses
           (\ x__ y__ -> x__ {_ClusterStatus'hostStatuses = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ClusterStatus "vec'hostStatuses" (Data.Vector.Vector HostStatus) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterStatus'hostStatuses
           (\ x__ y__ -> x__ {_ClusterStatus'hostStatuses = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterStatus "localOriginSuccessRateEjectionThreshold" Proto.Envoy.Type.V3.Percent.Percent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterStatus'localOriginSuccessRateEjectionThreshold
           (\ x__ y__
              -> x__
                   {_ClusterStatus'localOriginSuccessRateEjectionThreshold = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClusterStatus "maybe'localOriginSuccessRateEjectionThreshold" (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterStatus'localOriginSuccessRateEjectionThreshold
           (\ x__ y__
              -> x__
                   {_ClusterStatus'localOriginSuccessRateEjectionThreshold = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterStatus "circuitBreakers" Proto.Envoy.Config.Cluster.V3.CircuitBreaker.CircuitBreakers where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterStatus'circuitBreakers
           (\ x__ y__ -> x__ {_ClusterStatus'circuitBreakers = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClusterStatus "maybe'circuitBreakers" (Prelude.Maybe Proto.Envoy.Config.Cluster.V3.CircuitBreaker.CircuitBreakers) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterStatus'circuitBreakers
           (\ x__ y__ -> x__ {_ClusterStatus'circuitBreakers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterStatus "observabilityName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterStatus'observabilityName
           (\ x__ y__ -> x__ {_ClusterStatus'observabilityName = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClusterStatus where
  messageName _ = Data.Text.pack "envoy.admin.v3.ClusterStatus"
  packedMessageDescriptor _
    = "\n\
      \\rClusterStatus\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\"\n\
      \\radded_via_api\CAN\STX \SOH(\bR\vaddedViaApi\DC2]\n\
      \\USsuccess_rate_ejection_threshold\CAN\ETX \SOH(\v2\SYN.envoy.type.v3.PercentR\FSsuccessRateEjectionThreshold\DC2?\n\
      \\rhost_statuses\CAN\EOT \ETX(\v2\SUB.envoy.admin.v3.HostStatusR\fhostStatuses\DC2u\n\
      \,local_origin_success_rate_ejection_threshold\CAN\ENQ \SOH(\v2\SYN.envoy.type.v3.PercentR'localOriginSuccessRateEjectionThreshold\DC2S\n\
      \\DLEcircuit_breakers\CAN\ACK \SOH(\v2(.envoy.config.cluster.v3.CircuitBreakersR\SIcircuitBreakers\DC2-\n\
      \\DC2observability_name\CAN\a \SOH(\tR\DC1observabilityName:(\154\197\136\RS#\n\
      \!envoy.admin.v2alpha.ClusterStatus"
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
              Data.ProtoLens.FieldDescriptor ClusterStatus
        addedViaApi__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "added_via_api"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"addedViaApi")) ::
              Data.ProtoLens.FieldDescriptor ClusterStatus
        successRateEjectionThreshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "success_rate_ejection_threshold"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Percent.Percent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'successRateEjectionThreshold")) ::
              Data.ProtoLens.FieldDescriptor ClusterStatus
        hostStatuses__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "host_statuses"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HostStatus)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"hostStatuses")) ::
              Data.ProtoLens.FieldDescriptor ClusterStatus
        localOriginSuccessRateEjectionThreshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "local_origin_success_rate_ejection_threshold"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Percent.Percent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'localOriginSuccessRateEjectionThreshold")) ::
              Data.ProtoLens.FieldDescriptor ClusterStatus
        circuitBreakers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "circuit_breakers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Cluster.V3.CircuitBreaker.CircuitBreakers)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'circuitBreakers")) ::
              Data.ProtoLens.FieldDescriptor ClusterStatus
        observabilityName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "observability_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"observabilityName")) ::
              Data.ProtoLens.FieldDescriptor ClusterStatus
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, addedViaApi__field_descriptor),
           (Data.ProtoLens.Tag 3, 
            successRateEjectionThreshold__field_descriptor),
           (Data.ProtoLens.Tag 4, hostStatuses__field_descriptor),
           (Data.ProtoLens.Tag 5, 
            localOriginSuccessRateEjectionThreshold__field_descriptor),
           (Data.ProtoLens.Tag 6, circuitBreakers__field_descriptor),
           (Data.ProtoLens.Tag 7, observabilityName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClusterStatus'_unknownFields
        (\ x__ y__ -> x__ {_ClusterStatus'_unknownFields = y__})
  defMessage
    = ClusterStatus'_constructor
        {_ClusterStatus'name = Data.ProtoLens.fieldDefault,
         _ClusterStatus'addedViaApi = Data.ProtoLens.fieldDefault,
         _ClusterStatus'successRateEjectionThreshold = Prelude.Nothing,
         _ClusterStatus'hostStatuses = Data.Vector.Generic.empty,
         _ClusterStatus'localOriginSuccessRateEjectionThreshold = Prelude.Nothing,
         _ClusterStatus'circuitBreakers = Prelude.Nothing,
         _ClusterStatus'observabilityName = Data.ProtoLens.fieldDefault,
         _ClusterStatus'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClusterStatus
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld HostStatus
             -> Data.ProtoLens.Encoding.Bytes.Parser ClusterStatus
        loop x mutable'hostStatuses
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'hostStatuses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'hostStatuses)
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
                              (Data.ProtoLens.Field.field @"vec'hostStatuses")
                              frozen'hostStatuses
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
                                       "name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'hostStatuses
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "added_via_api"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"addedViaApi") y x)
                                  mutable'hostStatuses
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "success_rate_ejection_threshold"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"successRateEjectionThreshold")
                                     y
                                     x)
                                  mutable'hostStatuses
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "host_statuses"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'hostStatuses y)
                                loop x v
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "local_origin_success_rate_ejection_threshold"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"localOriginSuccessRateEjectionThreshold")
                                     y
                                     x)
                                  mutable'hostStatuses
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "circuit_breakers"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"circuitBreakers") y x)
                                  mutable'hostStatuses
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "observability_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"observabilityName") y x)
                                  mutable'hostStatuses
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'hostStatuses
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'hostStatuses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'hostStatuses)
          "ClusterStatus"
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
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"addedViaApi") _x
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
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'successRateEjectionThreshold")
                          _x
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
                                    Data.ProtoLens.encodeMessage
                                    _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'hostStatuses") _x))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field
                                   @"maybe'localOriginSuccessRateEjectionThreshold")
                                _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
                                   (Data.ProtoLens.Field.field @"maybe'circuitBreakers") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
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
                                        (Data.ProtoLens.Field.field @"observabilityName") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
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
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData ClusterStatus where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClusterStatus'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ClusterStatus'name x__)
                (Control.DeepSeq.deepseq
                   (_ClusterStatus'addedViaApi x__)
                   (Control.DeepSeq.deepseq
                      (_ClusterStatus'successRateEjectionThreshold x__)
                      (Control.DeepSeq.deepseq
                         (_ClusterStatus'hostStatuses x__)
                         (Control.DeepSeq.deepseq
                            (_ClusterStatus'localOriginSuccessRateEjectionThreshold x__)
                            (Control.DeepSeq.deepseq
                               (_ClusterStatus'circuitBreakers x__)
                               (Control.DeepSeq.deepseq
                                  (_ClusterStatus'observabilityName x__) ())))))))
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.clusterStatuses' @:: Lens' Clusters [ClusterStatus]@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.vec'clusterStatuses' @:: Lens' Clusters (Data.Vector.Vector ClusterStatus)@ -}
data Clusters
  = Clusters'_constructor {_Clusters'clusterStatuses :: !(Data.Vector.Vector ClusterStatus),
                           _Clusters'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Clusters where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Clusters "clusterStatuses" [ClusterStatus] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Clusters'clusterStatuses
           (\ x__ y__ -> x__ {_Clusters'clusterStatuses = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Clusters "vec'clusterStatuses" (Data.Vector.Vector ClusterStatus) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Clusters'clusterStatuses
           (\ x__ y__ -> x__ {_Clusters'clusterStatuses = y__}))
        Prelude.id
instance Data.ProtoLens.Message Clusters where
  messageName _ = Data.Text.pack "envoy.admin.v3.Clusters"
  packedMessageDescriptor _
    = "\n\
      \\bClusters\DC2H\n\
      \\DLEcluster_statuses\CAN\SOH \ETX(\v2\GS.envoy.admin.v3.ClusterStatusR\SIclusterStatuses:#\154\197\136\RS\RS\n\
      \\FSenvoy.admin.v2alpha.Clusters"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        clusterStatuses__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster_statuses"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ClusterStatus)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"clusterStatuses")) ::
              Data.ProtoLens.FieldDescriptor Clusters
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, clusterStatuses__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Clusters'_unknownFields
        (\ x__ y__ -> x__ {_Clusters'_unknownFields = y__})
  defMessage
    = Clusters'_constructor
        {_Clusters'clusterStatuses = Data.Vector.Generic.empty,
         _Clusters'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Clusters
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ClusterStatus
             -> Data.ProtoLens.Encoding.Bytes.Parser Clusters
        loop x mutable'clusterStatuses
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'clusterStatuses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'clusterStatuses)
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
                              (Data.ProtoLens.Field.field @"vec'clusterStatuses")
                              frozen'clusterStatuses
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
                                        "cluster_statuses"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'clusterStatuses y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'clusterStatuses
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'clusterStatuses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'clusterStatuses)
          "Clusters"
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
                   (Data.ProtoLens.Field.field @"vec'clusterStatuses") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Clusters where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Clusters'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Clusters'clusterStatuses x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.failedActiveHealthCheck' @:: Lens' HostHealthStatus Prelude.Bool@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.failedOutlierCheck' @:: Lens' HostHealthStatus Prelude.Bool@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.failedActiveDegradedCheck' @:: Lens' HostHealthStatus Prelude.Bool@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.pendingDynamicRemoval' @:: Lens' HostHealthStatus Prelude.Bool@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.pendingActiveHc' @:: Lens' HostHealthStatus Prelude.Bool@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.excludedViaImmediateHcFail' @:: Lens' HostHealthStatus Prelude.Bool@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.activeHcTimeout' @:: Lens' HostHealthStatus Prelude.Bool@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.edsHealthStatus' @:: Lens' HostHealthStatus Proto.Envoy.Config.Core.V3.HealthCheck.HealthStatus@ -}
data HostHealthStatus
  = HostHealthStatus'_constructor {_HostHealthStatus'failedActiveHealthCheck :: !Prelude.Bool,
                                   _HostHealthStatus'failedOutlierCheck :: !Prelude.Bool,
                                   _HostHealthStatus'failedActiveDegradedCheck :: !Prelude.Bool,
                                   _HostHealthStatus'pendingDynamicRemoval :: !Prelude.Bool,
                                   _HostHealthStatus'pendingActiveHc :: !Prelude.Bool,
                                   _HostHealthStatus'excludedViaImmediateHcFail :: !Prelude.Bool,
                                   _HostHealthStatus'activeHcTimeout :: !Prelude.Bool,
                                   _HostHealthStatus'edsHealthStatus :: !Proto.Envoy.Config.Core.V3.HealthCheck.HealthStatus,
                                   _HostHealthStatus'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HostHealthStatus where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HostHealthStatus "failedActiveHealthCheck" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostHealthStatus'failedActiveHealthCheck
           (\ x__ y__
              -> x__ {_HostHealthStatus'failedActiveHealthCheck = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostHealthStatus "failedOutlierCheck" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostHealthStatus'failedOutlierCheck
           (\ x__ y__ -> x__ {_HostHealthStatus'failedOutlierCheck = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostHealthStatus "failedActiveDegradedCheck" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostHealthStatus'failedActiveDegradedCheck
           (\ x__ y__
              -> x__ {_HostHealthStatus'failedActiveDegradedCheck = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostHealthStatus "pendingDynamicRemoval" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostHealthStatus'pendingDynamicRemoval
           (\ x__ y__ -> x__ {_HostHealthStatus'pendingDynamicRemoval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostHealthStatus "pendingActiveHc" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostHealthStatus'pendingActiveHc
           (\ x__ y__ -> x__ {_HostHealthStatus'pendingActiveHc = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostHealthStatus "excludedViaImmediateHcFail" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostHealthStatus'excludedViaImmediateHcFail
           (\ x__ y__
              -> x__ {_HostHealthStatus'excludedViaImmediateHcFail = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostHealthStatus "activeHcTimeout" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostHealthStatus'activeHcTimeout
           (\ x__ y__ -> x__ {_HostHealthStatus'activeHcTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostHealthStatus "edsHealthStatus" Proto.Envoy.Config.Core.V3.HealthCheck.HealthStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostHealthStatus'edsHealthStatus
           (\ x__ y__ -> x__ {_HostHealthStatus'edsHealthStatus = y__}))
        Prelude.id
instance Data.ProtoLens.Message HostHealthStatus where
  messageName _ = Data.Text.pack "envoy.admin.v3.HostHealthStatus"
  packedMessageDescriptor _
    = "\n\
      \\DLEHostHealthStatus\DC2;\n\
      \\SUBfailed_active_health_check\CAN\SOH \SOH(\bR\ETBfailedActiveHealthCheck\DC20\n\
      \\DC4failed_outlier_check\CAN\STX \SOH(\bR\DC2failedOutlierCheck\DC2?\n\
      \\FSfailed_active_degraded_check\CAN\EOT \SOH(\bR\EMfailedActiveDegradedCheck\DC26\n\
      \\ETBpending_dynamic_removal\CAN\ENQ \SOH(\bR\NAKpendingDynamicRemoval\DC2*\n\
      \\DC1pending_active_hc\CAN\ACK \SOH(\bR\SIpendingActiveHc\DC2B\n\
      \\RSexcluded_via_immediate_hc_fail\CAN\a \SOH(\bR\SUBexcludedViaImmediateHcFail\DC2*\n\
      \\DC1active_hc_timeout\CAN\b \SOH(\bR\SIactiveHcTimeout\DC2N\n\
      \\DC1eds_health_status\CAN\ETX \SOH(\SO2\".envoy.config.core.v3.HealthStatusR\SIedsHealthStatus:+\154\197\136\RS&\n\
      \$envoy.admin.v2alpha.HostHealthStatus"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        failedActiveHealthCheck__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failed_active_health_check"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"failedActiveHealthCheck")) ::
              Data.ProtoLens.FieldDescriptor HostHealthStatus
        failedOutlierCheck__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failed_outlier_check"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"failedOutlierCheck")) ::
              Data.ProtoLens.FieldDescriptor HostHealthStatus
        failedActiveDegradedCheck__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failed_active_degraded_check"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"failedActiveDegradedCheck")) ::
              Data.ProtoLens.FieldDescriptor HostHealthStatus
        pendingDynamicRemoval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pending_dynamic_removal"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"pendingDynamicRemoval")) ::
              Data.ProtoLens.FieldDescriptor HostHealthStatus
        pendingActiveHc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pending_active_hc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"pendingActiveHc")) ::
              Data.ProtoLens.FieldDescriptor HostHealthStatus
        excludedViaImmediateHcFail__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "excluded_via_immediate_hc_fail"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"excludedViaImmediateHcFail")) ::
              Data.ProtoLens.FieldDescriptor HostHealthStatus
        activeHcTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "active_hc_timeout"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"activeHcTimeout")) ::
              Data.ProtoLens.FieldDescriptor HostHealthStatus
        edsHealthStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "eds_health_status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.HealthCheck.HealthStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"edsHealthStatus")) ::
              Data.ProtoLens.FieldDescriptor HostHealthStatus
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, failedActiveHealthCheck__field_descriptor),
           (Data.ProtoLens.Tag 2, failedOutlierCheck__field_descriptor),
           (Data.ProtoLens.Tag 4, 
            failedActiveDegradedCheck__field_descriptor),
           (Data.ProtoLens.Tag 5, pendingDynamicRemoval__field_descriptor),
           (Data.ProtoLens.Tag 6, pendingActiveHc__field_descriptor),
           (Data.ProtoLens.Tag 7, 
            excludedViaImmediateHcFail__field_descriptor),
           (Data.ProtoLens.Tag 8, activeHcTimeout__field_descriptor),
           (Data.ProtoLens.Tag 3, edsHealthStatus__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HostHealthStatus'_unknownFields
        (\ x__ y__ -> x__ {_HostHealthStatus'_unknownFields = y__})
  defMessage
    = HostHealthStatus'_constructor
        {_HostHealthStatus'failedActiveHealthCheck = Data.ProtoLens.fieldDefault,
         _HostHealthStatus'failedOutlierCheck = Data.ProtoLens.fieldDefault,
         _HostHealthStatus'failedActiveDegradedCheck = Data.ProtoLens.fieldDefault,
         _HostHealthStatus'pendingDynamicRemoval = Data.ProtoLens.fieldDefault,
         _HostHealthStatus'pendingActiveHc = Data.ProtoLens.fieldDefault,
         _HostHealthStatus'excludedViaImmediateHcFail = Data.ProtoLens.fieldDefault,
         _HostHealthStatus'activeHcTimeout = Data.ProtoLens.fieldDefault,
         _HostHealthStatus'edsHealthStatus = Data.ProtoLens.fieldDefault,
         _HostHealthStatus'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HostHealthStatus
          -> Data.ProtoLens.Encoding.Bytes.Parser HostHealthStatus
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
                                       "failed_active_health_check"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"failedActiveHealthCheck") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "failed_outlier_check"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"failedOutlierCheck") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "failed_active_degraded_check"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"failedActiveDegradedCheck") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pending_dynamic_removal"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"pendingDynamicRemoval") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pending_active_hc"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"pendingActiveHc") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "excluded_via_immediate_hc_fail"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"excludedViaImmediateHcFail") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "active_hc_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"activeHcTimeout") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "eds_health_status"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"edsHealthStatus") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HostHealthStatus"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"failedActiveHealthCheck") _x
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
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"failedOutlierCheck") _x
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
                            (Data.ProtoLens.Field.field @"failedActiveDegradedCheck") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt
                               (\ b -> if b then 1 else 0)
                               _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"pendingDynamicRemoval") _x
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
                                  (Data.ProtoLens.Field.field @"pendingActiveHc") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (\ b -> if b then 1 else 0)
                                     _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"excludedViaImmediateHcFail") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (\ b -> if b then 1 else 0)
                                        _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"activeHcTimeout") _x
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
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"edsHealthStatus") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                                           ((Prelude..)
                                              ((Prelude..)
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 Prelude.fromIntegral)
                                              Prelude.fromEnum
                                              _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData HostHealthStatus where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HostHealthStatus'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HostHealthStatus'failedActiveHealthCheck x__)
                (Control.DeepSeq.deepseq
                   (_HostHealthStatus'failedOutlierCheck x__)
                   (Control.DeepSeq.deepseq
                      (_HostHealthStatus'failedActiveDegradedCheck x__)
                      (Control.DeepSeq.deepseq
                         (_HostHealthStatus'pendingDynamicRemoval x__)
                         (Control.DeepSeq.deepseq
                            (_HostHealthStatus'pendingActiveHc x__)
                            (Control.DeepSeq.deepseq
                               (_HostHealthStatus'excludedViaImmediateHcFail x__)
                               (Control.DeepSeq.deepseq
                                  (_HostHealthStatus'activeHcTimeout x__)
                                  (Control.DeepSeq.deepseq
                                     (_HostHealthStatus'edsHealthStatus x__) ()))))))))
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.address' @:: Lens' HostStatus Proto.Envoy.Config.Core.V3.Address.Address@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.maybe'address' @:: Lens' HostStatus (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address)@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.stats' @:: Lens' HostStatus [Proto.Envoy.Admin.V3.Metrics.SimpleMetric]@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.vec'stats' @:: Lens' HostStatus (Data.Vector.Vector Proto.Envoy.Admin.V3.Metrics.SimpleMetric)@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.healthStatus' @:: Lens' HostStatus HostHealthStatus@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.maybe'healthStatus' @:: Lens' HostStatus (Prelude.Maybe HostHealthStatus)@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.successRate' @:: Lens' HostStatus Proto.Envoy.Type.V3.Percent.Percent@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.maybe'successRate' @:: Lens' HostStatus (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent)@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.weight' @:: Lens' HostStatus Data.Word.Word32@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.hostname' @:: Lens' HostStatus Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.priority' @:: Lens' HostStatus Data.Word.Word32@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.localOriginSuccessRate' @:: Lens' HostStatus Proto.Envoy.Type.V3.Percent.Percent@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.maybe'localOriginSuccessRate' @:: Lens' HostStatus (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent)@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.locality' @:: Lens' HostStatus Proto.Envoy.Config.Core.V3.Base.Locality@
         * 'Proto.Envoy.Admin.V3.Clusters_Fields.maybe'locality' @:: Lens' HostStatus (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Locality)@ -}
data HostStatus
  = HostStatus'_constructor {_HostStatus'address :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address),
                             _HostStatus'stats :: !(Data.Vector.Vector Proto.Envoy.Admin.V3.Metrics.SimpleMetric),
                             _HostStatus'healthStatus :: !(Prelude.Maybe HostHealthStatus),
                             _HostStatus'successRate :: !(Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent),
                             _HostStatus'weight :: !Data.Word.Word32,
                             _HostStatus'hostname :: !Data.Text.Text,
                             _HostStatus'priority :: !Data.Word.Word32,
                             _HostStatus'localOriginSuccessRate :: !(Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent),
                             _HostStatus'locality :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Locality),
                             _HostStatus'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HostStatus where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HostStatus "address" Proto.Envoy.Config.Core.V3.Address.Address where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostStatus'address (\ x__ y__ -> x__ {_HostStatus'address = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HostStatus "maybe'address" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostStatus'address (\ x__ y__ -> x__ {_HostStatus'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostStatus "stats" [Proto.Envoy.Admin.V3.Metrics.SimpleMetric] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostStatus'stats (\ x__ y__ -> x__ {_HostStatus'stats = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HostStatus "vec'stats" (Data.Vector.Vector Proto.Envoy.Admin.V3.Metrics.SimpleMetric) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostStatus'stats (\ x__ y__ -> x__ {_HostStatus'stats = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostStatus "healthStatus" HostHealthStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostStatus'healthStatus
           (\ x__ y__ -> x__ {_HostStatus'healthStatus = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HostStatus "maybe'healthStatus" (Prelude.Maybe HostHealthStatus) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostStatus'healthStatus
           (\ x__ y__ -> x__ {_HostStatus'healthStatus = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostStatus "successRate" Proto.Envoy.Type.V3.Percent.Percent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostStatus'successRate
           (\ x__ y__ -> x__ {_HostStatus'successRate = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HostStatus "maybe'successRate" (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostStatus'successRate
           (\ x__ y__ -> x__ {_HostStatus'successRate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostStatus "weight" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostStatus'weight (\ x__ y__ -> x__ {_HostStatus'weight = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostStatus "hostname" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostStatus'hostname
           (\ x__ y__ -> x__ {_HostStatus'hostname = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostStatus "priority" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostStatus'priority
           (\ x__ y__ -> x__ {_HostStatus'priority = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostStatus "localOriginSuccessRate" Proto.Envoy.Type.V3.Percent.Percent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostStatus'localOriginSuccessRate
           (\ x__ y__ -> x__ {_HostStatus'localOriginSuccessRate = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HostStatus "maybe'localOriginSuccessRate" (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostStatus'localOriginSuccessRate
           (\ x__ y__ -> x__ {_HostStatus'localOriginSuccessRate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostStatus "locality" Proto.Envoy.Config.Core.V3.Base.Locality where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostStatus'locality
           (\ x__ y__ -> x__ {_HostStatus'locality = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HostStatus "maybe'locality" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Locality) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostStatus'locality
           (\ x__ y__ -> x__ {_HostStatus'locality = y__}))
        Prelude.id
instance Data.ProtoLens.Message HostStatus where
  messageName _ = Data.Text.pack "envoy.admin.v3.HostStatus"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \HostStatus\DC27\n\
      \\aaddress\CAN\SOH \SOH(\v2\GS.envoy.config.core.v3.AddressR\aaddress\DC22\n\
      \\ENQstats\CAN\STX \ETX(\v2\FS.envoy.admin.v3.SimpleMetricR\ENQstats\DC2E\n\
      \\rhealth_status\CAN\ETX \SOH(\v2 .envoy.admin.v3.HostHealthStatusR\fhealthStatus\DC29\n\
      \\fsuccess_rate\CAN\EOT \SOH(\v2\SYN.envoy.type.v3.PercentR\vsuccessRate\DC2\SYN\n\
      \\ACKweight\CAN\ENQ \SOH(\rR\ACKweight\DC2\SUB\n\
      \\bhostname\CAN\ACK \SOH(\tR\bhostname\DC2\SUB\n\
      \\bpriority\CAN\a \SOH(\rR\bpriority\DC2Q\n\
      \\EMlocal_origin_success_rate\CAN\b \SOH(\v2\SYN.envoy.type.v3.PercentR\SYNlocalOriginSuccessRate\DC2:\n\
      \\blocality\CAN\t \SOH(\v2\RS.envoy.config.core.v3.LocalityR\blocality:%\154\197\136\RS \n\
      \\RSenvoy.admin.v2alpha.HostStatus"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.Address)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'address")) ::
              Data.ProtoLens.FieldDescriptor HostStatus
        stats__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stats"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Admin.V3.Metrics.SimpleMetric)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"stats")) ::
              Data.ProtoLens.FieldDescriptor HostStatus
        healthStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "health_status"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HostHealthStatus)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'healthStatus")) ::
              Data.ProtoLens.FieldDescriptor HostStatus
        successRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "success_rate"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Percent.Percent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'successRate")) ::
              Data.ProtoLens.FieldDescriptor HostStatus
        weight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "weight"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"weight")) ::
              Data.ProtoLens.FieldDescriptor HostStatus
        hostname__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hostname"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"hostname")) ::
              Data.ProtoLens.FieldDescriptor HostStatus
        priority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "priority"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"priority")) ::
              Data.ProtoLens.FieldDescriptor HostStatus
        localOriginSuccessRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "local_origin_success_rate"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Percent.Percent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'localOriginSuccessRate")) ::
              Data.ProtoLens.FieldDescriptor HostStatus
        locality__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "locality"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.Locality)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'locality")) ::
              Data.ProtoLens.FieldDescriptor HostStatus
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, stats__field_descriptor),
           (Data.ProtoLens.Tag 3, healthStatus__field_descriptor),
           (Data.ProtoLens.Tag 4, successRate__field_descriptor),
           (Data.ProtoLens.Tag 5, weight__field_descriptor),
           (Data.ProtoLens.Tag 6, hostname__field_descriptor),
           (Data.ProtoLens.Tag 7, priority__field_descriptor),
           (Data.ProtoLens.Tag 8, localOriginSuccessRate__field_descriptor),
           (Data.ProtoLens.Tag 9, locality__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HostStatus'_unknownFields
        (\ x__ y__ -> x__ {_HostStatus'_unknownFields = y__})
  defMessage
    = HostStatus'_constructor
        {_HostStatus'address = Prelude.Nothing,
         _HostStatus'stats = Data.Vector.Generic.empty,
         _HostStatus'healthStatus = Prelude.Nothing,
         _HostStatus'successRate = Prelude.Nothing,
         _HostStatus'weight = Data.ProtoLens.fieldDefault,
         _HostStatus'hostname = Data.ProtoLens.fieldDefault,
         _HostStatus'priority = Data.ProtoLens.fieldDefault,
         _HostStatus'localOriginSuccessRate = Prelude.Nothing,
         _HostStatus'locality = Prelude.Nothing,
         _HostStatus'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HostStatus
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Admin.V3.Metrics.SimpleMetric
             -> Data.ProtoLens.Encoding.Bytes.Parser HostStatus
        loop x mutable'stats
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'stats <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'stats)
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
                              (Data.ProtoLens.Field.field @"vec'stats") frozen'stats x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
                                  mutable'stats
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "stats"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'stats y)
                                loop x v
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "health_status"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"healthStatus") y x)
                                  mutable'stats
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "success_rate"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"successRate") y x)
                                  mutable'stats
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "weight"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"weight") y x)
                                  mutable'stats
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
                                       "hostname"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"hostname") y x)
                                  mutable'stats
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "priority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"priority") y x)
                                  mutable'stats
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "local_origin_success_rate"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"localOriginSuccessRate") y x)
                                  mutable'stats
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "locality"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"locality") y x)
                                  mutable'stats
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'stats
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'stats <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'stats)
          "HostStatus"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'address") _x
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'stats") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'healthStatus") _x
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
                             (Data.ProtoLens.Field.field @"maybe'successRate") _x
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
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"weight") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                     Prelude.fromIntegral
                                     _v))
                         ((Data.Monoid.<>)
                            (let
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"hostname") _x
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
                                  _v = Lens.Family2.view (Data.ProtoLens.Field.field @"priority") _x
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
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field
                                            @"maybe'localOriginSuccessRate")
                                         _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
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
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'locality") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
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
                                                  _v))
                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                        (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))))
instance Control.DeepSeq.NFData HostStatus where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HostStatus'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HostStatus'address x__)
                (Control.DeepSeq.deepseq
                   (_HostStatus'stats x__)
                   (Control.DeepSeq.deepseq
                      (_HostStatus'healthStatus x__)
                      (Control.DeepSeq.deepseq
                         (_HostStatus'successRate x__)
                         (Control.DeepSeq.deepseq
                            (_HostStatus'weight x__)
                            (Control.DeepSeq.deepseq
                               (_HostStatus'hostname x__)
                               (Control.DeepSeq.deepseq
                                  (_HostStatus'priority x__)
                                  (Control.DeepSeq.deepseq
                                     (_HostStatus'localOriginSuccessRate x__)
                                     (Control.DeepSeq.deepseq (_HostStatus'locality x__) ())))))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\GSenvoy/admin/v3/clusters.proto\DC2\SOenvoy.admin.v3\SUB\FSenvoy/admin/v3/metrics.proto\SUB-envoy/config/cluster/v3/circuit_breaker.proto\SUB\"envoy/config/core/v3/address.proto\SUB\USenvoy/config/core/v3/base.proto\SUB'envoy/config/core/v3/health_check.proto\SUB\ESCenvoy/type/v3/percent.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"y\n\
    \\bClusters\DC2H\n\
    \\DLEcluster_statuses\CAN\SOH \ETX(\v2\GS.envoy.admin.v3.ClusterStatusR\SIclusterStatuses:#\154\197\136\RS\RS\n\
    \\FSenvoy.admin.v2alpha.Clusters\"\140\EOT\n\
    \\rClusterStatus\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\"\n\
    \\radded_via_api\CAN\STX \SOH(\bR\vaddedViaApi\DC2]\n\
    \\USsuccess_rate_ejection_threshold\CAN\ETX \SOH(\v2\SYN.envoy.type.v3.PercentR\FSsuccessRateEjectionThreshold\DC2?\n\
    \\rhost_statuses\CAN\EOT \ETX(\v2\SUB.envoy.admin.v3.HostStatusR\fhostStatuses\DC2u\n\
    \,local_origin_success_rate_ejection_threshold\CAN\ENQ \SOH(\v2\SYN.envoy.type.v3.PercentR'localOriginSuccessRateEjectionThreshold\DC2S\n\
    \\DLEcircuit_breakers\CAN\ACK \SOH(\v2(.envoy.config.cluster.v3.CircuitBreakersR\SIcircuitBreakers\DC2-\n\
    \\DC2observability_name\CAN\a \SOH(\tR\DC1observabilityName:(\154\197\136\RS#\n\
    \!envoy.admin.v2alpha.ClusterStatus\"\129\EOT\n\
    \\n\
    \HostStatus\DC27\n\
    \\aaddress\CAN\SOH \SOH(\v2\GS.envoy.config.core.v3.AddressR\aaddress\DC22\n\
    \\ENQstats\CAN\STX \ETX(\v2\FS.envoy.admin.v3.SimpleMetricR\ENQstats\DC2E\n\
    \\rhealth_status\CAN\ETX \SOH(\v2 .envoy.admin.v3.HostHealthStatusR\fhealthStatus\DC29\n\
    \\fsuccess_rate\CAN\EOT \SOH(\v2\SYN.envoy.type.v3.PercentR\vsuccessRate\DC2\SYN\n\
    \\ACKweight\CAN\ENQ \SOH(\rR\ACKweight\DC2\SUB\n\
    \\bhostname\CAN\ACK \SOH(\tR\bhostname\DC2\SUB\n\
    \\bpriority\CAN\a \SOH(\rR\bpriority\DC2Q\n\
    \\EMlocal_origin_success_rate\CAN\b \SOH(\v2\SYN.envoy.type.v3.PercentR\SYNlocalOriginSuccessRate\DC2:\n\
    \\blocality\CAN\t \SOH(\v2\RS.envoy.config.core.v3.LocalityR\blocality:%\154\197\136\RS \n\
    \\RSenvoy.admin.v2alpha.HostStatus\"\147\EOT\n\
    \\DLEHostHealthStatus\DC2;\n\
    \\SUBfailed_active_health_check\CAN\SOH \SOH(\bR\ETBfailedActiveHealthCheck\DC20\n\
    \\DC4failed_outlier_check\CAN\STX \SOH(\bR\DC2failedOutlierCheck\DC2?\n\
    \\FSfailed_active_degraded_check\CAN\EOT \SOH(\bR\EMfailedActiveDegradedCheck\DC26\n\
    \\ETBpending_dynamic_removal\CAN\ENQ \SOH(\bR\NAKpendingDynamicRemoval\DC2*\n\
    \\DC1pending_active_hc\CAN\ACK \SOH(\bR\SIpendingActiveHc\DC2B\n\
    \\RSexcluded_via_immediate_hc_fail\CAN\a \SOH(\bR\SUBexcludedViaImmediateHcFail\DC2*\n\
    \\DC1active_hc_timeout\CAN\b \SOH(\bR\SIactiveHcTimeout\DC2N\n\
    \\DC1eds_health_status\CAN\ETX \SOH(\SO2\".envoy.config.core.v3.HealthStatusR\SIedsHealthStatus:+\154\197\136\RS&\n\
    \$envoy.admin.v2alpha.HostHealthStatusB7\n\
    \\FSio.envoyproxy.envoy.admin.v3B\rClustersProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\227\&8\n\
    \\a\DC2\ENQ\NUL\NUL\176\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\ETB\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL&\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL7\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL,\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL)\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\b\NUL1\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\t\NUL%\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\v\NUL'\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\f\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL5\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\SO\NUL5\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL.\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SI\NUL.\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DLE\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC1\NULF\n\
    \\215\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\ETB\NUL\FS\SOH\SUB\171\SOH Admin endpoint uses this wrapper for `/clusters` to display cluster status information.\n\
    \ See :ref:`/clusters <operations_admin_interface_clusters>` for more information.\n\
    \2\GS [#protodoc-title: Clusters]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ETB\b\DLE\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\CAN\STX^\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\CAN\STX^\n\
    \B\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ESC\STX.\SUB5 Mapping from cluster name to each cluster's status.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\ESC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\ESC\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ESC\EM)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ESC,-\n\
    \T\n\
    \\STX\EOT\SOH\DC2\EOT \NULU\SOH\SUBH Details an individual cluster's current status.\n\
    \ [#next-free-field: 8]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX \b\NAK\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX!\STXc\n\
    \\SI\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\ETX!\STXc\n\
    \#\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX$\STX\DC2\SUB\SYN Name of the cluster.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX$\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX$\t\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX$\DLE\DC1\n\
    \W\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX'\STX\EM\SUBJ Denotes whether this cluster was added via API or configured statically.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX'\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX'\a\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX'\ETB\CAN\n\
    \\195\b\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX:\STX6\SUB\181\b The success rate threshold used in the last interval.\n\
    \ If\n\
    \ :ref:`outlier_detection.split_external_local_origin_errors<envoy_v3_api_field_config.cluster.v3.OutlierDetection.split_external_local_origin_errors>`\n\
    \ is *false*, all errors: externally and locally generated were used to calculate the threshold.\n\
    \ If\n\
    \ :ref:`outlier_detection.split_external_local_origin_errors<envoy_v3_api_field_config.cluster.v3.OutlierDetection.split_external_local_origin_errors>`\n\
    \ is *true*, only externally generated errors were used to calculate the threshold.\n\
    \ The threshold is used to eject hosts based on their success rate. See\n\
    \ :ref:`Cluster outlier detection <arch_overview_outlier_detection>` documentation for details.\n\
    \\n\
    \ Note: this field may be omitted in any of the three following cases:\n\
    \\n\
    \ 1. There were not enough hosts with enough request volume to proceed with success rate based\n\
    \    outlier ejection.\n\
    \ 2. The threshold is computed to be < 0 because a negative value implies that there was no\n\
    \    threshold for that interval.\n\
    \ 3. Outlier detection is not enabled for this cluster.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX:\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX:\DC21\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX:45\n\
    \F\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX=\STX(\SUB9 Mapping from host address to the host's current status.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX=\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\ETX=\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX=\SYN#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX=&'\n\
    \\161\a\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETXN\STXC\SUB\147\a The success rate threshold used in the last interval when only locally originated failures were\n\
    \ taken into account and externally originated errors were treated as success.\n\
    \ This field should be interpreted only when\n\
    \ :ref:`outlier_detection.split_external_local_origin_errors<envoy_v3_api_field_config.cluster.v3.OutlierDetection.split_external_local_origin_errors>`\n\
    \ is *true*. The threshold is used to eject hosts based on their success rate.\n\
    \ See :ref:`Cluster outlier detection <arch_overview_outlier_detection>` documentation for\n\
    \ details.\n\
    \\n\
    \ Note: this field may be omitted in any of the three following cases:\n\
    \\n\
    \ 1. There were not enough hosts with enough request volume to proceed with success rate based\n\
    \    outlier ejection.\n\
    \ 2. The threshold is computed to be < 0 because a negative value implies that there was no\n\
    \    threshold for that interval.\n\
    \ 3. Outlier detection is not enabled for this cluster.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ACK\DC2\ETXN\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETXN\DC2>\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETXNAB\n\
    \]\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETXQ\STX9\SUBP :ref:`Circuit breaking <arch_overview_circuit_break>` settings of the cluster.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ACK\DC2\ETXQ\STX#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETXQ$4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETXQ78\n\
    \1\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETXT\STX \SUB$ Observability name of the cluster.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ENQ\DC2\ETXT\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETXT\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETXT\RS\US\n\
    \J\n\
    \\STX\EOT\STX\DC2\ENQY\NUL\141\SOH\SOH\SUB= Current state of a particular host.\n\
    \ [#next-free-field: 10]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXY\b\DC2\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXZ\STX`\n\
    \\SI\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\ETXZ\STX`\n\
    \$\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX]\STX%\SUB\ETB Address of this host.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX]\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX]\EM \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX]#$\n\
    \3\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX`\STX\"\SUB& List of stats specific to this host.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX`\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX`\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX`\CAN\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX` !\n\
    \0\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETXc\STX%\SUB# The host's current health status.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETXc\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETXc\DC3 \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETXc#$\n\
    \\234\ACK\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETXr\STX#\SUB\220\ACK Request success rate for this host over the last calculated interval.\n\
    \ If\n\
    \ :ref:`outlier_detection.split_external_local_origin_errors<envoy_v3_api_field_config.cluster.v3.OutlierDetection.split_external_local_origin_errors>`\n\
    \ is *false*, all errors: externally and locally generated were used in success rate\n\
    \ calculation. If\n\
    \ :ref:`outlier_detection.split_external_local_origin_errors<envoy_v3_api_field_config.cluster.v3.OutlierDetection.split_external_local_origin_errors>`\n\
    \ is *true*, only externally generated errors were used in success rate calculation.\n\
    \ See :ref:`Cluster outlier detection <arch_overview_outlier_detection>` documentation for\n\
    \ details.\n\
    \\n\
    \ Note: the message will not be present if host did not have enough request volume to calculate\n\
    \ success rate or the cluster did not have enough hosts to run through success rate outlier\n\
    \ ejection.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\ETXr\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETXr\DC2\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETXr!\"\n\
    \M\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETXu\STX\DC4\SUB@ The host's weight. If not configured, the value defaults to 1.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ENQ\DC2\ETXu\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETXu\t\SI\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETXu\DC2\DC3\n\
    \7\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\ETXx\STX\SYN\SUB* The hostname of the host, if applicable.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ENQ\DC2\ETXx\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\ETXx\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\ETXx\DC4\NAK\n\
    \b\n\
    \\EOT\EOT\STX\STX\ACK\DC2\ETX{\STX\SYN\SUBU The host's priority. If not configured, the value defaults to 0 (highest priority).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ENQ\DC2\ETX{\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\SOH\DC2\ETX{\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ETX\DC2\ETX{\DC4\NAK\n\
    \\197\ENQ\n\
    \\EOT\EOT\STX\STX\a\DC2\EOT\137\SOH\STX0\SUB\182\ENQ Request success rate for this host over the last calculated\n\
    \ interval when only locally originated errors are taken into account and externally originated\n\
    \ errors were treated as success.\n\
    \ This field should be interpreted only when\n\
    \ :ref:`outlier_detection.split_external_local_origin_errors<envoy_v3_api_field_config.cluster.v3.OutlierDetection.split_external_local_origin_errors>`\n\
    \ is *true*.\n\
    \ See :ref:`Cluster outlier detection <arch_overview_outlier_detection>` documentation for\n\
    \ details.\n\
    \\n\
    \ Note: the message will not be present if host did not have enough request volume to calculate\n\
    \ success rate or the cluster did not have enough hosts to run through success rate outlier\n\
    \ ejection.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\a\ACK\DC2\EOT\137\SOH\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\a\SOH\DC2\EOT\137\SOH\DC2+\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\a\ETX\DC2\EOT\137\SOH./\n\
    \%\n\
    \\EOT\EOT\STX\STX\b\DC2\EOT\140\SOH\STX'\SUB\ETB locality of the host.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\b\ACK\DC2\EOT\140\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\b\SOH\DC2\EOT\140\SOH\SUB\"\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\b\ETX\DC2\EOT\140\SOH%&\n\
    \@\n\
    \\STX\EOT\ETX\DC2\ACK\145\SOH\NUL\176\SOH\SOH\SUB2 Health status for a host.\n\
    \ [#next-free-field: 9]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\145\SOH\b\CAN\n\
    \\r\n\
    \\ETX\EOT\ETX\a\DC2\ACK\146\SOH\STX\147\SOH-\n\
    \\DC2\n\
    \\b\EOT\ETX\a\211\136\225\ETX\SOH\DC2\ACK\146\SOH\STX\147\SOH-\n\
    \C\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\150\SOH\STX&\SUB5 The host is currently failing active health checks.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\EOT\150\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\150\SOH\a!\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\150\SOH$%\n\
    \Q\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT\153\SOH\STX \SUBC The host is currently considered an outlier and has been ejected.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\EOT\153\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\EOT\153\SOH\a\ESC\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\EOT\153\SOH\RS\US\n\
    \^\n\
    \\EOT\EOT\ETX\STX\STX\DC2\EOT\156\SOH\STX(\SUBP The host is currently being marked as degraded through active health checking.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\EOT\156\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\EOT\156\SOH\a#\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\EOT\156\SOH&'\n\
    \y\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\EOT\160\SOH\STX#\SUBk The host has been removed from service discovery, but is being stabilized due to active\n\
    \ health checking.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\EOT\160\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\EOT\160\SOH\a\RS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\EOT\160\SOH!\"\n\
    \9\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\EOT\163\SOH\STX\GS\SUB+ The host has not yet been health checked.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\ENQ\DC2\EOT\163\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\EOT\163\SOH\a\CAN\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\EOT\163\SOH\ESC\FS\n\
    \\188\SOH\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\EOT\167\SOH\STX*\SUB\173\SOH The host should be excluded from panic, spillover, etc. calculations because it was explicitly\n\
    \ taken out of rotation via protocol signal and is not meant to be routed to.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ENQ\ENQ\DC2\EOT\167\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\EOT\167\SOH\a%\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\EOT\167\SOH()\n\
    \9\n\
    \\EOT\EOT\ETX\STX\ACK\DC2\EOT\170\SOH\STX\GS\SUB+ The host failed active HC due to timeout.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ACK\ENQ\DC2\EOT\170\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ACK\SOH\DC2\EOT\170\SOH\a\CAN\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ACK\ETX\DC2\EOT\170\SOH\ESC\FS\n\
    \\197\SOH\n\
    \\EOT\EOT\ETX\STX\a\DC2\EOT\175\SOH\STX4\SUB\182\SOH Health status as reported by EDS. Note: only HEALTHY and UNHEALTHY are currently supported\n\
    \ here.\n\
    \ [#comment:TODO(mrice32): pipe through remaining EDS health status possibilities.]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\a\ACK\DC2\EOT\175\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\a\SOH\DC2\EOT\175\SOH\RS/\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\a\ETX\DC2\EOT\175\SOH23b\ACKproto3"