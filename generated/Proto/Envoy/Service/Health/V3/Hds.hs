{- This file was auto-generated from envoy/service/health/v3/hds.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Service.Health.V3.Hds (
        HealthDiscoveryService(..), Capability(), Capability'Protocol(..),
        Capability'Protocol(), Capability'Protocol'UnrecognizedValue,
        ClusterEndpointsHealth(), ClusterHealthCheck(), EndpointHealth(),
        EndpointHealthResponse(), HealthCheckRequest(),
        HealthCheckRequestOrEndpointHealthResponse(),
        HealthCheckRequestOrEndpointHealthResponse'RequestType(..),
        _HealthCheckRequestOrEndpointHealthResponse'HealthCheckRequest,
        _HealthCheckRequestOrEndpointHealthResponse'EndpointHealthResponse,
        HealthCheckSpecifier(), LocalityEndpoints(),
        LocalityEndpointsHealth()
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
import qualified Proto.Envoy.Config.Cluster.V3.Cluster
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Config.Core.V3.HealthCheck
import qualified Proto.Envoy.Config.Endpoint.V3.EndpointComponents
import qualified Proto.Google.Api.Annotations
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
{- | Fields :
     
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.healthCheckProtocols' @:: Lens' Capability [Capability'Protocol]@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.vec'healthCheckProtocols' @:: Lens' Capability (Data.Vector.Vector Capability'Protocol)@ -}
data Capability
  = Capability'_constructor {_Capability'healthCheckProtocols :: !(Data.Vector.Vector Capability'Protocol),
                             _Capability'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Capability where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Capability "healthCheckProtocols" [Capability'Protocol] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Capability'healthCheckProtocols
           (\ x__ y__ -> x__ {_Capability'healthCheckProtocols = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Capability "vec'healthCheckProtocols" (Data.Vector.Vector Capability'Protocol) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Capability'healthCheckProtocols
           (\ x__ y__ -> x__ {_Capability'healthCheckProtocols = y__}))
        Prelude.id
instance Data.ProtoLens.Message Capability where
  messageName _ = Data.Text.pack "envoy.service.health.v3.Capability"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Capability\DC2b\n\
      \\SYNhealth_check_protocols\CAN\SOH \ETX(\SO2,.envoy.service.health.v3.Capability.ProtocolR\DC4healthCheckProtocols\"(\n\
      \\bProtocol\DC2\b\n\
      \\EOTHTTP\DLE\NUL\DC2\a\n\
      \\ETXTCP\DLE\SOH\DC2\t\n\
      \\ENQREDIS\DLE\STX:,\154\197\136\RS'\n\
      \%envoy.service.discovery.v2.Capability"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        healthCheckProtocols__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "health_check_protocols"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Capability'Protocol)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"healthCheckProtocols")) ::
              Data.ProtoLens.FieldDescriptor Capability
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, healthCheckProtocols__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Capability'_unknownFields
        (\ x__ y__ -> x__ {_Capability'_unknownFields = y__})
  defMessage
    = Capability'_constructor
        {_Capability'healthCheckProtocols = Data.Vector.Generic.empty,
         _Capability'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Capability
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Capability'Protocol
             -> Data.ProtoLens.Encoding.Bytes.Parser Capability
        loop x mutable'healthCheckProtocols
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'healthCheckProtocols <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                          mutable'healthCheckProtocols)
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
                              (Data.ProtoLens.Field.field @"vec'healthCheckProtocols")
                              frozen'healthCheckProtocols
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.toEnum
                                           (Prelude.fmap
                                              Prelude.fromIntegral
                                              Data.ProtoLens.Encoding.Bytes.getVarInt))
                                        "health_check_protocols"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'healthCheckProtocols y)
                                loop x v
                        10
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
                                                                    "health_check_protocols"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'healthCheckProtocols)
                                loop x y
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'healthCheckProtocols
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'healthCheckProtocols <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'healthCheckProtocols)
          "Capability"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                p = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'healthCheckProtocols") _x
              in
                if Data.Vector.Generic.null p then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         (Data.ProtoLens.Encoding.Bytes.runBuilder
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               ((Prelude..)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                  Prelude.fromEnum)
                               p))))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Capability where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Capability'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Capability'healthCheckProtocols x__) ())
newtype Capability'Protocol'UnrecognizedValue
  = Capability'Protocol'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Capability'Protocol
  = Capability'HTTP |
    Capability'TCP |
    Capability'REDIS |
    Capability'Protocol'Unrecognized !Capability'Protocol'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Capability'Protocol where
  maybeToEnum 0 = Prelude.Just Capability'HTTP
  maybeToEnum 1 = Prelude.Just Capability'TCP
  maybeToEnum 2 = Prelude.Just Capability'REDIS
  maybeToEnum k
    = Prelude.Just
        (Capability'Protocol'Unrecognized
           (Capability'Protocol'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum Capability'HTTP = "HTTP"
  showEnum Capability'TCP = "TCP"
  showEnum Capability'REDIS = "REDIS"
  showEnum
    (Capability'Protocol'Unrecognized (Capability'Protocol'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "HTTP" = Prelude.Just Capability'HTTP
    | (Prelude.==) k "TCP" = Prelude.Just Capability'TCP
    | (Prelude.==) k "REDIS" = Prelude.Just Capability'REDIS
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Capability'Protocol where
  minBound = Capability'HTTP
  maxBound = Capability'REDIS
instance Prelude.Enum Capability'Protocol where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Protocol: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Capability'HTTP = 0
  fromEnum Capability'TCP = 1
  fromEnum Capability'REDIS = 2
  fromEnum
    (Capability'Protocol'Unrecognized (Capability'Protocol'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Capability'REDIS
    = Prelude.error
        "Capability'Protocol.succ: bad argument Capability'REDIS. This value would be out of bounds."
  succ Capability'HTTP = Capability'TCP
  succ Capability'TCP = Capability'REDIS
  succ (Capability'Protocol'Unrecognized _)
    = Prelude.error
        "Capability'Protocol.succ: bad argument: unrecognized value"
  pred Capability'HTTP
    = Prelude.error
        "Capability'Protocol.pred: bad argument Capability'HTTP. This value would be out of bounds."
  pred Capability'TCP = Capability'HTTP
  pred Capability'REDIS = Capability'TCP
  pred (Capability'Protocol'Unrecognized _)
    = Prelude.error
        "Capability'Protocol.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Capability'Protocol where
  fieldDefault = Capability'HTTP
instance Control.DeepSeq.NFData Capability'Protocol where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.clusterName' @:: Lens' ClusterEndpointsHealth Data.Text.Text@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.localityEndpointsHealth' @:: Lens' ClusterEndpointsHealth [LocalityEndpointsHealth]@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.vec'localityEndpointsHealth' @:: Lens' ClusterEndpointsHealth (Data.Vector.Vector LocalityEndpointsHealth)@ -}
data ClusterEndpointsHealth
  = ClusterEndpointsHealth'_constructor {_ClusterEndpointsHealth'clusterName :: !Data.Text.Text,
                                         _ClusterEndpointsHealth'localityEndpointsHealth :: !(Data.Vector.Vector LocalityEndpointsHealth),
                                         _ClusterEndpointsHealth'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClusterEndpointsHealth where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClusterEndpointsHealth "clusterName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterEndpointsHealth'clusterName
           (\ x__ y__ -> x__ {_ClusterEndpointsHealth'clusterName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterEndpointsHealth "localityEndpointsHealth" [LocalityEndpointsHealth] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterEndpointsHealth'localityEndpointsHealth
           (\ x__ y__
              -> x__ {_ClusterEndpointsHealth'localityEndpointsHealth = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ClusterEndpointsHealth "vec'localityEndpointsHealth" (Data.Vector.Vector LocalityEndpointsHealth) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterEndpointsHealth'localityEndpointsHealth
           (\ x__ y__
              -> x__ {_ClusterEndpointsHealth'localityEndpointsHealth = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClusterEndpointsHealth where
  messageName _
    = Data.Text.pack "envoy.service.health.v3.ClusterEndpointsHealth"
  packedMessageDescriptor _
    = "\n\
      \\SYNClusterEndpointsHealth\DC2!\n\
      \\fcluster_name\CAN\SOH \SOH(\tR\vclusterName\DC2l\n\
      \\EMlocality_endpoints_health\CAN\STX \ETX(\v20.envoy.service.health.v3.LocalityEndpointsHealthR\ETBlocalityEndpointsHealth"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        clusterName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"clusterName")) ::
              Data.ProtoLens.FieldDescriptor ClusterEndpointsHealth
        localityEndpointsHealth__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "locality_endpoints_health"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor LocalityEndpointsHealth)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"localityEndpointsHealth")) ::
              Data.ProtoLens.FieldDescriptor ClusterEndpointsHealth
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, clusterName__field_descriptor),
           (Data.ProtoLens.Tag 2, localityEndpointsHealth__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClusterEndpointsHealth'_unknownFields
        (\ x__ y__ -> x__ {_ClusterEndpointsHealth'_unknownFields = y__})
  defMessage
    = ClusterEndpointsHealth'_constructor
        {_ClusterEndpointsHealth'clusterName = Data.ProtoLens.fieldDefault,
         _ClusterEndpointsHealth'localityEndpointsHealth = Data.Vector.Generic.empty,
         _ClusterEndpointsHealth'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClusterEndpointsHealth
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld LocalityEndpointsHealth
             -> Data.ProtoLens.Encoding.Bytes.Parser ClusterEndpointsHealth
        loop x mutable'localityEndpointsHealth
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'localityEndpointsHealth <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                             mutable'localityEndpointsHealth)
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
                              (Data.ProtoLens.Field.field @"vec'localityEndpointsHealth")
                              frozen'localityEndpointsHealth
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
                                       "cluster_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"clusterName") y x)
                                  mutable'localityEndpointsHealth
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "locality_endpoints_health"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'localityEndpointsHealth y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'localityEndpointsHealth
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'localityEndpointsHealth <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'localityEndpointsHealth)
          "ClusterEndpointsHealth"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"clusterName") _x
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
                      (Data.ProtoLens.Field.field @"vec'localityEndpointsHealth") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ClusterEndpointsHealth where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClusterEndpointsHealth'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ClusterEndpointsHealth'clusterName x__)
                (Control.DeepSeq.deepseq
                   (_ClusterEndpointsHealth'localityEndpointsHealth x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.clusterName' @:: Lens' ClusterHealthCheck Data.Text.Text@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.healthChecks' @:: Lens' ClusterHealthCheck [Proto.Envoy.Config.Core.V3.HealthCheck.HealthCheck]@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.vec'healthChecks' @:: Lens' ClusterHealthCheck (Data.Vector.Vector Proto.Envoy.Config.Core.V3.HealthCheck.HealthCheck)@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.localityEndpoints' @:: Lens' ClusterHealthCheck [LocalityEndpoints]@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.vec'localityEndpoints' @:: Lens' ClusterHealthCheck (Data.Vector.Vector LocalityEndpoints)@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.transportSocketMatches' @:: Lens' ClusterHealthCheck [Proto.Envoy.Config.Cluster.V3.Cluster.Cluster'TransportSocketMatch]@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.vec'transportSocketMatches' @:: Lens' ClusterHealthCheck (Data.Vector.Vector Proto.Envoy.Config.Cluster.V3.Cluster.Cluster'TransportSocketMatch)@ -}
data ClusterHealthCheck
  = ClusterHealthCheck'_constructor {_ClusterHealthCheck'clusterName :: !Data.Text.Text,
                                     _ClusterHealthCheck'healthChecks :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.HealthCheck.HealthCheck),
                                     _ClusterHealthCheck'localityEndpoints :: !(Data.Vector.Vector LocalityEndpoints),
                                     _ClusterHealthCheck'transportSocketMatches :: !(Data.Vector.Vector Proto.Envoy.Config.Cluster.V3.Cluster.Cluster'TransportSocketMatch),
                                     _ClusterHealthCheck'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClusterHealthCheck where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClusterHealthCheck "clusterName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterHealthCheck'clusterName
           (\ x__ y__ -> x__ {_ClusterHealthCheck'clusterName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterHealthCheck "healthChecks" [Proto.Envoy.Config.Core.V3.HealthCheck.HealthCheck] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterHealthCheck'healthChecks
           (\ x__ y__ -> x__ {_ClusterHealthCheck'healthChecks = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ClusterHealthCheck "vec'healthChecks" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.HealthCheck.HealthCheck) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterHealthCheck'healthChecks
           (\ x__ y__ -> x__ {_ClusterHealthCheck'healthChecks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterHealthCheck "localityEndpoints" [LocalityEndpoints] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterHealthCheck'localityEndpoints
           (\ x__ y__ -> x__ {_ClusterHealthCheck'localityEndpoints = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ClusterHealthCheck "vec'localityEndpoints" (Data.Vector.Vector LocalityEndpoints) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterHealthCheck'localityEndpoints
           (\ x__ y__ -> x__ {_ClusterHealthCheck'localityEndpoints = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterHealthCheck "transportSocketMatches" [Proto.Envoy.Config.Cluster.V3.Cluster.Cluster'TransportSocketMatch] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterHealthCheck'transportSocketMatches
           (\ x__ y__
              -> x__ {_ClusterHealthCheck'transportSocketMatches = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ClusterHealthCheck "vec'transportSocketMatches" (Data.Vector.Vector Proto.Envoy.Config.Cluster.V3.Cluster.Cluster'TransportSocketMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterHealthCheck'transportSocketMatches
           (\ x__ y__
              -> x__ {_ClusterHealthCheck'transportSocketMatches = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClusterHealthCheck where
  messageName _
    = Data.Text.pack "envoy.service.health.v3.ClusterHealthCheck"
  packedMessageDescriptor _
    = "\n\
      \\DC2ClusterHealthCheck\DC2!\n\
      \\fcluster_name\CAN\SOH \SOH(\tR\vclusterName\DC2F\n\
      \\rhealth_checks\CAN\STX \ETX(\v2!.envoy.config.core.v3.HealthCheckR\fhealthChecks\DC2Y\n\
      \\DC2locality_endpoints\CAN\ETX \ETX(\v2*.envoy.service.health.v3.LocalityEndpointsR\DC1localityEndpoints\DC2o\n\
      \\CANtransport_socket_matches\CAN\EOT \ETX(\v25.envoy.config.cluster.v3.Cluster.TransportSocketMatchR\SYNtransportSocketMatches:4\154\197\136\RS/\n\
      \-envoy.service.discovery.v2.ClusterHealthCheck"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        clusterName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"clusterName")) ::
              Data.ProtoLens.FieldDescriptor ClusterHealthCheck
        healthChecks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "health_checks"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.HealthCheck.HealthCheck)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"healthChecks")) ::
              Data.ProtoLens.FieldDescriptor ClusterHealthCheck
        localityEndpoints__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "locality_endpoints"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor LocalityEndpoints)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"localityEndpoints")) ::
              Data.ProtoLens.FieldDescriptor ClusterHealthCheck
        transportSocketMatches__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "transport_socket_matches"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Cluster.V3.Cluster.Cluster'TransportSocketMatch)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"transportSocketMatches")) ::
              Data.ProtoLens.FieldDescriptor ClusterHealthCheck
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, clusterName__field_descriptor),
           (Data.ProtoLens.Tag 2, healthChecks__field_descriptor),
           (Data.ProtoLens.Tag 3, localityEndpoints__field_descriptor),
           (Data.ProtoLens.Tag 4, transportSocketMatches__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClusterHealthCheck'_unknownFields
        (\ x__ y__ -> x__ {_ClusterHealthCheck'_unknownFields = y__})
  defMessage
    = ClusterHealthCheck'_constructor
        {_ClusterHealthCheck'clusterName = Data.ProtoLens.fieldDefault,
         _ClusterHealthCheck'healthChecks = Data.Vector.Generic.empty,
         _ClusterHealthCheck'localityEndpoints = Data.Vector.Generic.empty,
         _ClusterHealthCheck'transportSocketMatches = Data.Vector.Generic.empty,
         _ClusterHealthCheck'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClusterHealthCheck
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.HealthCheck.HealthCheck
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld LocalityEndpoints
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Cluster.V3.Cluster.Cluster'TransportSocketMatch
                   -> Data.ProtoLens.Encoding.Bytes.Parser ClusterHealthCheck
        loop
          x
          mutable'healthChecks
          mutable'localityEndpoints
          mutable'transportSocketMatches
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'healthChecks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'healthChecks)
                      frozen'localityEndpoints <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                       mutable'localityEndpoints)
                      frozen'transportSocketMatches <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                            mutable'transportSocketMatches)
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
                              (Data.ProtoLens.Field.field @"vec'healthChecks")
                              frozen'healthChecks
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'localityEndpoints")
                                 frozen'localityEndpoints
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'transportSocketMatches")
                                    frozen'transportSocketMatches
                                    x))))
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
                                       "cluster_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"clusterName") y x)
                                  mutable'healthChecks
                                  mutable'localityEndpoints
                                  mutable'transportSocketMatches
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "health_checks"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'healthChecks y)
                                loop x v mutable'localityEndpoints mutable'transportSocketMatches
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "locality_endpoints"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'localityEndpoints y)
                                loop x mutable'healthChecks v mutable'transportSocketMatches
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "transport_socket_matches"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'transportSocketMatches y)
                                loop x mutable'healthChecks mutable'localityEndpoints v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'healthChecks
                                  mutable'localityEndpoints
                                  mutable'transportSocketMatches
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'healthChecks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              mutable'localityEndpoints <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             Data.ProtoLens.Encoding.Growing.new
              mutable'transportSocketMatches <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'healthChecks
                mutable'localityEndpoints
                mutable'transportSocketMatches)
          "ClusterHealthCheck"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"clusterName") _x
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
                      (Data.ProtoLens.Field.field @"vec'healthChecks") _x))
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
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'localityEndpoints") _x))
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
                            (Data.ProtoLens.Field.field @"vec'transportSocketMatches") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData ClusterHealthCheck where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClusterHealthCheck'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ClusterHealthCheck'clusterName x__)
                (Control.DeepSeq.deepseq
                   (_ClusterHealthCheck'healthChecks x__)
                   (Control.DeepSeq.deepseq
                      (_ClusterHealthCheck'localityEndpoints x__)
                      (Control.DeepSeq.deepseq
                         (_ClusterHealthCheck'transportSocketMatches x__) ()))))
{- | Fields :
     
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.endpoint' @:: Lens' EndpointHealth Proto.Envoy.Config.Endpoint.V3.EndpointComponents.Endpoint@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.maybe'endpoint' @:: Lens' EndpointHealth (Prelude.Maybe Proto.Envoy.Config.Endpoint.V3.EndpointComponents.Endpoint)@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.healthStatus' @:: Lens' EndpointHealth Proto.Envoy.Config.Core.V3.HealthCheck.HealthStatus@ -}
data EndpointHealth
  = EndpointHealth'_constructor {_EndpointHealth'endpoint :: !(Prelude.Maybe Proto.Envoy.Config.Endpoint.V3.EndpointComponents.Endpoint),
                                 _EndpointHealth'healthStatus :: !Proto.Envoy.Config.Core.V3.HealthCheck.HealthStatus,
                                 _EndpointHealth'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EndpointHealth where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EndpointHealth "endpoint" Proto.Envoy.Config.Endpoint.V3.EndpointComponents.Endpoint where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointHealth'endpoint
           (\ x__ y__ -> x__ {_EndpointHealth'endpoint = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField EndpointHealth "maybe'endpoint" (Prelude.Maybe Proto.Envoy.Config.Endpoint.V3.EndpointComponents.Endpoint) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointHealth'endpoint
           (\ x__ y__ -> x__ {_EndpointHealth'endpoint = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EndpointHealth "healthStatus" Proto.Envoy.Config.Core.V3.HealthCheck.HealthStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointHealth'healthStatus
           (\ x__ y__ -> x__ {_EndpointHealth'healthStatus = y__}))
        Prelude.id
instance Data.ProtoLens.Message EndpointHealth where
  messageName _
    = Data.Text.pack "envoy.service.health.v3.EndpointHealth"
  packedMessageDescriptor _
    = "\n\
      \\SOEndpointHealth\DC2>\n\
      \\bendpoint\CAN\SOH \SOH(\v2\".envoy.config.endpoint.v3.EndpointR\bendpoint\DC2G\n\
      \\rhealth_status\CAN\STX \SOH(\SO2\".envoy.config.core.v3.HealthStatusR\fhealthStatus:0\154\197\136\RS+\n\
      \)envoy.service.discovery.v2.EndpointHealth"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        endpoint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoint"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Endpoint.V3.EndpointComponents.Endpoint)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'endpoint")) ::
              Data.ProtoLens.FieldDescriptor EndpointHealth
        healthStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "health_status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.HealthCheck.HealthStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"healthStatus")) ::
              Data.ProtoLens.FieldDescriptor EndpointHealth
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, endpoint__field_descriptor),
           (Data.ProtoLens.Tag 2, healthStatus__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EndpointHealth'_unknownFields
        (\ x__ y__ -> x__ {_EndpointHealth'_unknownFields = y__})
  defMessage
    = EndpointHealth'_constructor
        {_EndpointHealth'endpoint = Prelude.Nothing,
         _EndpointHealth'healthStatus = Data.ProtoLens.fieldDefault,
         _EndpointHealth'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EndpointHealth
          -> Data.ProtoLens.Encoding.Bytes.Parser EndpointHealth
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
                                       "endpoint"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"endpoint") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "health_status"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"healthStatus") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EndpointHealth"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'endpoint") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"healthStatus") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData EndpointHealth where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EndpointHealth'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EndpointHealth'endpoint x__)
                (Control.DeepSeq.deepseq (_EndpointHealth'healthStatus x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.endpointsHealth' @:: Lens' EndpointHealthResponse [EndpointHealth]@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.vec'endpointsHealth' @:: Lens' EndpointHealthResponse (Data.Vector.Vector EndpointHealth)@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.clusterEndpointsHealth' @:: Lens' EndpointHealthResponse [ClusterEndpointsHealth]@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.vec'clusterEndpointsHealth' @:: Lens' EndpointHealthResponse (Data.Vector.Vector ClusterEndpointsHealth)@ -}
data EndpointHealthResponse
  = EndpointHealthResponse'_constructor {_EndpointHealthResponse'endpointsHealth :: !(Data.Vector.Vector EndpointHealth),
                                         _EndpointHealthResponse'clusterEndpointsHealth :: !(Data.Vector.Vector ClusterEndpointsHealth),
                                         _EndpointHealthResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EndpointHealthResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EndpointHealthResponse "endpointsHealth" [EndpointHealth] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointHealthResponse'endpointsHealth
           (\ x__ y__ -> x__ {_EndpointHealthResponse'endpointsHealth = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField EndpointHealthResponse "vec'endpointsHealth" (Data.Vector.Vector EndpointHealth) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointHealthResponse'endpointsHealth
           (\ x__ y__ -> x__ {_EndpointHealthResponse'endpointsHealth = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EndpointHealthResponse "clusterEndpointsHealth" [ClusterEndpointsHealth] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointHealthResponse'clusterEndpointsHealth
           (\ x__ y__
              -> x__ {_EndpointHealthResponse'clusterEndpointsHealth = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField EndpointHealthResponse "vec'clusterEndpointsHealth" (Data.Vector.Vector ClusterEndpointsHealth) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointHealthResponse'clusterEndpointsHealth
           (\ x__ y__
              -> x__ {_EndpointHealthResponse'clusterEndpointsHealth = y__}))
        Prelude.id
instance Data.ProtoLens.Message EndpointHealthResponse where
  messageName _
    = Data.Text.pack "envoy.service.health.v3.EndpointHealthResponse"
  packedMessageDescriptor _
    = "\n\
      \\SYNEndpointHealthResponse\DC2_\n\
      \\DLEendpoints_health\CAN\SOH \ETX(\v2'.envoy.service.health.v3.EndpointHealthR\SIendpointsHealthB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2i\n\
      \\CANcluster_endpoints_health\CAN\STX \ETX(\v2/.envoy.service.health.v3.ClusterEndpointsHealthR\SYNclusterEndpointsHealth:8\154\197\136\RS3\n\
      \1envoy.service.discovery.v2.EndpointHealthResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        endpointsHealth__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoints_health"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EndpointHealth)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"endpointsHealth")) ::
              Data.ProtoLens.FieldDescriptor EndpointHealthResponse
        clusterEndpointsHealth__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster_endpoints_health"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ClusterEndpointsHealth)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"clusterEndpointsHealth")) ::
              Data.ProtoLens.FieldDescriptor EndpointHealthResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, endpointsHealth__field_descriptor),
           (Data.ProtoLens.Tag 2, clusterEndpointsHealth__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EndpointHealthResponse'_unknownFields
        (\ x__ y__ -> x__ {_EndpointHealthResponse'_unknownFields = y__})
  defMessage
    = EndpointHealthResponse'_constructor
        {_EndpointHealthResponse'endpointsHealth = Data.Vector.Generic.empty,
         _EndpointHealthResponse'clusterEndpointsHealth = Data.Vector.Generic.empty,
         _EndpointHealthResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EndpointHealthResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ClusterEndpointsHealth
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld EndpointHealth
                -> Data.ProtoLens.Encoding.Bytes.Parser EndpointHealthResponse
        loop x mutable'clusterEndpointsHealth mutable'endpointsHealth
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'clusterEndpointsHealth <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                            mutable'clusterEndpointsHealth)
                      frozen'endpointsHealth <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'endpointsHealth)
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
                              (Data.ProtoLens.Field.field @"vec'clusterEndpointsHealth")
                              frozen'clusterEndpointsHealth
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'endpointsHealth")
                                 frozen'endpointsHealth
                                 x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "endpoints_health"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'endpointsHealth y)
                                loop x mutable'clusterEndpointsHealth v
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "cluster_endpoints_health"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'clusterEndpointsHealth y)
                                loop x v mutable'endpointsHealth
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'clusterEndpointsHealth
                                  mutable'endpointsHealth
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'clusterEndpointsHealth <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  Data.ProtoLens.Encoding.Growing.new
              mutable'endpointsHealth <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'clusterEndpointsHealth
                mutable'endpointsHealth)
          "EndpointHealthResponse"
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
                   (Data.ProtoLens.Field.field @"vec'endpointsHealth") _x))
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
                      (Data.ProtoLens.Field.field @"vec'clusterEndpointsHealth") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData EndpointHealthResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EndpointHealthResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EndpointHealthResponse'endpointsHealth x__)
                (Control.DeepSeq.deepseq
                   (_EndpointHealthResponse'clusterEndpointsHealth x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.node' @:: Lens' HealthCheckRequest Proto.Envoy.Config.Core.V3.Base.Node@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.maybe'node' @:: Lens' HealthCheckRequest (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node)@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.capability' @:: Lens' HealthCheckRequest Capability@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.maybe'capability' @:: Lens' HealthCheckRequest (Prelude.Maybe Capability)@ -}
data HealthCheckRequest
  = HealthCheckRequest'_constructor {_HealthCheckRequest'node :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node),
                                     _HealthCheckRequest'capability :: !(Prelude.Maybe Capability),
                                     _HealthCheckRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HealthCheckRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HealthCheckRequest "node" Proto.Envoy.Config.Core.V3.Base.Node where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckRequest'node
           (\ x__ y__ -> x__ {_HealthCheckRequest'node = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheckRequest "maybe'node" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckRequest'node
           (\ x__ y__ -> x__ {_HealthCheckRequest'node = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheckRequest "capability" Capability where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckRequest'capability
           (\ x__ y__ -> x__ {_HealthCheckRequest'capability = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheckRequest "maybe'capability" (Prelude.Maybe Capability) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckRequest'capability
           (\ x__ y__ -> x__ {_HealthCheckRequest'capability = y__}))
        Prelude.id
instance Data.ProtoLens.Message HealthCheckRequest where
  messageName _
    = Data.Text.pack "envoy.service.health.v3.HealthCheckRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC2HealthCheckRequest\DC2.\n\
      \\EOTnode\CAN\SOH \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnode\DC2C\n\
      \\n\
      \capability\CAN\STX \SOH(\v2#.envoy.service.health.v3.CapabilityR\n\
      \capability:4\154\197\136\RS/\n\
      \-envoy.service.discovery.v2.HealthCheckRequest"
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
              Data.ProtoLens.FieldDescriptor HealthCheckRequest
        capability__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "capability"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Capability)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'capability")) ::
              Data.ProtoLens.FieldDescriptor HealthCheckRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, node__field_descriptor),
           (Data.ProtoLens.Tag 2, capability__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HealthCheckRequest'_unknownFields
        (\ x__ y__ -> x__ {_HealthCheckRequest'_unknownFields = y__})
  defMessage
    = HealthCheckRequest'_constructor
        {_HealthCheckRequest'node = Prelude.Nothing,
         _HealthCheckRequest'capability = Prelude.Nothing,
         _HealthCheckRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HealthCheckRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser HealthCheckRequest
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
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "capability"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"capability") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HealthCheckRequest"
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
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'capability") _x
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
instance Control.DeepSeq.NFData HealthCheckRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HealthCheckRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HealthCheckRequest'node x__)
                (Control.DeepSeq.deepseq (_HealthCheckRequest'capability x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.maybe'requestType' @:: Lens' HealthCheckRequestOrEndpointHealthResponse (Prelude.Maybe HealthCheckRequestOrEndpointHealthResponse'RequestType)@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.maybe'healthCheckRequest' @:: Lens' HealthCheckRequestOrEndpointHealthResponse (Prelude.Maybe HealthCheckRequest)@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.healthCheckRequest' @:: Lens' HealthCheckRequestOrEndpointHealthResponse HealthCheckRequest@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.maybe'endpointHealthResponse' @:: Lens' HealthCheckRequestOrEndpointHealthResponse (Prelude.Maybe EndpointHealthResponse)@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.endpointHealthResponse' @:: Lens' HealthCheckRequestOrEndpointHealthResponse EndpointHealthResponse@ -}
data HealthCheckRequestOrEndpointHealthResponse
  = HealthCheckRequestOrEndpointHealthResponse'_constructor {_HealthCheckRequestOrEndpointHealthResponse'requestType :: !(Prelude.Maybe HealthCheckRequestOrEndpointHealthResponse'RequestType),
                                                             _HealthCheckRequestOrEndpointHealthResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HealthCheckRequestOrEndpointHealthResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data HealthCheckRequestOrEndpointHealthResponse'RequestType
  = HealthCheckRequestOrEndpointHealthResponse'HealthCheckRequest !HealthCheckRequest |
    HealthCheckRequestOrEndpointHealthResponse'EndpointHealthResponse !EndpointHealthResponse
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField HealthCheckRequestOrEndpointHealthResponse "maybe'requestType" (Prelude.Maybe HealthCheckRequestOrEndpointHealthResponse'RequestType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckRequestOrEndpointHealthResponse'requestType
           (\ x__ y__
              -> x__
                   {_HealthCheckRequestOrEndpointHealthResponse'requestType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheckRequestOrEndpointHealthResponse "maybe'healthCheckRequest" (Prelude.Maybe HealthCheckRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckRequestOrEndpointHealthResponse'requestType
           (\ x__ y__
              -> x__
                   {_HealthCheckRequestOrEndpointHealthResponse'requestType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HealthCheckRequestOrEndpointHealthResponse'HealthCheckRequest x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   HealthCheckRequestOrEndpointHealthResponse'HealthCheckRequest y__))
instance Data.ProtoLens.Field.HasField HealthCheckRequestOrEndpointHealthResponse "healthCheckRequest" HealthCheckRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckRequestOrEndpointHealthResponse'requestType
           (\ x__ y__
              -> x__
                   {_HealthCheckRequestOrEndpointHealthResponse'requestType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HealthCheckRequestOrEndpointHealthResponse'HealthCheckRequest x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      HealthCheckRequestOrEndpointHealthResponse'HealthCheckRequest y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HealthCheckRequestOrEndpointHealthResponse "maybe'endpointHealthResponse" (Prelude.Maybe EndpointHealthResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckRequestOrEndpointHealthResponse'requestType
           (\ x__ y__
              -> x__
                   {_HealthCheckRequestOrEndpointHealthResponse'requestType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HealthCheckRequestOrEndpointHealthResponse'EndpointHealthResponse x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   HealthCheckRequestOrEndpointHealthResponse'EndpointHealthResponse
                   y__))
instance Data.ProtoLens.Field.HasField HealthCheckRequestOrEndpointHealthResponse "endpointHealthResponse" EndpointHealthResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckRequestOrEndpointHealthResponse'requestType
           (\ x__ y__
              -> x__
                   {_HealthCheckRequestOrEndpointHealthResponse'requestType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HealthCheckRequestOrEndpointHealthResponse'EndpointHealthResponse x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      HealthCheckRequestOrEndpointHealthResponse'EndpointHealthResponse
                      y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message HealthCheckRequestOrEndpointHealthResponse where
  messageName _
    = Data.Text.pack
        "envoy.service.health.v3.HealthCheckRequestOrEndpointHealthResponse"
  packedMessageDescriptor _
    = "\n\
      \*HealthCheckRequestOrEndpointHealthResponse\DC2_\n\
      \\DC4health_check_request\CAN\SOH \SOH(\v2+.envoy.service.health.v3.HealthCheckRequestH\NULR\DC2healthCheckRequest\DC2k\n\
      \\CANendpoint_health_response\CAN\STX \SOH(\v2/.envoy.service.health.v3.EndpointHealthResponseH\NULR\SYNendpointHealthResponseB\SO\n\
      \\frequest_type:L\154\197\136\RSG\n\
      \Eenvoy.service.discovery.v2.HealthCheckRequestOrEndpointHealthResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        healthCheckRequest__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "health_check_request"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HealthCheckRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'healthCheckRequest")) ::
              Data.ProtoLens.FieldDescriptor HealthCheckRequestOrEndpointHealthResponse
        endpointHealthResponse__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoint_health_response"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EndpointHealthResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'endpointHealthResponse")) ::
              Data.ProtoLens.FieldDescriptor HealthCheckRequestOrEndpointHealthResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, healthCheckRequest__field_descriptor),
           (Data.ProtoLens.Tag 2, endpointHealthResponse__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HealthCheckRequestOrEndpointHealthResponse'_unknownFields
        (\ x__ y__
           -> x__
                {_HealthCheckRequestOrEndpointHealthResponse'_unknownFields = y__})
  defMessage
    = HealthCheckRequestOrEndpointHealthResponse'_constructor
        {_HealthCheckRequestOrEndpointHealthResponse'requestType = Prelude.Nothing,
         _HealthCheckRequestOrEndpointHealthResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HealthCheckRequestOrEndpointHealthResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser HealthCheckRequestOrEndpointHealthResponse
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
                                       "health_check_request"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"healthCheckRequest") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "endpoint_health_response"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"endpointHealthResponse") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "HealthCheckRequestOrEndpointHealthResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'requestType") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (HealthCheckRequestOrEndpointHealthResponse'HealthCheckRequest v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (HealthCheckRequestOrEndpointHealthResponse'EndpointHealthResponse v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData HealthCheckRequestOrEndpointHealthResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HealthCheckRequestOrEndpointHealthResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HealthCheckRequestOrEndpointHealthResponse'requestType x__) ())
instance Control.DeepSeq.NFData HealthCheckRequestOrEndpointHealthResponse'RequestType where
  rnf
    (HealthCheckRequestOrEndpointHealthResponse'HealthCheckRequest x__)
    = Control.DeepSeq.rnf x__
  rnf
    (HealthCheckRequestOrEndpointHealthResponse'EndpointHealthResponse x__)
    = Control.DeepSeq.rnf x__
_HealthCheckRequestOrEndpointHealthResponse'HealthCheckRequest ::
  Data.ProtoLens.Prism.Prism' HealthCheckRequestOrEndpointHealthResponse'RequestType HealthCheckRequest
_HealthCheckRequestOrEndpointHealthResponse'HealthCheckRequest
  = Data.ProtoLens.Prism.prism'
      HealthCheckRequestOrEndpointHealthResponse'HealthCheckRequest
      (\ p__
         -> case p__ of
              (HealthCheckRequestOrEndpointHealthResponse'HealthCheckRequest p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HealthCheckRequestOrEndpointHealthResponse'EndpointHealthResponse ::
  Data.ProtoLens.Prism.Prism' HealthCheckRequestOrEndpointHealthResponse'RequestType EndpointHealthResponse
_HealthCheckRequestOrEndpointHealthResponse'EndpointHealthResponse
  = Data.ProtoLens.Prism.prism'
      HealthCheckRequestOrEndpointHealthResponse'EndpointHealthResponse
      (\ p__
         -> case p__ of
              (HealthCheckRequestOrEndpointHealthResponse'EndpointHealthResponse p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.clusterHealthChecks' @:: Lens' HealthCheckSpecifier [ClusterHealthCheck]@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.vec'clusterHealthChecks' @:: Lens' HealthCheckSpecifier (Data.Vector.Vector ClusterHealthCheck)@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.interval' @:: Lens' HealthCheckSpecifier Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.maybe'interval' @:: Lens' HealthCheckSpecifier (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data HealthCheckSpecifier
  = HealthCheckSpecifier'_constructor {_HealthCheckSpecifier'clusterHealthChecks :: !(Data.Vector.Vector ClusterHealthCheck),
                                       _HealthCheckSpecifier'interval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                       _HealthCheckSpecifier'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HealthCheckSpecifier where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HealthCheckSpecifier "clusterHealthChecks" [ClusterHealthCheck] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckSpecifier'clusterHealthChecks
           (\ x__ y__
              -> x__ {_HealthCheckSpecifier'clusterHealthChecks = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HealthCheckSpecifier "vec'clusterHealthChecks" (Data.Vector.Vector ClusterHealthCheck) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckSpecifier'clusterHealthChecks
           (\ x__ y__
              -> x__ {_HealthCheckSpecifier'clusterHealthChecks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheckSpecifier "interval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckSpecifier'interval
           (\ x__ y__ -> x__ {_HealthCheckSpecifier'interval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheckSpecifier "maybe'interval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheckSpecifier'interval
           (\ x__ y__ -> x__ {_HealthCheckSpecifier'interval = y__}))
        Prelude.id
instance Data.ProtoLens.Message HealthCheckSpecifier where
  messageName _
    = Data.Text.pack "envoy.service.health.v3.HealthCheckSpecifier"
  packedMessageDescriptor _
    = "\n\
      \\DC4HealthCheckSpecifier\DC2_\n\
      \\NAKcluster_health_checks\CAN\SOH \ETX(\v2+.envoy.service.health.v3.ClusterHealthCheckR\DC3clusterHealthChecks\DC25\n\
      \\binterval\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\binterval:6\154\197\136\RS1\n\
      \/envoy.service.discovery.v2.HealthCheckSpecifier"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        clusterHealthChecks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster_health_checks"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ClusterHealthCheck)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"clusterHealthChecks")) ::
              Data.ProtoLens.FieldDescriptor HealthCheckSpecifier
        interval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'interval")) ::
              Data.ProtoLens.FieldDescriptor HealthCheckSpecifier
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, clusterHealthChecks__field_descriptor),
           (Data.ProtoLens.Tag 2, interval__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HealthCheckSpecifier'_unknownFields
        (\ x__ y__ -> x__ {_HealthCheckSpecifier'_unknownFields = y__})
  defMessage
    = HealthCheckSpecifier'_constructor
        {_HealthCheckSpecifier'clusterHealthChecks = Data.Vector.Generic.empty,
         _HealthCheckSpecifier'interval = Prelude.Nothing,
         _HealthCheckSpecifier'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HealthCheckSpecifier
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ClusterHealthCheck
             -> Data.ProtoLens.Encoding.Bytes.Parser HealthCheckSpecifier
        loop x mutable'clusterHealthChecks
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'clusterHealthChecks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'clusterHealthChecks)
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
                              (Data.ProtoLens.Field.field @"vec'clusterHealthChecks")
                              frozen'clusterHealthChecks
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
                                        "cluster_health_checks"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'clusterHealthChecks y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "interval"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"interval") y x)
                                  mutable'clusterHealthChecks
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'clusterHealthChecks
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'clusterHealthChecks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'clusterHealthChecks)
          "HealthCheckSpecifier"
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
                   (Data.ProtoLens.Field.field @"vec'clusterHealthChecks") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'interval") _x
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
instance Control.DeepSeq.NFData HealthCheckSpecifier where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HealthCheckSpecifier'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HealthCheckSpecifier'clusterHealthChecks x__)
                (Control.DeepSeq.deepseq (_HealthCheckSpecifier'interval x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.locality' @:: Lens' LocalityEndpoints Proto.Envoy.Config.Core.V3.Base.Locality@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.maybe'locality' @:: Lens' LocalityEndpoints (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Locality)@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.endpoints' @:: Lens' LocalityEndpoints [Proto.Envoy.Config.Endpoint.V3.EndpointComponents.Endpoint]@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.vec'endpoints' @:: Lens' LocalityEndpoints (Data.Vector.Vector Proto.Envoy.Config.Endpoint.V3.EndpointComponents.Endpoint)@ -}
data LocalityEndpoints
  = LocalityEndpoints'_constructor {_LocalityEndpoints'locality :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Locality),
                                    _LocalityEndpoints'endpoints :: !(Data.Vector.Vector Proto.Envoy.Config.Endpoint.V3.EndpointComponents.Endpoint),
                                    _LocalityEndpoints'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LocalityEndpoints where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LocalityEndpoints "locality" Proto.Envoy.Config.Core.V3.Base.Locality where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalityEndpoints'locality
           (\ x__ y__ -> x__ {_LocalityEndpoints'locality = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LocalityEndpoints "maybe'locality" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Locality) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalityEndpoints'locality
           (\ x__ y__ -> x__ {_LocalityEndpoints'locality = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LocalityEndpoints "endpoints" [Proto.Envoy.Config.Endpoint.V3.EndpointComponents.Endpoint] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalityEndpoints'endpoints
           (\ x__ y__ -> x__ {_LocalityEndpoints'endpoints = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField LocalityEndpoints "vec'endpoints" (Data.Vector.Vector Proto.Envoy.Config.Endpoint.V3.EndpointComponents.Endpoint) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalityEndpoints'endpoints
           (\ x__ y__ -> x__ {_LocalityEndpoints'endpoints = y__}))
        Prelude.id
instance Data.ProtoLens.Message LocalityEndpoints where
  messageName _
    = Data.Text.pack "envoy.service.health.v3.LocalityEndpoints"
  packedMessageDescriptor _
    = "\n\
      \\DC1LocalityEndpoints\DC2:\n\
      \\blocality\CAN\SOH \SOH(\v2\RS.envoy.config.core.v3.LocalityR\blocality\DC2@\n\
      \\tendpoints\CAN\STX \ETX(\v2\".envoy.config.endpoint.v3.EndpointR\tendpoints:3\154\197\136\RS.\n\
      \,envoy.service.discovery.v2.LocalityEndpoints"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        locality__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "locality"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.Locality)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'locality")) ::
              Data.ProtoLens.FieldDescriptor LocalityEndpoints
        endpoints__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoints"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Endpoint.V3.EndpointComponents.Endpoint)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"endpoints")) ::
              Data.ProtoLens.FieldDescriptor LocalityEndpoints
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, locality__field_descriptor),
           (Data.ProtoLens.Tag 2, endpoints__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LocalityEndpoints'_unknownFields
        (\ x__ y__ -> x__ {_LocalityEndpoints'_unknownFields = y__})
  defMessage
    = LocalityEndpoints'_constructor
        {_LocalityEndpoints'locality = Prelude.Nothing,
         _LocalityEndpoints'endpoints = Data.Vector.Generic.empty,
         _LocalityEndpoints'_unknownFields = []}
  parseMessage
    = let
        loop ::
          LocalityEndpoints
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Endpoint.V3.EndpointComponents.Endpoint
             -> Data.ProtoLens.Encoding.Bytes.Parser LocalityEndpoints
        loop x mutable'endpoints
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'endpoints <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'endpoints)
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
                              (Data.ProtoLens.Field.field @"vec'endpoints") frozen'endpoints x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "locality"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"locality") y x)
                                  mutable'endpoints
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "endpoints"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'endpoints y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'endpoints
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'endpoints <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'endpoints)
          "LocalityEndpoints"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'locality") _x
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
                      (Data.ProtoLens.Field.field @"vec'endpoints") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData LocalityEndpoints where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LocalityEndpoints'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_LocalityEndpoints'locality x__)
                (Control.DeepSeq.deepseq (_LocalityEndpoints'endpoints x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.locality' @:: Lens' LocalityEndpointsHealth Proto.Envoy.Config.Core.V3.Base.Locality@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.maybe'locality' @:: Lens' LocalityEndpointsHealth (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Locality)@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.endpointsHealth' @:: Lens' LocalityEndpointsHealth [EndpointHealth]@
         * 'Proto.Envoy.Service.Health.V3.Hds_Fields.vec'endpointsHealth' @:: Lens' LocalityEndpointsHealth (Data.Vector.Vector EndpointHealth)@ -}
data LocalityEndpointsHealth
  = LocalityEndpointsHealth'_constructor {_LocalityEndpointsHealth'locality :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Locality),
                                          _LocalityEndpointsHealth'endpointsHealth :: !(Data.Vector.Vector EndpointHealth),
                                          _LocalityEndpointsHealth'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LocalityEndpointsHealth where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LocalityEndpointsHealth "locality" Proto.Envoy.Config.Core.V3.Base.Locality where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalityEndpointsHealth'locality
           (\ x__ y__ -> x__ {_LocalityEndpointsHealth'locality = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LocalityEndpointsHealth "maybe'locality" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Locality) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalityEndpointsHealth'locality
           (\ x__ y__ -> x__ {_LocalityEndpointsHealth'locality = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LocalityEndpointsHealth "endpointsHealth" [EndpointHealth] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalityEndpointsHealth'endpointsHealth
           (\ x__ y__
              -> x__ {_LocalityEndpointsHealth'endpointsHealth = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField LocalityEndpointsHealth "vec'endpointsHealth" (Data.Vector.Vector EndpointHealth) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalityEndpointsHealth'endpointsHealth
           (\ x__ y__
              -> x__ {_LocalityEndpointsHealth'endpointsHealth = y__}))
        Prelude.id
instance Data.ProtoLens.Message LocalityEndpointsHealth where
  messageName _
    = Data.Text.pack "envoy.service.health.v3.LocalityEndpointsHealth"
  packedMessageDescriptor _
    = "\n\
      \\ETBLocalityEndpointsHealth\DC2:\n\
      \\blocality\CAN\SOH \SOH(\v2\RS.envoy.config.core.v3.LocalityR\blocality\DC2R\n\
      \\DLEendpoints_health\CAN\STX \ETX(\v2'.envoy.service.health.v3.EndpointHealthR\SIendpointsHealth"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        locality__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "locality"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.Locality)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'locality")) ::
              Data.ProtoLens.FieldDescriptor LocalityEndpointsHealth
        endpointsHealth__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoints_health"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EndpointHealth)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"endpointsHealth")) ::
              Data.ProtoLens.FieldDescriptor LocalityEndpointsHealth
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, locality__field_descriptor),
           (Data.ProtoLens.Tag 2, endpointsHealth__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LocalityEndpointsHealth'_unknownFields
        (\ x__ y__ -> x__ {_LocalityEndpointsHealth'_unknownFields = y__})
  defMessage
    = LocalityEndpointsHealth'_constructor
        {_LocalityEndpointsHealth'locality = Prelude.Nothing,
         _LocalityEndpointsHealth'endpointsHealth = Data.Vector.Generic.empty,
         _LocalityEndpointsHealth'_unknownFields = []}
  parseMessage
    = let
        loop ::
          LocalityEndpointsHealth
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld EndpointHealth
             -> Data.ProtoLens.Encoding.Bytes.Parser LocalityEndpointsHealth
        loop x mutable'endpointsHealth
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'endpointsHealth <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'endpointsHealth)
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
                              (Data.ProtoLens.Field.field @"vec'endpointsHealth")
                              frozen'endpointsHealth
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "locality"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"locality") y x)
                                  mutable'endpointsHealth
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "endpoints_health"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'endpointsHealth y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'endpointsHealth
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'endpointsHealth <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'endpointsHealth)
          "LocalityEndpointsHealth"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'locality") _x
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
                      (Data.ProtoLens.Field.field @"vec'endpointsHealth") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData LocalityEndpointsHealth where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LocalityEndpointsHealth'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_LocalityEndpointsHealth'locality x__)
                (Control.DeepSeq.deepseq
                   (_LocalityEndpointsHealth'endpointsHealth x__) ()))
data HealthDiscoveryService = HealthDiscoveryService {}
instance Data.ProtoLens.Service.Types.Service HealthDiscoveryService where
  type ServiceName HealthDiscoveryService = "HealthDiscoveryService"
  type ServicePackage HealthDiscoveryService = "envoy.service.health.v3"
  type ServiceMethods HealthDiscoveryService = '["fetchHealthCheck",
                                                 "streamHealthCheck"]
instance Data.ProtoLens.Service.Types.HasMethodImpl HealthDiscoveryService "streamHealthCheck" where
  type MethodName HealthDiscoveryService "streamHealthCheck" = "StreamHealthCheck"
  type MethodInput HealthDiscoveryService "streamHealthCheck" = HealthCheckRequestOrEndpointHealthResponse
  type MethodOutput HealthDiscoveryService "streamHealthCheck" = HealthCheckSpecifier
  type MethodStreamingType HealthDiscoveryService "streamHealthCheck" = 'Data.ProtoLens.Service.Types.BiDiStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl HealthDiscoveryService "fetchHealthCheck" where
  type MethodName HealthDiscoveryService "fetchHealthCheck" = "FetchHealthCheck"
  type MethodInput HealthDiscoveryService "fetchHealthCheck" = HealthCheckRequestOrEndpointHealthResponse
  type MethodOutput HealthDiscoveryService "fetchHealthCheck" = HealthCheckSpecifier
  type MethodStreamingType HealthDiscoveryService "fetchHealthCheck" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \!envoy/service/health/v3/hds.proto\DC2\ETBenvoy.service.health.v3\SUB%envoy/config/cluster/v3/cluster.proto\SUB\USenvoy/config/core/v3/base.proto\SUB'envoy/config/core/v3/health_check.proto\SUB2envoy/config/endpoint/v3/endpoint_components.proto\SUB\FSgoogle/api/annotations.proto\SUB\RSgoogle/protobuf/duration.proto\SUB#envoy/annotations/deprecation.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"\200\SOH\n\
    \\n\
    \Capability\DC2b\n\
    \\SYNhealth_check_protocols\CAN\SOH \ETX(\SO2,.envoy.service.health.v3.Capability.ProtocolR\DC4healthCheckProtocols\"(\n\
    \\bProtocol\DC2\b\n\
    \\EOTHTTP\DLE\NUL\DC2\a\n\
    \\ETXTCP\DLE\SOH\DC2\t\n\
    \\ENQREDIS\DLE\STX:,\154\197\136\RS'\n\
    \%envoy.service.discovery.v2.Capability\"\191\SOH\n\
    \\DC2HealthCheckRequest\DC2.\n\
    \\EOTnode\CAN\SOH \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnode\DC2C\n\
    \\n\
    \capability\CAN\STX \SOH(\v2#.envoy.service.health.v3.CapabilityR\n\
    \capability:4\154\197\136\RS/\n\
    \-envoy.service.discovery.v2.HealthCheckRequest\"\203\SOH\n\
    \\SOEndpointHealth\DC2>\n\
    \\bendpoint\CAN\SOH \SOH(\v2\".envoy.config.endpoint.v3.EndpointR\bendpoint\DC2G\n\
    \\rhealth_status\CAN\STX \SOH(\SO2\".envoy.config.core.v3.HealthStatusR\fhealthStatus:0\154\197\136\RS+\n\
    \)envoy.service.discovery.v2.EndpointHealth\"\169\SOH\n\
    \\ETBLocalityEndpointsHealth\DC2:\n\
    \\blocality\CAN\SOH \SOH(\v2\RS.envoy.config.core.v3.LocalityR\blocality\DC2R\n\
    \\DLEendpoints_health\CAN\STX \ETX(\v2'.envoy.service.health.v3.EndpointHealthR\SIendpointsHealth\"\169\SOH\n\
    \\SYNClusterEndpointsHealth\DC2!\n\
    \\fcluster_name\CAN\SOH \SOH(\tR\vclusterName\DC2l\n\
    \\EMlocality_endpoints_health\CAN\STX \ETX(\v20.envoy.service.health.v3.LocalityEndpointsHealthR\ETBlocalityEndpointsHealth\"\158\STX\n\
    \\SYNEndpointHealthResponse\DC2_\n\
    \\DLEendpoints_health\CAN\SOH \ETX(\v2'.envoy.service.health.v3.EndpointHealthR\SIendpointsHealthB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2i\n\
    \\CANcluster_endpoints_health\CAN\STX \ETX(\v2/.envoy.service.health.v3.ClusterEndpointsHealthR\SYNclusterEndpointsHealth:8\154\197\136\RS3\n\
    \1envoy.service.discovery.v2.EndpointHealthResponse\"\216\STX\n\
    \*HealthCheckRequestOrEndpointHealthResponse\DC2_\n\
    \\DC4health_check_request\CAN\SOH \SOH(\v2+.envoy.service.health.v3.HealthCheckRequestH\NULR\DC2healthCheckRequest\DC2k\n\
    \\CANendpoint_health_response\CAN\STX \SOH(\v2/.envoy.service.health.v3.EndpointHealthResponseH\NULR\SYNendpointHealthResponseB\SO\n\
    \\frequest_type:L\154\197\136\RSG\n\
    \Eenvoy.service.discovery.v2.HealthCheckRequestOrEndpointHealthResponse\"\198\SOH\n\
    \\DC1LocalityEndpoints\DC2:\n\
    \\blocality\CAN\SOH \SOH(\v2\RS.envoy.config.core.v3.LocalityR\blocality\DC2@\n\
    \\tendpoints\CAN\STX \ETX(\v2\".envoy.config.endpoint.v3.EndpointR\tendpoints:3\154\197\136\RS.\n\
    \,envoy.service.discovery.v2.LocalityEndpoints\"\129\ETX\n\
    \\DC2ClusterHealthCheck\DC2!\n\
    \\fcluster_name\CAN\SOH \SOH(\tR\vclusterName\DC2F\n\
    \\rhealth_checks\CAN\STX \ETX(\v2!.envoy.config.core.v3.HealthCheckR\fhealthChecks\DC2Y\n\
    \\DC2locality_endpoints\CAN\ETX \ETX(\v2*.envoy.service.health.v3.LocalityEndpointsR\DC1localityEndpoints\DC2o\n\
    \\CANtransport_socket_matches\CAN\EOT \ETX(\v25.envoy.config.cluster.v3.Cluster.TransportSocketMatchR\SYNtransportSocketMatches:4\154\197\136\RS/\n\
    \-envoy.service.discovery.v2.ClusterHealthCheck\"\230\SOH\n\
    \\DC4HealthCheckSpecifier\DC2_\n\
    \\NAKcluster_health_checks\CAN\SOH \ETX(\v2+.envoy.service.health.v3.ClusterHealthCheckR\DC3clusterHealthChecks\DC25\n\
    \\binterval\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\binterval:6\154\197\136\RS1\n\
    \/envoy.service.discovery.v2.HealthCheckSpecifier2\222\STX\n\
    \\SYNHealthDiscoveryService\DC2\141\SOH\n\
    \\DC1StreamHealthCheck\DC2C.envoy.service.health.v3.HealthCheckRequestOrEndpointHealthResponse\SUB-.envoy.service.health.v3.HealthCheckSpecifier\"\NUL(\SOH0\SOH\DC2\179\SOH\n\
    \\DLEFetchHealthCheck\DC2C.envoy.service.health.v3.HealthCheckRequestOrEndpointHealthResponse\SUB-.envoy.service.health.v3.HealthCheckSpecifier\"+\130\211\228\147\STX\FS\"\SUB/v3/discovery:health_check\130\211\228\147\STX\ETX:\SOH*B>\n\
    \%io.envoyproxy.envoy.service.health.v3B\bHdsProtoP\SOH\136\SOH\SOH\186\128\200\209\ACK\STX\DLE\STXJ\131\&3\n\
    \\a\DC2\ENQ\NUL\NUL\187\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL \n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL/\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL1\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL<\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL&\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\n\
    \\NUL(\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\f\NUL-\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\r\NUL'\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\SO\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL>\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\DLE\NUL>\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NUL)\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\DC1\NUL)\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC2\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DC2\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC3\NUL$\n\
    \\t\n\
    \\STX\b\DC1\DC2\ETX\DC3\NUL$\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC4\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC4\NULF\n\
    \\136\ETX\n\
    \\STX\ACK\NUL\DC2\EOT\GS\NULK\SOH\SUB\198\STX HDS is Health Discovery Service. It compliments Envoy\226\128\153s health checking\n\
    \ service by designating this Envoy to be a healthchecker for a subset of hosts\n\
    \ in the cluster. The status of these health checks will be reported to the\n\
    \ management server, where it can be aggregated etc and redistributed back to\n\
    \ Envoy through EDS.\n\
    \23 [#protodoc-title: Health Discovery Service (HDS)]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\GS\b\RS\n\
    \\239\DLE\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT@\STXB\ETX\SUB\224\DLE 1. Envoy starts up and if its can_healthcheck option in the static\n\
    \    bootstrap config is enabled, sends HealthCheckRequest to the management\n\
    \    server. It supplies its capabilities (which protocol it can health check\n\
    \    with, what zone it resides in, etc.).\n\
    \ 2. In response to (1), the management server designates this Envoy as a\n\
    \    healthchecker to health check a subset of all upstream hosts for a given\n\
    \    cluster (for example upstream Host 1 and Host 2). It streams\n\
    \    HealthCheckSpecifier messages with cluster related configuration for all\n\
    \    clusters this Envoy is designated to health check. Subsequent\n\
    \    HealthCheckSpecifier message will be sent on changes to:\n\
    \    a. Endpoints to health checks\n\
    \    b. Per cluster configuration change\n\
    \ 3. Envoy creates a health probe based on the HealthCheck config and sends\n\
    \    it to endpoint(ip:port) of Host 1 and 2. Based on the HealthCheck\n\
    \    configuration Envoy waits upon the arrival of the probe response and\n\
    \    looks at the content of the response to decide whether the endpoint is\n\
    \    healthy or not. If a response hasn't been received within the timeout\n\
    \    interval, the endpoint health status is considered TIMEOUT.\n\
    \ 4. Envoy reports results back in an EndpointHealthResponse message.\n\
    \    Envoy streams responses as often as the interval configured by the\n\
    \    management server in HealthCheckSpecifier.\n\
    \ 5. The management Server collects health statuses for all endpoints in the\n\
    \    cluster (for all clusters) and uses this information to construct\n\
    \    EndpointDiscoveryResponse messages.\n\
    \ 6. Once Envoy has a list of upstream endpoints to send traffic to, it load\n\
    \    balances traffic to them without additional health checking. It may\n\
    \    use inline healthcheck (i.e. consider endpoint UNHEALTHY if connection\n\
    \    failed to a particular endpoint to account for health status propagation\n\
    \    delay between HDS and EDS).\n\
    \ By default, can_healthcheck is true. If can_healthcheck is false, Cluster\n\
    \ configuration may not contain HealthCheck message.\n\
    \ TODO(htuch): How is can_healthcheck communicated to CDS to ensure the above\n\
    \ invariant?\n\
    \ TODO(htuch): Add @amb67's diagram.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX@\ACK\ETB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ENQ\DC2\ETX@\CAN\RS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX@\USI\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ACK\DC2\ETXA\SI\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETXA\SYN*\n\
    \\193\SOH\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOTG\STXJ\ETX\SUB\178\SOH TODO(htuch): Unlike the gRPC version, there is no stream-based binding of\n\
    \ request/response. Should we add an identifier to the HealthCheckSpecifier\n\
    \ to bind with the response?\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETXG\ACK\SYN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETXG\ETBA\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETXGL`\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETXH\EOTA\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\EOT\DC2\ETXH\EOTA\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETXI\EOT(\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\a\DC2\ETXI\EOT(\n\
    \t\n\
    \\STX\EOT\NUL\DC2\EOTO\NUL\\\SOH\SUBh Defines supported protocols etc, so the management server can assign proper\n\
    \ endpoints to healthcheck.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETXO\b\DC2\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOTP\STXQ.\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOTP\STXQ.\n\
    \\138\SOH\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOTU\STXY\ETX\SUB| Different Envoy instances may have different capabilities (e.g. Redis)\n\
    \ and/or have ports enabled for different protocols.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETXU\a\SI\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETXV\EOT\r\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETXV\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETXV\v\f\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETXW\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETXW\EOT\a\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETXW\n\
    \\v\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETXX\EOT\SO\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETXX\EOT\t\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETXX\f\r\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX[\STX/\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX[\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX[\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX[\DC4*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX[-.\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT^\NULe\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX^\b\SUB\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT_\STX`6\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT_\STX`6\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXb\STX\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXb\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXb\SYN\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXb\GS\RS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXd\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETXd\STX\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXd\r\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXd\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOTg\NULn\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXg\b\SYN\n\
    \\v\n\
    \\ETX\EOT\STX\a\DC2\EOTh\STXi2\n\
    \\DLE\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\EOTh\STXi2\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXk\STX+\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETXk\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXk\RS&\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXk)*\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXm\STX0\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETXm\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXm\RS+\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXm./\n\
    \C\n\
    \\STX\EOT\ETX\DC2\EOTq\NULu\SOH\SUB7 Group endpoint health by locality under each cluster.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXq\b\US\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXr\STX'\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETXr\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXr\SUB\"\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXr%&\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXt\STX/\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETXt\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETXt\v\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXt\SUB*\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXt-.\n\
    \\159\SOH\n\
    \\STX\EOT\EOT\DC2\EOTy\NUL}\SOH\SUB\146\SOH The health status of endpoints in a cluster. The cluster name and locality\n\
    \ should match the corresponding fields in ClusterHealthCheck message.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXy\b\RS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXz\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXz\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXz\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXz\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX|\STXA\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETX|\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\ETX|\v\"\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX|#<\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX|?@\n\
    \\v\n\
    \\STX\EOT\ENQ\DC2\ENQ\DEL\NUL\137\SOH\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX\DEL\b\RS\n\
    \\r\n\
    \\ETX\EOT\ENQ\a\DC2\ACK\128\SOH\STX\129\SOH:\n\
    \\DC2\n\
    \\b\EOT\ENQ\a\211\136\225\ETX\SOH\DC2\ACK\128\SOH\STX\129\SOH:\n\
    \H\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ACK\132\SOH\STX\133\SOHS\SUB8 Deprecated - Flat list of endpoint health information.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\EOT\132\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\EOT\132\SOH\v\EM\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\132\SOH\SUB*\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\132\SOH-.\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\b\DC2\EOT\133\SOH\ACKR\n\
    \\SO\n\
    \\ACK\EOT\ENQ\STX\NUL\b\ETX\DC2\EOT\133\SOH\a\CAN\n\
    \\DC1\n\
    \\t\EOT\ENQ\STX\NUL\b\242\232\128K\DC2\EOT\133\SOH\SUBQ\n\
    \@\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\136\SOH\STX?\SUB2 Organize Endpoint health information by cluster.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\EOT\DC2\EOT\136\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\EOT\136\SOH\v!\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\136\SOH\":\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\136\SOH=>\n\
    \\f\n\
    \\STX\EOT\ACK\DC2\ACK\139\SOH\NUL\148\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\139\SOH\b2\n\
    \\r\n\
    \\ETX\EOT\ACK\a\DC2\ACK\140\SOH\STX\141\SOHN\n\
    \\DC2\n\
    \\b\EOT\ACK\a\211\136\225\ETX\SOH\DC2\ACK\140\SOH\STX\141\SOHN\n\
    \\SO\n\
    \\EOT\EOT\ACK\b\NUL\DC2\ACK\143\SOH\STX\147\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\ACK\b\NUL\SOH\DC2\EOT\143\SOH\b\DC4\n\
    \\f\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\144\SOH\EOT0\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\EOT\144\SOH\EOT\SYN\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\144\SOH\ETB+\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\144\SOH./\n\
    \\f\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\146\SOH\EOT8\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ACK\DC2\EOT\146\SOH\EOT\SUB\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\146\SOH\ESC3\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\146\SOH67\n\
    \\f\n\
    \\STX\EOT\a\DC2\ACK\150\SOH\NUL\157\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\150\SOH\b\EM\n\
    \\r\n\
    \\ETX\EOT\a\a\DC2\ACK\151\SOH\STX\152\SOH5\n\
    \\DC2\n\
    \\b\EOT\a\a\211\136\225\ETX\SOH\DC2\ACK\151\SOH\STX\152\SOH5\n\
    \\f\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\154\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\EOT\154\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\154\SOH\SUB\"\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\154\SOH%&\n\
    \\f\n\
    \\EOT\EOT\a\STX\SOH\DC2\EOT\156\SOH\STX5\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\EOT\DC2\EOT\156\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ACK\DC2\EOT\156\SOH\v&\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\EOT\156\SOH'0\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\EOT\156\SOH34\n\
    \\169\STX\n\
    \\STX\EOT\b\DC2\ACK\163\SOH\NUL\177\SOH\SOH\SUB\154\STX The cluster name and locality is provided to Envoy for the endpoints that it\n\
    \ health checks to support statistics reporting, logging and debugging by the\n\
    \ Envoy instance (outside of HDS). For maximum usefulness, it should match the\n\
    \ same cluster structure as that provided by EDS.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\163\SOH\b\SUB\n\
    \\r\n\
    \\ETX\EOT\b\a\DC2\ACK\164\SOH\STX\165\SOH6\n\
    \\DC2\n\
    \\b\EOT\b\a\211\136\225\ETX\SOH\DC2\ACK\164\SOH\STX\165\SOH6\n\
    \\f\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\167\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\EOT\167\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\167\SOH\t\NAK\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\167\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\169\SOH\STX8\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\EOT\DC2\EOT\169\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ACK\DC2\EOT\169\SOH\v%\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\169\SOH&3\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\169\SOH67\n\
    \\f\n\
    \\EOT\EOT\b\STX\STX\DC2\EOT\171\SOH\STX4\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\EOT\DC2\EOT\171\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ACK\DC2\EOT\171\SOH\v\FS\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\EOT\171\SOH\GS/\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\EOT\171\SOH23\n\
    \\247\STX\n\
    \\EOT\EOT\b\STX\ETX\DC2\EOT\176\SOH\STXW\SUB\232\STX Optional map that gets filtered by :ref:`health_checks.transport_socket_match_criteria <envoy_v3_api_field_config.core.v3.HealthCheck.transport_socket_match_criteria>`\n\
    \ on connection when health checking. For more details, see\n\
    \ :ref:`config.cluster.v3.Cluster.transport_socket_matches <envoy_v3_api_field_config.cluster.v3.Cluster.transport_socket_matches>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\EOT\DC2\EOT\176\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ACK\DC2\EOT\176\SOH\v9\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\SOH\DC2\EOT\176\SOH:R\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ETX\DC2\EOT\176\SOHUV\n\
    \\f\n\
    \\STX\EOT\t\DC2\ACK\179\SOH\NUL\187\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\179\SOH\b\FS\n\
    \\r\n\
    \\ETX\EOT\t\a\DC2\ACK\180\SOH\STX\181\SOH8\n\
    \\DC2\n\
    \\b\EOT\t\a\211\136\225\ETX\SOH\DC2\ACK\180\SOH\STX\181\SOH8\n\
    \\f\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\183\SOH\STX8\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\EOT\DC2\EOT\183\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\EOT\183\SOH\v\GS\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\183\SOH\RS3\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\183\SOH67\n\
    \(\n\
    \\EOT\EOT\t\STX\SOH\DC2\EOT\186\SOH\STX(\SUB\SUB The default is 1 second.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ACK\DC2\EOT\186\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\EOT\186\SOH\ESC#\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\EOT\186\SOH&'b\ACKproto3"