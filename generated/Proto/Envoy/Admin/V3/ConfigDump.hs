{- This file was auto-generated from envoy/admin/v3/config_dump.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Admin.V3.ConfigDump (
        BootstrapConfigDump(), ClientResourceStatus(..),
        ClientResourceStatus(), ClientResourceStatus'UnrecognizedValue,
        ClustersConfigDump(), ClustersConfigDump'DynamicCluster(),
        ClustersConfigDump'StaticCluster(), ConfigDump(),
        EndpointsConfigDump(), EndpointsConfigDump'DynamicEndpointConfig(),
        EndpointsConfigDump'StaticEndpointConfig(), ListenersConfigDump(),
        ListenersConfigDump'DynamicListener(),
        ListenersConfigDump'DynamicListenerState(),
        ListenersConfigDump'StaticListener(), RoutesConfigDump(),
        RoutesConfigDump'DynamicRouteConfig(),
        RoutesConfigDump'StaticRouteConfig(), ScopedRoutesConfigDump(),
        ScopedRoutesConfigDump'DynamicScopedRouteConfigs(),
        ScopedRoutesConfigDump'InlineScopedRouteConfigs(),
        SecretsConfigDump(), SecretsConfigDump'DynamicSecret(),
        SecretsConfigDump'StaticSecret(), UpdateFailureState()
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
import qualified Proto.Envoy.Config.Bootstrap.V3.Bootstrap
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.bootstrap' @:: Lens' BootstrapConfigDump Proto.Envoy.Config.Bootstrap.V3.Bootstrap.Bootstrap@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'bootstrap' @:: Lens' BootstrapConfigDump (Prelude.Maybe Proto.Envoy.Config.Bootstrap.V3.Bootstrap.Bootstrap)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.lastUpdated' @:: Lens' BootstrapConfigDump Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'lastUpdated' @:: Lens' BootstrapConfigDump (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data BootstrapConfigDump
  = BootstrapConfigDump'_constructor {_BootstrapConfigDump'bootstrap :: !(Prelude.Maybe Proto.Envoy.Config.Bootstrap.V3.Bootstrap.Bootstrap),
                                      _BootstrapConfigDump'lastUpdated :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                      _BootstrapConfigDump'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BootstrapConfigDump where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BootstrapConfigDump "bootstrap" Proto.Envoy.Config.Bootstrap.V3.Bootstrap.Bootstrap where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BootstrapConfigDump'bootstrap
           (\ x__ y__ -> x__ {_BootstrapConfigDump'bootstrap = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BootstrapConfigDump "maybe'bootstrap" (Prelude.Maybe Proto.Envoy.Config.Bootstrap.V3.Bootstrap.Bootstrap) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BootstrapConfigDump'bootstrap
           (\ x__ y__ -> x__ {_BootstrapConfigDump'bootstrap = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BootstrapConfigDump "lastUpdated" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BootstrapConfigDump'lastUpdated
           (\ x__ y__ -> x__ {_BootstrapConfigDump'lastUpdated = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BootstrapConfigDump "maybe'lastUpdated" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BootstrapConfigDump'lastUpdated
           (\ x__ y__ -> x__ {_BootstrapConfigDump'lastUpdated = y__}))
        Prelude.id
instance Data.ProtoLens.Message BootstrapConfigDump where
  messageName _ = Data.Text.pack "envoy.admin.v3.BootstrapConfigDump"
  packedMessageDescriptor _
    = "\n\
      \\DC3BootstrapConfigDump\DC2B\n\
      \\tbootstrap\CAN\SOH \SOH(\v2$.envoy.config.bootstrap.v3.BootstrapR\tbootstrap\DC2=\n\
      \\flast_updated\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated:.\154\197\136\RS)\n\
      \'envoy.admin.v2alpha.BootstrapConfigDump"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bootstrap__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bootstrap"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Bootstrap.V3.Bootstrap.Bootstrap)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bootstrap")) ::
              Data.ProtoLens.FieldDescriptor BootstrapConfigDump
        lastUpdated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_updated"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastUpdated")) ::
              Data.ProtoLens.FieldDescriptor BootstrapConfigDump
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bootstrap__field_descriptor),
           (Data.ProtoLens.Tag 2, lastUpdated__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BootstrapConfigDump'_unknownFields
        (\ x__ y__ -> x__ {_BootstrapConfigDump'_unknownFields = y__})
  defMessage
    = BootstrapConfigDump'_constructor
        {_BootstrapConfigDump'bootstrap = Prelude.Nothing,
         _BootstrapConfigDump'lastUpdated = Prelude.Nothing,
         _BootstrapConfigDump'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BootstrapConfigDump
          -> Data.ProtoLens.Encoding.Bytes.Parser BootstrapConfigDump
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
                                       "bootstrap"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bootstrap") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_updated"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lastUpdated") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BootstrapConfigDump"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'bootstrap") _x
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
                       (Data.ProtoLens.Field.field @"maybe'lastUpdated") _x
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
instance Control.DeepSeq.NFData BootstrapConfigDump where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BootstrapConfigDump'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BootstrapConfigDump'bootstrap x__)
                (Control.DeepSeq.deepseq
                   (_BootstrapConfigDump'lastUpdated x__) ()))
newtype ClientResourceStatus'UnrecognizedValue
  = ClientResourceStatus'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ClientResourceStatus
  = UNKNOWN |
    REQUESTED |
    DOES_NOT_EXIST |
    ACKED |
    NACKED |
    ClientResourceStatus'Unrecognized !ClientResourceStatus'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ClientResourceStatus where
  maybeToEnum 0 = Prelude.Just UNKNOWN
  maybeToEnum 1 = Prelude.Just REQUESTED
  maybeToEnum 2 = Prelude.Just DOES_NOT_EXIST
  maybeToEnum 3 = Prelude.Just ACKED
  maybeToEnum 4 = Prelude.Just NACKED
  maybeToEnum k
    = Prelude.Just
        (ClientResourceStatus'Unrecognized
           (ClientResourceStatus'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum UNKNOWN = "UNKNOWN"
  showEnum REQUESTED = "REQUESTED"
  showEnum DOES_NOT_EXIST = "DOES_NOT_EXIST"
  showEnum ACKED = "ACKED"
  showEnum NACKED = "NACKED"
  showEnum
    (ClientResourceStatus'Unrecognized (ClientResourceStatus'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "UNKNOWN" = Prelude.Just UNKNOWN
    | (Prelude.==) k "REQUESTED" = Prelude.Just REQUESTED
    | (Prelude.==) k "DOES_NOT_EXIST" = Prelude.Just DOES_NOT_EXIST
    | (Prelude.==) k "ACKED" = Prelude.Just ACKED
    | (Prelude.==) k "NACKED" = Prelude.Just NACKED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ClientResourceStatus where
  minBound = UNKNOWN
  maxBound = NACKED
instance Prelude.Enum ClientResourceStatus where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ClientResourceStatus: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum UNKNOWN = 0
  fromEnum REQUESTED = 1
  fromEnum DOES_NOT_EXIST = 2
  fromEnum ACKED = 3
  fromEnum NACKED = 4
  fromEnum
    (ClientResourceStatus'Unrecognized (ClientResourceStatus'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ NACKED
    = Prelude.error
        "ClientResourceStatus.succ: bad argument NACKED. This value would be out of bounds."
  succ UNKNOWN = REQUESTED
  succ REQUESTED = DOES_NOT_EXIST
  succ DOES_NOT_EXIST = ACKED
  succ ACKED = NACKED
  succ (ClientResourceStatus'Unrecognized _)
    = Prelude.error
        "ClientResourceStatus.succ: bad argument: unrecognized value"
  pred UNKNOWN
    = Prelude.error
        "ClientResourceStatus.pred: bad argument UNKNOWN. This value would be out of bounds."
  pred REQUESTED = UNKNOWN
  pred DOES_NOT_EXIST = REQUESTED
  pred ACKED = DOES_NOT_EXIST
  pred NACKED = ACKED
  pred (ClientResourceStatus'Unrecognized _)
    = Prelude.error
        "ClientResourceStatus.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ClientResourceStatus where
  fieldDefault = UNKNOWN
instance Control.DeepSeq.NFData ClientResourceStatus where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.versionInfo' @:: Lens' ClustersConfigDump Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.staticClusters' @:: Lens' ClustersConfigDump [ClustersConfigDump'StaticCluster]@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.vec'staticClusters' @:: Lens' ClustersConfigDump (Data.Vector.Vector ClustersConfigDump'StaticCluster)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.dynamicActiveClusters' @:: Lens' ClustersConfigDump [ClustersConfigDump'DynamicCluster]@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.vec'dynamicActiveClusters' @:: Lens' ClustersConfigDump (Data.Vector.Vector ClustersConfigDump'DynamicCluster)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.dynamicWarmingClusters' @:: Lens' ClustersConfigDump [ClustersConfigDump'DynamicCluster]@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.vec'dynamicWarmingClusters' @:: Lens' ClustersConfigDump (Data.Vector.Vector ClustersConfigDump'DynamicCluster)@ -}
data ClustersConfigDump
  = ClustersConfigDump'_constructor {_ClustersConfigDump'versionInfo :: !Data.Text.Text,
                                     _ClustersConfigDump'staticClusters :: !(Data.Vector.Vector ClustersConfigDump'StaticCluster),
                                     _ClustersConfigDump'dynamicActiveClusters :: !(Data.Vector.Vector ClustersConfigDump'DynamicCluster),
                                     _ClustersConfigDump'dynamicWarmingClusters :: !(Data.Vector.Vector ClustersConfigDump'DynamicCluster),
                                     _ClustersConfigDump'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClustersConfigDump where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClustersConfigDump "versionInfo" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClustersConfigDump'versionInfo
           (\ x__ y__ -> x__ {_ClustersConfigDump'versionInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClustersConfigDump "staticClusters" [ClustersConfigDump'StaticCluster] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClustersConfigDump'staticClusters
           (\ x__ y__ -> x__ {_ClustersConfigDump'staticClusters = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ClustersConfigDump "vec'staticClusters" (Data.Vector.Vector ClustersConfigDump'StaticCluster) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClustersConfigDump'staticClusters
           (\ x__ y__ -> x__ {_ClustersConfigDump'staticClusters = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClustersConfigDump "dynamicActiveClusters" [ClustersConfigDump'DynamicCluster] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClustersConfigDump'dynamicActiveClusters
           (\ x__ y__
              -> x__ {_ClustersConfigDump'dynamicActiveClusters = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ClustersConfigDump "vec'dynamicActiveClusters" (Data.Vector.Vector ClustersConfigDump'DynamicCluster) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClustersConfigDump'dynamicActiveClusters
           (\ x__ y__
              -> x__ {_ClustersConfigDump'dynamicActiveClusters = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClustersConfigDump "dynamicWarmingClusters" [ClustersConfigDump'DynamicCluster] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClustersConfigDump'dynamicWarmingClusters
           (\ x__ y__
              -> x__ {_ClustersConfigDump'dynamicWarmingClusters = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ClustersConfigDump "vec'dynamicWarmingClusters" (Data.Vector.Vector ClustersConfigDump'DynamicCluster) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClustersConfigDump'dynamicWarmingClusters
           (\ x__ y__
              -> x__ {_ClustersConfigDump'dynamicWarmingClusters = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClustersConfigDump where
  messageName _ = Data.Text.pack "envoy.admin.v3.ClustersConfigDump"
  packedMessageDescriptor _
    = "\n\
      \\DC2ClustersConfigDump\DC2!\n\
      \\fversion_info\CAN\SOH \SOH(\tR\vversionInfo\DC2Y\n\
      \\SIstatic_clusters\CAN\STX \ETX(\v20.envoy.admin.v3.ClustersConfigDump.StaticClusterR\SOstaticClusters\DC2i\n\
      \\ETBdynamic_active_clusters\CAN\ETX \ETX(\v21.envoy.admin.v3.ClustersConfigDump.DynamicClusterR\NAKdynamicActiveClusters\DC2k\n\
      \\CANdynamic_warming_clusters\CAN\EOT \ETX(\v21.envoy.admin.v3.ClustersConfigDump.DynamicClusterR\SYNdynamicWarmingClusters\SUB\187\SOH\n\
      \\rStaticCluster\DC2.\n\
      \\acluster\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\acluster\DC2=\n\
      \\flast_updated\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated:;\154\197\136\RS6\n\
      \4envoy.admin.v2alpha.ClustersConfigDump.StaticCluster\SUB\240\STX\n\
      \\SODynamicCluster\DC2!\n\
      \\fversion_info\CAN\SOH \SOH(\tR\vversionInfo\DC2.\n\
      \\acluster\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\acluster\DC2=\n\
      \\flast_updated\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated\DC2C\n\
      \\verror_state\CAN\EOT \SOH(\v2\".envoy.admin.v3.UpdateFailureStateR\n\
      \errorState\DC2I\n\
      \\rclient_status\CAN\ENQ \SOH(\SO2$.envoy.admin.v3.ClientResourceStatusR\fclientStatus:<\154\197\136\RS7\n\
      \5envoy.admin.v2alpha.ClustersConfigDump.DynamicCluster:-\154\197\136\RS(\n\
      \&envoy.admin.v2alpha.ClustersConfigDump"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        versionInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version_info"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"versionInfo")) ::
              Data.ProtoLens.FieldDescriptor ClustersConfigDump
        staticClusters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "static_clusters"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ClustersConfigDump'StaticCluster)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"staticClusters")) ::
              Data.ProtoLens.FieldDescriptor ClustersConfigDump
        dynamicActiveClusters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dynamic_active_clusters"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ClustersConfigDump'DynamicCluster)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"dynamicActiveClusters")) ::
              Data.ProtoLens.FieldDescriptor ClustersConfigDump
        dynamicWarmingClusters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dynamic_warming_clusters"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ClustersConfigDump'DynamicCluster)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"dynamicWarmingClusters")) ::
              Data.ProtoLens.FieldDescriptor ClustersConfigDump
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, versionInfo__field_descriptor),
           (Data.ProtoLens.Tag 2, staticClusters__field_descriptor),
           (Data.ProtoLens.Tag 3, dynamicActiveClusters__field_descriptor),
           (Data.ProtoLens.Tag 4, dynamicWarmingClusters__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClustersConfigDump'_unknownFields
        (\ x__ y__ -> x__ {_ClustersConfigDump'_unknownFields = y__})
  defMessage
    = ClustersConfigDump'_constructor
        {_ClustersConfigDump'versionInfo = Data.ProtoLens.fieldDefault,
         _ClustersConfigDump'staticClusters = Data.Vector.Generic.empty,
         _ClustersConfigDump'dynamicActiveClusters = Data.Vector.Generic.empty,
         _ClustersConfigDump'dynamicWarmingClusters = Data.Vector.Generic.empty,
         _ClustersConfigDump'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClustersConfigDump
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ClustersConfigDump'DynamicCluster
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ClustersConfigDump'DynamicCluster
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ClustersConfigDump'StaticCluster
                   -> Data.ProtoLens.Encoding.Bytes.Parser ClustersConfigDump
        loop
          x
          mutable'dynamicActiveClusters
          mutable'dynamicWarmingClusters
          mutable'staticClusters
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'dynamicActiveClusters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                           mutable'dynamicActiveClusters)
                      frozen'dynamicWarmingClusters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                            mutable'dynamicWarmingClusters)
                      frozen'staticClusters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'staticClusters)
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
                              (Data.ProtoLens.Field.field @"vec'dynamicActiveClusters")
                              frozen'dynamicActiveClusters
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'dynamicWarmingClusters")
                                 frozen'dynamicWarmingClusters
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'staticClusters")
                                    frozen'staticClusters
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
                                       "version_info"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"versionInfo") y x)
                                  mutable'dynamicActiveClusters
                                  mutable'dynamicWarmingClusters
                                  mutable'staticClusters
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "static_clusters"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'staticClusters y)
                                loop
                                  x mutable'dynamicActiveClusters mutable'dynamicWarmingClusters v
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "dynamic_active_clusters"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'dynamicActiveClusters y)
                                loop x v mutable'dynamicWarmingClusters mutable'staticClusters
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "dynamic_warming_clusters"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'dynamicWarmingClusters y)
                                loop x mutable'dynamicActiveClusters v mutable'staticClusters
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'dynamicActiveClusters
                                  mutable'dynamicWarmingClusters
                                  mutable'staticClusters
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'dynamicActiveClusters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 Data.ProtoLens.Encoding.Growing.new
              mutable'dynamicWarmingClusters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  Data.ProtoLens.Encoding.Growing.new
              mutable'staticClusters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'dynamicActiveClusters
                mutable'dynamicWarmingClusters
                mutable'staticClusters)
          "ClustersConfigDump"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"versionInfo") _x
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
                      (Data.ProtoLens.Field.field @"vec'staticClusters") _x))
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
                         (Data.ProtoLens.Field.field @"vec'dynamicActiveClusters") _x))
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
                            (Data.ProtoLens.Field.field @"vec'dynamicWarmingClusters") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData ClustersConfigDump where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClustersConfigDump'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ClustersConfigDump'versionInfo x__)
                (Control.DeepSeq.deepseq
                   (_ClustersConfigDump'staticClusters x__)
                   (Control.DeepSeq.deepseq
                      (_ClustersConfigDump'dynamicActiveClusters x__)
                      (Control.DeepSeq.deepseq
                         (_ClustersConfigDump'dynamicWarmingClusters x__) ()))))
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.versionInfo' @:: Lens' ClustersConfigDump'DynamicCluster Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.cluster' @:: Lens' ClustersConfigDump'DynamicCluster Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'cluster' @:: Lens' ClustersConfigDump'DynamicCluster (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.lastUpdated' @:: Lens' ClustersConfigDump'DynamicCluster Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'lastUpdated' @:: Lens' ClustersConfigDump'DynamicCluster (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.errorState' @:: Lens' ClustersConfigDump'DynamicCluster UpdateFailureState@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'errorState' @:: Lens' ClustersConfigDump'DynamicCluster (Prelude.Maybe UpdateFailureState)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.clientStatus' @:: Lens' ClustersConfigDump'DynamicCluster ClientResourceStatus@ -}
data ClustersConfigDump'DynamicCluster
  = ClustersConfigDump'DynamicCluster'_constructor {_ClustersConfigDump'DynamicCluster'versionInfo :: !Data.Text.Text,
                                                    _ClustersConfigDump'DynamicCluster'cluster :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                                    _ClustersConfigDump'DynamicCluster'lastUpdated :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                    _ClustersConfigDump'DynamicCluster'errorState :: !(Prelude.Maybe UpdateFailureState),
                                                    _ClustersConfigDump'DynamicCluster'clientStatus :: !ClientResourceStatus,
                                                    _ClustersConfigDump'DynamicCluster'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClustersConfigDump'DynamicCluster where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClustersConfigDump'DynamicCluster "versionInfo" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClustersConfigDump'DynamicCluster'versionInfo
           (\ x__ y__
              -> x__ {_ClustersConfigDump'DynamicCluster'versionInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClustersConfigDump'DynamicCluster "cluster" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClustersConfigDump'DynamicCluster'cluster
           (\ x__ y__
              -> x__ {_ClustersConfigDump'DynamicCluster'cluster = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClustersConfigDump'DynamicCluster "maybe'cluster" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClustersConfigDump'DynamicCluster'cluster
           (\ x__ y__
              -> x__ {_ClustersConfigDump'DynamicCluster'cluster = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClustersConfigDump'DynamicCluster "lastUpdated" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClustersConfigDump'DynamicCluster'lastUpdated
           (\ x__ y__
              -> x__ {_ClustersConfigDump'DynamicCluster'lastUpdated = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClustersConfigDump'DynamicCluster "maybe'lastUpdated" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClustersConfigDump'DynamicCluster'lastUpdated
           (\ x__ y__
              -> x__ {_ClustersConfigDump'DynamicCluster'lastUpdated = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClustersConfigDump'DynamicCluster "errorState" UpdateFailureState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClustersConfigDump'DynamicCluster'errorState
           (\ x__ y__
              -> x__ {_ClustersConfigDump'DynamicCluster'errorState = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClustersConfigDump'DynamicCluster "maybe'errorState" (Prelude.Maybe UpdateFailureState) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClustersConfigDump'DynamicCluster'errorState
           (\ x__ y__
              -> x__ {_ClustersConfigDump'DynamicCluster'errorState = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClustersConfigDump'DynamicCluster "clientStatus" ClientResourceStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClustersConfigDump'DynamicCluster'clientStatus
           (\ x__ y__
              -> x__ {_ClustersConfigDump'DynamicCluster'clientStatus = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClustersConfigDump'DynamicCluster where
  messageName _
    = Data.Text.pack "envoy.admin.v3.ClustersConfigDump.DynamicCluster"
  packedMessageDescriptor _
    = "\n\
      \\SODynamicCluster\DC2!\n\
      \\fversion_info\CAN\SOH \SOH(\tR\vversionInfo\DC2.\n\
      \\acluster\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\acluster\DC2=\n\
      \\flast_updated\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated\DC2C\n\
      \\verror_state\CAN\EOT \SOH(\v2\".envoy.admin.v3.UpdateFailureStateR\n\
      \errorState\DC2I\n\
      \\rclient_status\CAN\ENQ \SOH(\SO2$.envoy.admin.v3.ClientResourceStatusR\fclientStatus:<\154\197\136\RS7\n\
      \5envoy.admin.v2alpha.ClustersConfigDump.DynamicCluster"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        versionInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version_info"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"versionInfo")) ::
              Data.ProtoLens.FieldDescriptor ClustersConfigDump'DynamicCluster
        cluster__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cluster")) ::
              Data.ProtoLens.FieldDescriptor ClustersConfigDump'DynamicCluster
        lastUpdated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_updated"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastUpdated")) ::
              Data.ProtoLens.FieldDescriptor ClustersConfigDump'DynamicCluster
        errorState__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "error_state"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UpdateFailureState)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'errorState")) ::
              Data.ProtoLens.FieldDescriptor ClustersConfigDump'DynamicCluster
        clientStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "client_status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ClientResourceStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"clientStatus")) ::
              Data.ProtoLens.FieldDescriptor ClustersConfigDump'DynamicCluster
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, versionInfo__field_descriptor),
           (Data.ProtoLens.Tag 2, cluster__field_descriptor),
           (Data.ProtoLens.Tag 3, lastUpdated__field_descriptor),
           (Data.ProtoLens.Tag 4, errorState__field_descriptor),
           (Data.ProtoLens.Tag 5, clientStatus__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClustersConfigDump'DynamicCluster'_unknownFields
        (\ x__ y__
           -> x__ {_ClustersConfigDump'DynamicCluster'_unknownFields = y__})
  defMessage
    = ClustersConfigDump'DynamicCluster'_constructor
        {_ClustersConfigDump'DynamicCluster'versionInfo = Data.ProtoLens.fieldDefault,
         _ClustersConfigDump'DynamicCluster'cluster = Prelude.Nothing,
         _ClustersConfigDump'DynamicCluster'lastUpdated = Prelude.Nothing,
         _ClustersConfigDump'DynamicCluster'errorState = Prelude.Nothing,
         _ClustersConfigDump'DynamicCluster'clientStatus = Data.ProtoLens.fieldDefault,
         _ClustersConfigDump'DynamicCluster'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClustersConfigDump'DynamicCluster
          -> Data.ProtoLens.Encoding.Bytes.Parser ClustersConfigDump'DynamicCluster
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
                                       "version_info"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"versionInfo") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cluster"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cluster") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_updated"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lastUpdated") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "error_state"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"errorState") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "client_status"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"clientStatus") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DynamicCluster"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"versionInfo") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cluster") _x
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
                          (Data.ProtoLens.Field.field @"maybe'lastUpdated") _x
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
                             (Data.ProtoLens.Field.field @"maybe'errorState") _x
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
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"clientStatus") _x
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
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData ClustersConfigDump'DynamicCluster where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClustersConfigDump'DynamicCluster'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ClustersConfigDump'DynamicCluster'versionInfo x__)
                (Control.DeepSeq.deepseq
                   (_ClustersConfigDump'DynamicCluster'cluster x__)
                   (Control.DeepSeq.deepseq
                      (_ClustersConfigDump'DynamicCluster'lastUpdated x__)
                      (Control.DeepSeq.deepseq
                         (_ClustersConfigDump'DynamicCluster'errorState x__)
                         (Control.DeepSeq.deepseq
                            (_ClustersConfigDump'DynamicCluster'clientStatus x__) ())))))
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.cluster' @:: Lens' ClustersConfigDump'StaticCluster Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'cluster' @:: Lens' ClustersConfigDump'StaticCluster (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.lastUpdated' @:: Lens' ClustersConfigDump'StaticCluster Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'lastUpdated' @:: Lens' ClustersConfigDump'StaticCluster (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data ClustersConfigDump'StaticCluster
  = ClustersConfigDump'StaticCluster'_constructor {_ClustersConfigDump'StaticCluster'cluster :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                                   _ClustersConfigDump'StaticCluster'lastUpdated :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                   _ClustersConfigDump'StaticCluster'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClustersConfigDump'StaticCluster where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClustersConfigDump'StaticCluster "cluster" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClustersConfigDump'StaticCluster'cluster
           (\ x__ y__
              -> x__ {_ClustersConfigDump'StaticCluster'cluster = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClustersConfigDump'StaticCluster "maybe'cluster" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClustersConfigDump'StaticCluster'cluster
           (\ x__ y__
              -> x__ {_ClustersConfigDump'StaticCluster'cluster = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClustersConfigDump'StaticCluster "lastUpdated" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClustersConfigDump'StaticCluster'lastUpdated
           (\ x__ y__
              -> x__ {_ClustersConfigDump'StaticCluster'lastUpdated = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClustersConfigDump'StaticCluster "maybe'lastUpdated" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClustersConfigDump'StaticCluster'lastUpdated
           (\ x__ y__
              -> x__ {_ClustersConfigDump'StaticCluster'lastUpdated = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClustersConfigDump'StaticCluster where
  messageName _
    = Data.Text.pack "envoy.admin.v3.ClustersConfigDump.StaticCluster"
  packedMessageDescriptor _
    = "\n\
      \\rStaticCluster\DC2.\n\
      \\acluster\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\acluster\DC2=\n\
      \\flast_updated\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated:;\154\197\136\RS6\n\
      \4envoy.admin.v2alpha.ClustersConfigDump.StaticCluster"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cluster__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cluster")) ::
              Data.ProtoLens.FieldDescriptor ClustersConfigDump'StaticCluster
        lastUpdated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_updated"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastUpdated")) ::
              Data.ProtoLens.FieldDescriptor ClustersConfigDump'StaticCluster
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cluster__field_descriptor),
           (Data.ProtoLens.Tag 2, lastUpdated__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClustersConfigDump'StaticCluster'_unknownFields
        (\ x__ y__
           -> x__ {_ClustersConfigDump'StaticCluster'_unknownFields = y__})
  defMessage
    = ClustersConfigDump'StaticCluster'_constructor
        {_ClustersConfigDump'StaticCluster'cluster = Prelude.Nothing,
         _ClustersConfigDump'StaticCluster'lastUpdated = Prelude.Nothing,
         _ClustersConfigDump'StaticCluster'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClustersConfigDump'StaticCluster
          -> Data.ProtoLens.Encoding.Bytes.Parser ClustersConfigDump'StaticCluster
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
                                       "cluster"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cluster") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_updated"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lastUpdated") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StaticCluster"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cluster") _x
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
                       (Data.ProtoLens.Field.field @"maybe'lastUpdated") _x
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
instance Control.DeepSeq.NFData ClustersConfigDump'StaticCluster where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClustersConfigDump'StaticCluster'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ClustersConfigDump'StaticCluster'cluster x__)
                (Control.DeepSeq.deepseq
                   (_ClustersConfigDump'StaticCluster'lastUpdated x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.configs' @:: Lens' ConfigDump [Proto.Google.Protobuf.Any.Any]@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.vec'configs' @:: Lens' ConfigDump (Data.Vector.Vector Proto.Google.Protobuf.Any.Any)@ -}
data ConfigDump
  = ConfigDump'_constructor {_ConfigDump'configs :: !(Data.Vector.Vector Proto.Google.Protobuf.Any.Any),
                             _ConfigDump'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ConfigDump where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ConfigDump "configs" [Proto.Google.Protobuf.Any.Any] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigDump'configs (\ x__ y__ -> x__ {_ConfigDump'configs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ConfigDump "vec'configs" (Data.Vector.Vector Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigDump'configs (\ x__ y__ -> x__ {_ConfigDump'configs = y__}))
        Prelude.id
instance Data.ProtoLens.Message ConfigDump where
  messageName _ = Data.Text.pack "envoy.admin.v3.ConfigDump"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \ConfigDump\DC2.\n\
      \\aconfigs\CAN\SOH \ETX(\v2\DC4.google.protobuf.AnyR\aconfigs:%\154\197\136\RS \n\
      \\RSenvoy.admin.v2alpha.ConfigDump"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        configs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "configs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"configs")) ::
              Data.ProtoLens.FieldDescriptor ConfigDump
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, configs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ConfigDump'_unknownFields
        (\ x__ y__ -> x__ {_ConfigDump'_unknownFields = y__})
  defMessage
    = ConfigDump'_constructor
        {_ConfigDump'configs = Data.Vector.Generic.empty,
         _ConfigDump'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ConfigDump
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Any.Any
             -> Data.ProtoLens.Encoding.Bytes.Parser ConfigDump
        loop x mutable'configs
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'configs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'configs)
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
                              (Data.ProtoLens.Field.field @"vec'configs") frozen'configs x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "configs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'configs y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'configs
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'configs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'configs)
          "ConfigDump"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'configs") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ConfigDump where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ConfigDump'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ConfigDump'configs x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.staticEndpointConfigs' @:: Lens' EndpointsConfigDump [EndpointsConfigDump'StaticEndpointConfig]@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.vec'staticEndpointConfigs' @:: Lens' EndpointsConfigDump (Data.Vector.Vector EndpointsConfigDump'StaticEndpointConfig)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.dynamicEndpointConfigs' @:: Lens' EndpointsConfigDump [EndpointsConfigDump'DynamicEndpointConfig]@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.vec'dynamicEndpointConfigs' @:: Lens' EndpointsConfigDump (Data.Vector.Vector EndpointsConfigDump'DynamicEndpointConfig)@ -}
data EndpointsConfigDump
  = EndpointsConfigDump'_constructor {_EndpointsConfigDump'staticEndpointConfigs :: !(Data.Vector.Vector EndpointsConfigDump'StaticEndpointConfig),
                                      _EndpointsConfigDump'dynamicEndpointConfigs :: !(Data.Vector.Vector EndpointsConfigDump'DynamicEndpointConfig),
                                      _EndpointsConfigDump'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EndpointsConfigDump where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EndpointsConfigDump "staticEndpointConfigs" [EndpointsConfigDump'StaticEndpointConfig] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointsConfigDump'staticEndpointConfigs
           (\ x__ y__
              -> x__ {_EndpointsConfigDump'staticEndpointConfigs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField EndpointsConfigDump "vec'staticEndpointConfigs" (Data.Vector.Vector EndpointsConfigDump'StaticEndpointConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointsConfigDump'staticEndpointConfigs
           (\ x__ y__
              -> x__ {_EndpointsConfigDump'staticEndpointConfigs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EndpointsConfigDump "dynamicEndpointConfigs" [EndpointsConfigDump'DynamicEndpointConfig] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointsConfigDump'dynamicEndpointConfigs
           (\ x__ y__
              -> x__ {_EndpointsConfigDump'dynamicEndpointConfigs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField EndpointsConfigDump "vec'dynamicEndpointConfigs" (Data.Vector.Vector EndpointsConfigDump'DynamicEndpointConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointsConfigDump'dynamicEndpointConfigs
           (\ x__ y__
              -> x__ {_EndpointsConfigDump'dynamicEndpointConfigs = y__}))
        Prelude.id
instance Data.ProtoLens.Message EndpointsConfigDump where
  messageName _ = Data.Text.pack "envoy.admin.v3.EndpointsConfigDump"
  packedMessageDescriptor _
    = "\n\
      \\DC3EndpointsConfigDump\DC2p\n\
      \\ETBstatic_endpoint_configs\CAN\STX \ETX(\v28.envoy.admin.v3.EndpointsConfigDump.StaticEndpointConfigR\NAKstaticEndpointConfigs\DC2s\n\
      \\CANdynamic_endpoint_configs\CAN\ETX \ETX(\v29.envoy.admin.v3.EndpointsConfigDump.DynamicEndpointConfigR\SYNdynamicEndpointConfigs\SUB\148\SOH\n\
      \\DC4StaticEndpointConfig\DC2=\n\
      \\SIendpoint_config\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\SOendpointConfig\DC2=\n\
      \\flast_updated\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated\SUB\200\STX\n\
      \\NAKDynamicEndpointConfig\DC2!\n\
      \\fversion_info\CAN\SOH \SOH(\tR\vversionInfo\DC2=\n\
      \\SIendpoint_config\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\SOendpointConfig\DC2=\n\
      \\flast_updated\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated\DC2C\n\
      \\verror_state\CAN\EOT \SOH(\v2\".envoy.admin.v3.UpdateFailureStateR\n\
      \errorState\DC2I\n\
      \\rclient_status\CAN\ENQ \SOH(\SO2$.envoy.admin.v3.ClientResourceStatusR\fclientStatus"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        staticEndpointConfigs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "static_endpoint_configs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EndpointsConfigDump'StaticEndpointConfig)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"staticEndpointConfigs")) ::
              Data.ProtoLens.FieldDescriptor EndpointsConfigDump
        dynamicEndpointConfigs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dynamic_endpoint_configs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EndpointsConfigDump'DynamicEndpointConfig)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"dynamicEndpointConfigs")) ::
              Data.ProtoLens.FieldDescriptor EndpointsConfigDump
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, staticEndpointConfigs__field_descriptor),
           (Data.ProtoLens.Tag 3, dynamicEndpointConfigs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EndpointsConfigDump'_unknownFields
        (\ x__ y__ -> x__ {_EndpointsConfigDump'_unknownFields = y__})
  defMessage
    = EndpointsConfigDump'_constructor
        {_EndpointsConfigDump'staticEndpointConfigs = Data.Vector.Generic.empty,
         _EndpointsConfigDump'dynamicEndpointConfigs = Data.Vector.Generic.empty,
         _EndpointsConfigDump'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EndpointsConfigDump
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld EndpointsConfigDump'DynamicEndpointConfig
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld EndpointsConfigDump'StaticEndpointConfig
                -> Data.ProtoLens.Encoding.Bytes.Parser EndpointsConfigDump
        loop x mutable'dynamicEndpointConfigs mutable'staticEndpointConfigs
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'dynamicEndpointConfigs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                            mutable'dynamicEndpointConfigs)
                      frozen'staticEndpointConfigs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                           mutable'staticEndpointConfigs)
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
                              (Data.ProtoLens.Field.field @"vec'dynamicEndpointConfigs")
                              frozen'dynamicEndpointConfigs
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'staticEndpointConfigs")
                                 frozen'staticEndpointConfigs
                                 x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "static_endpoint_configs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'staticEndpointConfigs y)
                                loop x mutable'dynamicEndpointConfigs v
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "dynamic_endpoint_configs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'dynamicEndpointConfigs y)
                                loop x v mutable'staticEndpointConfigs
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'dynamicEndpointConfigs
                                  mutable'staticEndpointConfigs
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'dynamicEndpointConfigs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  Data.ProtoLens.Encoding.Growing.new
              mutable'staticEndpointConfigs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'dynamicEndpointConfigs
                mutable'staticEndpointConfigs)
          "EndpointsConfigDump"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
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
                   (Data.ProtoLens.Field.field @"vec'staticEndpointConfigs") _x))
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
                      (Data.ProtoLens.Field.field @"vec'dynamicEndpointConfigs") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData EndpointsConfigDump where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EndpointsConfigDump'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EndpointsConfigDump'staticEndpointConfigs x__)
                (Control.DeepSeq.deepseq
                   (_EndpointsConfigDump'dynamicEndpointConfigs x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.versionInfo' @:: Lens' EndpointsConfigDump'DynamicEndpointConfig Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.endpointConfig' @:: Lens' EndpointsConfigDump'DynamicEndpointConfig Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'endpointConfig' @:: Lens' EndpointsConfigDump'DynamicEndpointConfig (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.lastUpdated' @:: Lens' EndpointsConfigDump'DynamicEndpointConfig Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'lastUpdated' @:: Lens' EndpointsConfigDump'DynamicEndpointConfig (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.errorState' @:: Lens' EndpointsConfigDump'DynamicEndpointConfig UpdateFailureState@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'errorState' @:: Lens' EndpointsConfigDump'DynamicEndpointConfig (Prelude.Maybe UpdateFailureState)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.clientStatus' @:: Lens' EndpointsConfigDump'DynamicEndpointConfig ClientResourceStatus@ -}
data EndpointsConfigDump'DynamicEndpointConfig
  = EndpointsConfigDump'DynamicEndpointConfig'_constructor {_EndpointsConfigDump'DynamicEndpointConfig'versionInfo :: !Data.Text.Text,
                                                            _EndpointsConfigDump'DynamicEndpointConfig'endpointConfig :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                                            _EndpointsConfigDump'DynamicEndpointConfig'lastUpdated :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                            _EndpointsConfigDump'DynamicEndpointConfig'errorState :: !(Prelude.Maybe UpdateFailureState),
                                                            _EndpointsConfigDump'DynamicEndpointConfig'clientStatus :: !ClientResourceStatus,
                                                            _EndpointsConfigDump'DynamicEndpointConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EndpointsConfigDump'DynamicEndpointConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EndpointsConfigDump'DynamicEndpointConfig "versionInfo" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointsConfigDump'DynamicEndpointConfig'versionInfo
           (\ x__ y__
              -> x__
                   {_EndpointsConfigDump'DynamicEndpointConfig'versionInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EndpointsConfigDump'DynamicEndpointConfig "endpointConfig" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointsConfigDump'DynamicEndpointConfig'endpointConfig
           (\ x__ y__
              -> x__
                   {_EndpointsConfigDump'DynamicEndpointConfig'endpointConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField EndpointsConfigDump'DynamicEndpointConfig "maybe'endpointConfig" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointsConfigDump'DynamicEndpointConfig'endpointConfig
           (\ x__ y__
              -> x__
                   {_EndpointsConfigDump'DynamicEndpointConfig'endpointConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EndpointsConfigDump'DynamicEndpointConfig "lastUpdated" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointsConfigDump'DynamicEndpointConfig'lastUpdated
           (\ x__ y__
              -> x__
                   {_EndpointsConfigDump'DynamicEndpointConfig'lastUpdated = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField EndpointsConfigDump'DynamicEndpointConfig "maybe'lastUpdated" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointsConfigDump'DynamicEndpointConfig'lastUpdated
           (\ x__ y__
              -> x__
                   {_EndpointsConfigDump'DynamicEndpointConfig'lastUpdated = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EndpointsConfigDump'DynamicEndpointConfig "errorState" UpdateFailureState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointsConfigDump'DynamicEndpointConfig'errorState
           (\ x__ y__
              -> x__
                   {_EndpointsConfigDump'DynamicEndpointConfig'errorState = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField EndpointsConfigDump'DynamicEndpointConfig "maybe'errorState" (Prelude.Maybe UpdateFailureState) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointsConfigDump'DynamicEndpointConfig'errorState
           (\ x__ y__
              -> x__
                   {_EndpointsConfigDump'DynamicEndpointConfig'errorState = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EndpointsConfigDump'DynamicEndpointConfig "clientStatus" ClientResourceStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointsConfigDump'DynamicEndpointConfig'clientStatus
           (\ x__ y__
              -> x__
                   {_EndpointsConfigDump'DynamicEndpointConfig'clientStatus = y__}))
        Prelude.id
instance Data.ProtoLens.Message EndpointsConfigDump'DynamicEndpointConfig where
  messageName _
    = Data.Text.pack
        "envoy.admin.v3.EndpointsConfigDump.DynamicEndpointConfig"
  packedMessageDescriptor _
    = "\n\
      \\NAKDynamicEndpointConfig\DC2!\n\
      \\fversion_info\CAN\SOH \SOH(\tR\vversionInfo\DC2=\n\
      \\SIendpoint_config\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\SOendpointConfig\DC2=\n\
      \\flast_updated\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated\DC2C\n\
      \\verror_state\CAN\EOT \SOH(\v2\".envoy.admin.v3.UpdateFailureStateR\n\
      \errorState\DC2I\n\
      \\rclient_status\CAN\ENQ \SOH(\SO2$.envoy.admin.v3.ClientResourceStatusR\fclientStatus"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        versionInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version_info"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"versionInfo")) ::
              Data.ProtoLens.FieldDescriptor EndpointsConfigDump'DynamicEndpointConfig
        endpointConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoint_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'endpointConfig")) ::
              Data.ProtoLens.FieldDescriptor EndpointsConfigDump'DynamicEndpointConfig
        lastUpdated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_updated"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastUpdated")) ::
              Data.ProtoLens.FieldDescriptor EndpointsConfigDump'DynamicEndpointConfig
        errorState__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "error_state"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UpdateFailureState)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'errorState")) ::
              Data.ProtoLens.FieldDescriptor EndpointsConfigDump'DynamicEndpointConfig
        clientStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "client_status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ClientResourceStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"clientStatus")) ::
              Data.ProtoLens.FieldDescriptor EndpointsConfigDump'DynamicEndpointConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, versionInfo__field_descriptor),
           (Data.ProtoLens.Tag 2, endpointConfig__field_descriptor),
           (Data.ProtoLens.Tag 3, lastUpdated__field_descriptor),
           (Data.ProtoLens.Tag 4, errorState__field_descriptor),
           (Data.ProtoLens.Tag 5, clientStatus__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EndpointsConfigDump'DynamicEndpointConfig'_unknownFields
        (\ x__ y__
           -> x__
                {_EndpointsConfigDump'DynamicEndpointConfig'_unknownFields = y__})
  defMessage
    = EndpointsConfigDump'DynamicEndpointConfig'_constructor
        {_EndpointsConfigDump'DynamicEndpointConfig'versionInfo = Data.ProtoLens.fieldDefault,
         _EndpointsConfigDump'DynamicEndpointConfig'endpointConfig = Prelude.Nothing,
         _EndpointsConfigDump'DynamicEndpointConfig'lastUpdated = Prelude.Nothing,
         _EndpointsConfigDump'DynamicEndpointConfig'errorState = Prelude.Nothing,
         _EndpointsConfigDump'DynamicEndpointConfig'clientStatus = Data.ProtoLens.fieldDefault,
         _EndpointsConfigDump'DynamicEndpointConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EndpointsConfigDump'DynamicEndpointConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser EndpointsConfigDump'DynamicEndpointConfig
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
                                       "version_info"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"versionInfo") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "endpoint_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"endpointConfig") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_updated"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lastUpdated") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "error_state"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"errorState") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "client_status"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"clientStatus") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DynamicEndpointConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"versionInfo") _x
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
                       (Data.ProtoLens.Field.field @"maybe'endpointConfig") _x
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
                          (Data.ProtoLens.Field.field @"maybe'lastUpdated") _x
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
                             (Data.ProtoLens.Field.field @"maybe'errorState") _x
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
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"clientStatus") _x
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
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData EndpointsConfigDump'DynamicEndpointConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EndpointsConfigDump'DynamicEndpointConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EndpointsConfigDump'DynamicEndpointConfig'versionInfo x__)
                (Control.DeepSeq.deepseq
                   (_EndpointsConfigDump'DynamicEndpointConfig'endpointConfig x__)
                   (Control.DeepSeq.deepseq
                      (_EndpointsConfigDump'DynamicEndpointConfig'lastUpdated x__)
                      (Control.DeepSeq.deepseq
                         (_EndpointsConfigDump'DynamicEndpointConfig'errorState x__)
                         (Control.DeepSeq.deepseq
                            (_EndpointsConfigDump'DynamicEndpointConfig'clientStatus x__)
                            ())))))
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.endpointConfig' @:: Lens' EndpointsConfigDump'StaticEndpointConfig Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'endpointConfig' @:: Lens' EndpointsConfigDump'StaticEndpointConfig (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.lastUpdated' @:: Lens' EndpointsConfigDump'StaticEndpointConfig Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'lastUpdated' @:: Lens' EndpointsConfigDump'StaticEndpointConfig (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data EndpointsConfigDump'StaticEndpointConfig
  = EndpointsConfigDump'StaticEndpointConfig'_constructor {_EndpointsConfigDump'StaticEndpointConfig'endpointConfig :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                                           _EndpointsConfigDump'StaticEndpointConfig'lastUpdated :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                           _EndpointsConfigDump'StaticEndpointConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EndpointsConfigDump'StaticEndpointConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EndpointsConfigDump'StaticEndpointConfig "endpointConfig" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointsConfigDump'StaticEndpointConfig'endpointConfig
           (\ x__ y__
              -> x__
                   {_EndpointsConfigDump'StaticEndpointConfig'endpointConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField EndpointsConfigDump'StaticEndpointConfig "maybe'endpointConfig" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointsConfigDump'StaticEndpointConfig'endpointConfig
           (\ x__ y__
              -> x__
                   {_EndpointsConfigDump'StaticEndpointConfig'endpointConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EndpointsConfigDump'StaticEndpointConfig "lastUpdated" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointsConfigDump'StaticEndpointConfig'lastUpdated
           (\ x__ y__
              -> x__
                   {_EndpointsConfigDump'StaticEndpointConfig'lastUpdated = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField EndpointsConfigDump'StaticEndpointConfig "maybe'lastUpdated" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointsConfigDump'StaticEndpointConfig'lastUpdated
           (\ x__ y__
              -> x__
                   {_EndpointsConfigDump'StaticEndpointConfig'lastUpdated = y__}))
        Prelude.id
instance Data.ProtoLens.Message EndpointsConfigDump'StaticEndpointConfig where
  messageName _
    = Data.Text.pack
        "envoy.admin.v3.EndpointsConfigDump.StaticEndpointConfig"
  packedMessageDescriptor _
    = "\n\
      \\DC4StaticEndpointConfig\DC2=\n\
      \\SIendpoint_config\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\SOendpointConfig\DC2=\n\
      \\flast_updated\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        endpointConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoint_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'endpointConfig")) ::
              Data.ProtoLens.FieldDescriptor EndpointsConfigDump'StaticEndpointConfig
        lastUpdated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_updated"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastUpdated")) ::
              Data.ProtoLens.FieldDescriptor EndpointsConfigDump'StaticEndpointConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, endpointConfig__field_descriptor),
           (Data.ProtoLens.Tag 2, lastUpdated__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EndpointsConfigDump'StaticEndpointConfig'_unknownFields
        (\ x__ y__
           -> x__
                {_EndpointsConfigDump'StaticEndpointConfig'_unknownFields = y__})
  defMessage
    = EndpointsConfigDump'StaticEndpointConfig'_constructor
        {_EndpointsConfigDump'StaticEndpointConfig'endpointConfig = Prelude.Nothing,
         _EndpointsConfigDump'StaticEndpointConfig'lastUpdated = Prelude.Nothing,
         _EndpointsConfigDump'StaticEndpointConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EndpointsConfigDump'StaticEndpointConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser EndpointsConfigDump'StaticEndpointConfig
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
                                       "endpoint_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"endpointConfig") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_updated"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lastUpdated") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StaticEndpointConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'endpointConfig") _x
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
                       (Data.ProtoLens.Field.field @"maybe'lastUpdated") _x
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
instance Control.DeepSeq.NFData EndpointsConfigDump'StaticEndpointConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EndpointsConfigDump'StaticEndpointConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EndpointsConfigDump'StaticEndpointConfig'endpointConfig x__)
                (Control.DeepSeq.deepseq
                   (_EndpointsConfigDump'StaticEndpointConfig'lastUpdated x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.versionInfo' @:: Lens' ListenersConfigDump Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.staticListeners' @:: Lens' ListenersConfigDump [ListenersConfigDump'StaticListener]@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.vec'staticListeners' @:: Lens' ListenersConfigDump (Data.Vector.Vector ListenersConfigDump'StaticListener)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.dynamicListeners' @:: Lens' ListenersConfigDump [ListenersConfigDump'DynamicListener]@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.vec'dynamicListeners' @:: Lens' ListenersConfigDump (Data.Vector.Vector ListenersConfigDump'DynamicListener)@ -}
data ListenersConfigDump
  = ListenersConfigDump'_constructor {_ListenersConfigDump'versionInfo :: !Data.Text.Text,
                                      _ListenersConfigDump'staticListeners :: !(Data.Vector.Vector ListenersConfigDump'StaticListener),
                                      _ListenersConfigDump'dynamicListeners :: !(Data.Vector.Vector ListenersConfigDump'DynamicListener),
                                      _ListenersConfigDump'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListenersConfigDump where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ListenersConfigDump "versionInfo" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenersConfigDump'versionInfo
           (\ x__ y__ -> x__ {_ListenersConfigDump'versionInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListenersConfigDump "staticListeners" [ListenersConfigDump'StaticListener] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenersConfigDump'staticListeners
           (\ x__ y__ -> x__ {_ListenersConfigDump'staticListeners = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ListenersConfigDump "vec'staticListeners" (Data.Vector.Vector ListenersConfigDump'StaticListener) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenersConfigDump'staticListeners
           (\ x__ y__ -> x__ {_ListenersConfigDump'staticListeners = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListenersConfigDump "dynamicListeners" [ListenersConfigDump'DynamicListener] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenersConfigDump'dynamicListeners
           (\ x__ y__ -> x__ {_ListenersConfigDump'dynamicListeners = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ListenersConfigDump "vec'dynamicListeners" (Data.Vector.Vector ListenersConfigDump'DynamicListener) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenersConfigDump'dynamicListeners
           (\ x__ y__ -> x__ {_ListenersConfigDump'dynamicListeners = y__}))
        Prelude.id
instance Data.ProtoLens.Message ListenersConfigDump where
  messageName _ = Data.Text.pack "envoy.admin.v3.ListenersConfigDump"
  packedMessageDescriptor _
    = "\n\
      \\DC3ListenersConfigDump\DC2!\n\
      \\fversion_info\CAN\SOH \SOH(\tR\vversionInfo\DC2]\n\
      \\DLEstatic_listeners\CAN\STX \ETX(\v22.envoy.admin.v3.ListenersConfigDump.StaticListenerR\SIstaticListeners\DC2`\n\
      \\DC1dynamic_listeners\CAN\ETX \ETX(\v23.envoy.admin.v3.ListenersConfigDump.DynamicListenerR\DLEdynamicListeners\SUB\192\SOH\n\
      \\SOStaticListener\DC20\n\
      \\blistener\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\blistener\DC2=\n\
      \\flast_updated\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated:=\154\197\136\RS8\n\
      \6envoy.admin.v2alpha.ListenersConfigDump.StaticListener\SUB\239\SOH\n\
      \\DC4DynamicListenerState\DC2!\n\
      \\fversion_info\CAN\SOH \SOH(\tR\vversionInfo\DC20\n\
      \\blistener\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\blistener\DC2=\n\
      \\flast_updated\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated:C\154\197\136\RS>\n\
      \<envoy.admin.v2alpha.ListenersConfigDump.DynamicListenerState\SUB\146\EOT\n\
      \\SIDynamicListener\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2[\n\
      \\factive_state\CAN\STX \SOH(\v28.envoy.admin.v3.ListenersConfigDump.DynamicListenerStateR\vactiveState\DC2]\n\
      \\rwarming_state\CAN\ETX \SOH(\v28.envoy.admin.v3.ListenersConfigDump.DynamicListenerStateR\fwarmingState\DC2_\n\
      \\SOdraining_state\CAN\EOT \SOH(\v28.envoy.admin.v3.ListenersConfigDump.DynamicListenerStateR\rdrainingState\DC2C\n\
      \\verror_state\CAN\ENQ \SOH(\v2\".envoy.admin.v3.UpdateFailureStateR\n\
      \errorState\DC2I\n\
      \\rclient_status\CAN\ACK \SOH(\SO2$.envoy.admin.v3.ClientResourceStatusR\fclientStatus:>\154\197\136\RS9\n\
      \7envoy.admin.v2alpha.ListenersConfigDump.DynamicListener:.\154\197\136\RS)\n\
      \'envoy.admin.v2alpha.ListenersConfigDump"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        versionInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version_info"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"versionInfo")) ::
              Data.ProtoLens.FieldDescriptor ListenersConfigDump
        staticListeners__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "static_listeners"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ListenersConfigDump'StaticListener)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"staticListeners")) ::
              Data.ProtoLens.FieldDescriptor ListenersConfigDump
        dynamicListeners__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dynamic_listeners"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ListenersConfigDump'DynamicListener)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"dynamicListeners")) ::
              Data.ProtoLens.FieldDescriptor ListenersConfigDump
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, versionInfo__field_descriptor),
           (Data.ProtoLens.Tag 2, staticListeners__field_descriptor),
           (Data.ProtoLens.Tag 3, dynamicListeners__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListenersConfigDump'_unknownFields
        (\ x__ y__ -> x__ {_ListenersConfigDump'_unknownFields = y__})
  defMessage
    = ListenersConfigDump'_constructor
        {_ListenersConfigDump'versionInfo = Data.ProtoLens.fieldDefault,
         _ListenersConfigDump'staticListeners = Data.Vector.Generic.empty,
         _ListenersConfigDump'dynamicListeners = Data.Vector.Generic.empty,
         _ListenersConfigDump'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListenersConfigDump
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ListenersConfigDump'DynamicListener
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ListenersConfigDump'StaticListener
                -> Data.ProtoLens.Encoding.Bytes.Parser ListenersConfigDump
        loop x mutable'dynamicListeners mutable'staticListeners
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'dynamicListeners <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'dynamicListeners)
                      frozen'staticListeners <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'staticListeners)
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
                              (Data.ProtoLens.Field.field @"vec'dynamicListeners")
                              frozen'dynamicListeners
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'staticListeners")
                                 frozen'staticListeners
                                 x)))
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
                                       "version_info"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"versionInfo") y x)
                                  mutable'dynamicListeners
                                  mutable'staticListeners
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "static_listeners"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'staticListeners y)
                                loop x mutable'dynamicListeners v
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "dynamic_listeners"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'dynamicListeners y)
                                loop x v mutable'staticListeners
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'dynamicListeners
                                  mutable'staticListeners
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'dynamicListeners <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            Data.ProtoLens.Encoding.Growing.new
              mutable'staticListeners <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'dynamicListeners
                mutable'staticListeners)
          "ListenersConfigDump"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"versionInfo") _x
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
                      (Data.ProtoLens.Field.field @"vec'staticListeners") _x))
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
                         (Data.ProtoLens.Field.field @"vec'dynamicListeners") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ListenersConfigDump where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListenersConfigDump'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ListenersConfigDump'versionInfo x__)
                (Control.DeepSeq.deepseq
                   (_ListenersConfigDump'staticListeners x__)
                   (Control.DeepSeq.deepseq
                      (_ListenersConfigDump'dynamicListeners x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.name' @:: Lens' ListenersConfigDump'DynamicListener Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.activeState' @:: Lens' ListenersConfigDump'DynamicListener ListenersConfigDump'DynamicListenerState@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'activeState' @:: Lens' ListenersConfigDump'DynamicListener (Prelude.Maybe ListenersConfigDump'DynamicListenerState)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.warmingState' @:: Lens' ListenersConfigDump'DynamicListener ListenersConfigDump'DynamicListenerState@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'warmingState' @:: Lens' ListenersConfigDump'DynamicListener (Prelude.Maybe ListenersConfigDump'DynamicListenerState)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.drainingState' @:: Lens' ListenersConfigDump'DynamicListener ListenersConfigDump'DynamicListenerState@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'drainingState' @:: Lens' ListenersConfigDump'DynamicListener (Prelude.Maybe ListenersConfigDump'DynamicListenerState)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.errorState' @:: Lens' ListenersConfigDump'DynamicListener UpdateFailureState@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'errorState' @:: Lens' ListenersConfigDump'DynamicListener (Prelude.Maybe UpdateFailureState)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.clientStatus' @:: Lens' ListenersConfigDump'DynamicListener ClientResourceStatus@ -}
data ListenersConfigDump'DynamicListener
  = ListenersConfigDump'DynamicListener'_constructor {_ListenersConfigDump'DynamicListener'name :: !Data.Text.Text,
                                                      _ListenersConfigDump'DynamicListener'activeState :: !(Prelude.Maybe ListenersConfigDump'DynamicListenerState),
                                                      _ListenersConfigDump'DynamicListener'warmingState :: !(Prelude.Maybe ListenersConfigDump'DynamicListenerState),
                                                      _ListenersConfigDump'DynamicListener'drainingState :: !(Prelude.Maybe ListenersConfigDump'DynamicListenerState),
                                                      _ListenersConfigDump'DynamicListener'errorState :: !(Prelude.Maybe UpdateFailureState),
                                                      _ListenersConfigDump'DynamicListener'clientStatus :: !ClientResourceStatus,
                                                      _ListenersConfigDump'DynamicListener'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListenersConfigDump'DynamicListener where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ListenersConfigDump'DynamicListener "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenersConfigDump'DynamicListener'name
           (\ x__ y__
              -> x__ {_ListenersConfigDump'DynamicListener'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListenersConfigDump'DynamicListener "activeState" ListenersConfigDump'DynamicListenerState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenersConfigDump'DynamicListener'activeState
           (\ x__ y__
              -> x__ {_ListenersConfigDump'DynamicListener'activeState = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ListenersConfigDump'DynamicListener "maybe'activeState" (Prelude.Maybe ListenersConfigDump'DynamicListenerState) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenersConfigDump'DynamicListener'activeState
           (\ x__ y__
              -> x__ {_ListenersConfigDump'DynamicListener'activeState = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListenersConfigDump'DynamicListener "warmingState" ListenersConfigDump'DynamicListenerState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenersConfigDump'DynamicListener'warmingState
           (\ x__ y__
              -> x__ {_ListenersConfigDump'DynamicListener'warmingState = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ListenersConfigDump'DynamicListener "maybe'warmingState" (Prelude.Maybe ListenersConfigDump'DynamicListenerState) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenersConfigDump'DynamicListener'warmingState
           (\ x__ y__
              -> x__ {_ListenersConfigDump'DynamicListener'warmingState = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListenersConfigDump'DynamicListener "drainingState" ListenersConfigDump'DynamicListenerState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenersConfigDump'DynamicListener'drainingState
           (\ x__ y__
              -> x__ {_ListenersConfigDump'DynamicListener'drainingState = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ListenersConfigDump'DynamicListener "maybe'drainingState" (Prelude.Maybe ListenersConfigDump'DynamicListenerState) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenersConfigDump'DynamicListener'drainingState
           (\ x__ y__
              -> x__ {_ListenersConfigDump'DynamicListener'drainingState = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListenersConfigDump'DynamicListener "errorState" UpdateFailureState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenersConfigDump'DynamicListener'errorState
           (\ x__ y__
              -> x__ {_ListenersConfigDump'DynamicListener'errorState = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ListenersConfigDump'DynamicListener "maybe'errorState" (Prelude.Maybe UpdateFailureState) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenersConfigDump'DynamicListener'errorState
           (\ x__ y__
              -> x__ {_ListenersConfigDump'DynamicListener'errorState = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListenersConfigDump'DynamicListener "clientStatus" ClientResourceStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenersConfigDump'DynamicListener'clientStatus
           (\ x__ y__
              -> x__ {_ListenersConfigDump'DynamicListener'clientStatus = y__}))
        Prelude.id
instance Data.ProtoLens.Message ListenersConfigDump'DynamicListener where
  messageName _
    = Data.Text.pack
        "envoy.admin.v3.ListenersConfigDump.DynamicListener"
  packedMessageDescriptor _
    = "\n\
      \\SIDynamicListener\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2[\n\
      \\factive_state\CAN\STX \SOH(\v28.envoy.admin.v3.ListenersConfigDump.DynamicListenerStateR\vactiveState\DC2]\n\
      \\rwarming_state\CAN\ETX \SOH(\v28.envoy.admin.v3.ListenersConfigDump.DynamicListenerStateR\fwarmingState\DC2_\n\
      \\SOdraining_state\CAN\EOT \SOH(\v28.envoy.admin.v3.ListenersConfigDump.DynamicListenerStateR\rdrainingState\DC2C\n\
      \\verror_state\CAN\ENQ \SOH(\v2\".envoy.admin.v3.UpdateFailureStateR\n\
      \errorState\DC2I\n\
      \\rclient_status\CAN\ACK \SOH(\SO2$.envoy.admin.v3.ClientResourceStatusR\fclientStatus:>\154\197\136\RS9\n\
      \7envoy.admin.v2alpha.ListenersConfigDump.DynamicListener"
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
              Data.ProtoLens.FieldDescriptor ListenersConfigDump'DynamicListener
        activeState__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "active_state"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ListenersConfigDump'DynamicListenerState)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'activeState")) ::
              Data.ProtoLens.FieldDescriptor ListenersConfigDump'DynamicListener
        warmingState__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "warming_state"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ListenersConfigDump'DynamicListenerState)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'warmingState")) ::
              Data.ProtoLens.FieldDescriptor ListenersConfigDump'DynamicListener
        drainingState__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "draining_state"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ListenersConfigDump'DynamicListenerState)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'drainingState")) ::
              Data.ProtoLens.FieldDescriptor ListenersConfigDump'DynamicListener
        errorState__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "error_state"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UpdateFailureState)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'errorState")) ::
              Data.ProtoLens.FieldDescriptor ListenersConfigDump'DynamicListener
        clientStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "client_status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ClientResourceStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"clientStatus")) ::
              Data.ProtoLens.FieldDescriptor ListenersConfigDump'DynamicListener
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, activeState__field_descriptor),
           (Data.ProtoLens.Tag 3, warmingState__field_descriptor),
           (Data.ProtoLens.Tag 4, drainingState__field_descriptor),
           (Data.ProtoLens.Tag 5, errorState__field_descriptor),
           (Data.ProtoLens.Tag 6, clientStatus__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListenersConfigDump'DynamicListener'_unknownFields
        (\ x__ y__
           -> x__ {_ListenersConfigDump'DynamicListener'_unknownFields = y__})
  defMessage
    = ListenersConfigDump'DynamicListener'_constructor
        {_ListenersConfigDump'DynamicListener'name = Data.ProtoLens.fieldDefault,
         _ListenersConfigDump'DynamicListener'activeState = Prelude.Nothing,
         _ListenersConfigDump'DynamicListener'warmingState = Prelude.Nothing,
         _ListenersConfigDump'DynamicListener'drainingState = Prelude.Nothing,
         _ListenersConfigDump'DynamicListener'errorState = Prelude.Nothing,
         _ListenersConfigDump'DynamicListener'clientStatus = Data.ProtoLens.fieldDefault,
         _ListenersConfigDump'DynamicListener'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListenersConfigDump'DynamicListener
          -> Data.ProtoLens.Encoding.Bytes.Parser ListenersConfigDump'DynamicListener
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
                                       "active_state"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"activeState") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "warming_state"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"warmingState") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "draining_state"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"drainingState") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "error_state"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"errorState") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "client_status"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"clientStatus") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DynamicListener"
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
                       (Data.ProtoLens.Field.field @"maybe'activeState") _x
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
                          (Data.ProtoLens.Field.field @"maybe'warmingState") _x
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
                             (Data.ProtoLens.Field.field @"maybe'drainingState") _x
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
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'errorState") _x
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
                            (let
                               _v
                                 = Lens.Family2.view (Data.ProtoLens.Field.field @"clientStatus") _x
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
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData ListenersConfigDump'DynamicListener where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListenersConfigDump'DynamicListener'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ListenersConfigDump'DynamicListener'name x__)
                (Control.DeepSeq.deepseq
                   (_ListenersConfigDump'DynamicListener'activeState x__)
                   (Control.DeepSeq.deepseq
                      (_ListenersConfigDump'DynamicListener'warmingState x__)
                      (Control.DeepSeq.deepseq
                         (_ListenersConfigDump'DynamicListener'drainingState x__)
                         (Control.DeepSeq.deepseq
                            (_ListenersConfigDump'DynamicListener'errorState x__)
                            (Control.DeepSeq.deepseq
                               (_ListenersConfigDump'DynamicListener'clientStatus x__) ()))))))
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.versionInfo' @:: Lens' ListenersConfigDump'DynamicListenerState Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.listener' @:: Lens' ListenersConfigDump'DynamicListenerState Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'listener' @:: Lens' ListenersConfigDump'DynamicListenerState (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.lastUpdated' @:: Lens' ListenersConfigDump'DynamicListenerState Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'lastUpdated' @:: Lens' ListenersConfigDump'DynamicListenerState (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data ListenersConfigDump'DynamicListenerState
  = ListenersConfigDump'DynamicListenerState'_constructor {_ListenersConfigDump'DynamicListenerState'versionInfo :: !Data.Text.Text,
                                                           _ListenersConfigDump'DynamicListenerState'listener :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                                           _ListenersConfigDump'DynamicListenerState'lastUpdated :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                           _ListenersConfigDump'DynamicListenerState'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListenersConfigDump'DynamicListenerState where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ListenersConfigDump'DynamicListenerState "versionInfo" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenersConfigDump'DynamicListenerState'versionInfo
           (\ x__ y__
              -> x__
                   {_ListenersConfigDump'DynamicListenerState'versionInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListenersConfigDump'DynamicListenerState "listener" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenersConfigDump'DynamicListenerState'listener
           (\ x__ y__
              -> x__ {_ListenersConfigDump'DynamicListenerState'listener = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ListenersConfigDump'DynamicListenerState "maybe'listener" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenersConfigDump'DynamicListenerState'listener
           (\ x__ y__
              -> x__ {_ListenersConfigDump'DynamicListenerState'listener = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListenersConfigDump'DynamicListenerState "lastUpdated" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenersConfigDump'DynamicListenerState'lastUpdated
           (\ x__ y__
              -> x__
                   {_ListenersConfigDump'DynamicListenerState'lastUpdated = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ListenersConfigDump'DynamicListenerState "maybe'lastUpdated" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenersConfigDump'DynamicListenerState'lastUpdated
           (\ x__ y__
              -> x__
                   {_ListenersConfigDump'DynamicListenerState'lastUpdated = y__}))
        Prelude.id
instance Data.ProtoLens.Message ListenersConfigDump'DynamicListenerState where
  messageName _
    = Data.Text.pack
        "envoy.admin.v3.ListenersConfigDump.DynamicListenerState"
  packedMessageDescriptor _
    = "\n\
      \\DC4DynamicListenerState\DC2!\n\
      \\fversion_info\CAN\SOH \SOH(\tR\vversionInfo\DC20\n\
      \\blistener\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\blistener\DC2=\n\
      \\flast_updated\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated:C\154\197\136\RS>\n\
      \<envoy.admin.v2alpha.ListenersConfigDump.DynamicListenerState"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        versionInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version_info"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"versionInfo")) ::
              Data.ProtoLens.FieldDescriptor ListenersConfigDump'DynamicListenerState
        listener__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "listener"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'listener")) ::
              Data.ProtoLens.FieldDescriptor ListenersConfigDump'DynamicListenerState
        lastUpdated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_updated"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastUpdated")) ::
              Data.ProtoLens.FieldDescriptor ListenersConfigDump'DynamicListenerState
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, versionInfo__field_descriptor),
           (Data.ProtoLens.Tag 2, listener__field_descriptor),
           (Data.ProtoLens.Tag 3, lastUpdated__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListenersConfigDump'DynamicListenerState'_unknownFields
        (\ x__ y__
           -> x__
                {_ListenersConfigDump'DynamicListenerState'_unknownFields = y__})
  defMessage
    = ListenersConfigDump'DynamicListenerState'_constructor
        {_ListenersConfigDump'DynamicListenerState'versionInfo = Data.ProtoLens.fieldDefault,
         _ListenersConfigDump'DynamicListenerState'listener = Prelude.Nothing,
         _ListenersConfigDump'DynamicListenerState'lastUpdated = Prelude.Nothing,
         _ListenersConfigDump'DynamicListenerState'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListenersConfigDump'DynamicListenerState
          -> Data.ProtoLens.Encoding.Bytes.Parser ListenersConfigDump'DynamicListenerState
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
                                       "version_info"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"versionInfo") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "listener"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"listener") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_updated"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lastUpdated") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DynamicListenerState"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"versionInfo") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'listener") _x
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
                          (Data.ProtoLens.Field.field @"maybe'lastUpdated") _x
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
instance Control.DeepSeq.NFData ListenersConfigDump'DynamicListenerState where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListenersConfigDump'DynamicListenerState'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ListenersConfigDump'DynamicListenerState'versionInfo x__)
                (Control.DeepSeq.deepseq
                   (_ListenersConfigDump'DynamicListenerState'listener x__)
                   (Control.DeepSeq.deepseq
                      (_ListenersConfigDump'DynamicListenerState'lastUpdated x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.listener' @:: Lens' ListenersConfigDump'StaticListener Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'listener' @:: Lens' ListenersConfigDump'StaticListener (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.lastUpdated' @:: Lens' ListenersConfigDump'StaticListener Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'lastUpdated' @:: Lens' ListenersConfigDump'StaticListener (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data ListenersConfigDump'StaticListener
  = ListenersConfigDump'StaticListener'_constructor {_ListenersConfigDump'StaticListener'listener :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                                     _ListenersConfigDump'StaticListener'lastUpdated :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                     _ListenersConfigDump'StaticListener'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListenersConfigDump'StaticListener where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ListenersConfigDump'StaticListener "listener" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenersConfigDump'StaticListener'listener
           (\ x__ y__
              -> x__ {_ListenersConfigDump'StaticListener'listener = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ListenersConfigDump'StaticListener "maybe'listener" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenersConfigDump'StaticListener'listener
           (\ x__ y__
              -> x__ {_ListenersConfigDump'StaticListener'listener = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListenersConfigDump'StaticListener "lastUpdated" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenersConfigDump'StaticListener'lastUpdated
           (\ x__ y__
              -> x__ {_ListenersConfigDump'StaticListener'lastUpdated = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ListenersConfigDump'StaticListener "maybe'lastUpdated" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenersConfigDump'StaticListener'lastUpdated
           (\ x__ y__
              -> x__ {_ListenersConfigDump'StaticListener'lastUpdated = y__}))
        Prelude.id
instance Data.ProtoLens.Message ListenersConfigDump'StaticListener where
  messageName _
    = Data.Text.pack
        "envoy.admin.v3.ListenersConfigDump.StaticListener"
  packedMessageDescriptor _
    = "\n\
      \\SOStaticListener\DC20\n\
      \\blistener\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\blistener\DC2=\n\
      \\flast_updated\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated:=\154\197\136\RS8\n\
      \6envoy.admin.v2alpha.ListenersConfigDump.StaticListener"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        listener__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "listener"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'listener")) ::
              Data.ProtoLens.FieldDescriptor ListenersConfigDump'StaticListener
        lastUpdated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_updated"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastUpdated")) ::
              Data.ProtoLens.FieldDescriptor ListenersConfigDump'StaticListener
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, listener__field_descriptor),
           (Data.ProtoLens.Tag 2, lastUpdated__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListenersConfigDump'StaticListener'_unknownFields
        (\ x__ y__
           -> x__ {_ListenersConfigDump'StaticListener'_unknownFields = y__})
  defMessage
    = ListenersConfigDump'StaticListener'_constructor
        {_ListenersConfigDump'StaticListener'listener = Prelude.Nothing,
         _ListenersConfigDump'StaticListener'lastUpdated = Prelude.Nothing,
         _ListenersConfigDump'StaticListener'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListenersConfigDump'StaticListener
          -> Data.ProtoLens.Encoding.Bytes.Parser ListenersConfigDump'StaticListener
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
                                       "listener"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"listener") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_updated"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lastUpdated") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StaticListener"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'listener") _x
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
                       (Data.ProtoLens.Field.field @"maybe'lastUpdated") _x
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
instance Control.DeepSeq.NFData ListenersConfigDump'StaticListener where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListenersConfigDump'StaticListener'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ListenersConfigDump'StaticListener'listener x__)
                (Control.DeepSeq.deepseq
                   (_ListenersConfigDump'StaticListener'lastUpdated x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.staticRouteConfigs' @:: Lens' RoutesConfigDump [RoutesConfigDump'StaticRouteConfig]@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.vec'staticRouteConfigs' @:: Lens' RoutesConfigDump (Data.Vector.Vector RoutesConfigDump'StaticRouteConfig)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.dynamicRouteConfigs' @:: Lens' RoutesConfigDump [RoutesConfigDump'DynamicRouteConfig]@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.vec'dynamicRouteConfigs' @:: Lens' RoutesConfigDump (Data.Vector.Vector RoutesConfigDump'DynamicRouteConfig)@ -}
data RoutesConfigDump
  = RoutesConfigDump'_constructor {_RoutesConfigDump'staticRouteConfigs :: !(Data.Vector.Vector RoutesConfigDump'StaticRouteConfig),
                                   _RoutesConfigDump'dynamicRouteConfigs :: !(Data.Vector.Vector RoutesConfigDump'DynamicRouteConfig),
                                   _RoutesConfigDump'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RoutesConfigDump where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RoutesConfigDump "staticRouteConfigs" [RoutesConfigDump'StaticRouteConfig] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutesConfigDump'staticRouteConfigs
           (\ x__ y__ -> x__ {_RoutesConfigDump'staticRouteConfigs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RoutesConfigDump "vec'staticRouteConfigs" (Data.Vector.Vector RoutesConfigDump'StaticRouteConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutesConfigDump'staticRouteConfigs
           (\ x__ y__ -> x__ {_RoutesConfigDump'staticRouteConfigs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RoutesConfigDump "dynamicRouteConfigs" [RoutesConfigDump'DynamicRouteConfig] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutesConfigDump'dynamicRouteConfigs
           (\ x__ y__ -> x__ {_RoutesConfigDump'dynamicRouteConfigs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RoutesConfigDump "vec'dynamicRouteConfigs" (Data.Vector.Vector RoutesConfigDump'DynamicRouteConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutesConfigDump'dynamicRouteConfigs
           (\ x__ y__ -> x__ {_RoutesConfigDump'dynamicRouteConfigs = y__}))
        Prelude.id
instance Data.ProtoLens.Message RoutesConfigDump where
  messageName _ = Data.Text.pack "envoy.admin.v3.RoutesConfigDump"
  packedMessageDescriptor _
    = "\n\
      \\DLERoutesConfigDump\DC2d\n\
      \\DC4static_route_configs\CAN\STX \ETX(\v22.envoy.admin.v3.RoutesConfigDump.StaticRouteConfigR\DC2staticRouteConfigs\DC2g\n\
      \\NAKdynamic_route_configs\CAN\ETX \ETX(\v23.envoy.admin.v3.RoutesConfigDump.DynamicRouteConfigR\DC3dynamicRouteConfigs\SUB\202\SOH\n\
      \\DC1StaticRouteConfig\DC27\n\
      \\froute_config\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\vrouteConfig\DC2=\n\
      \\flast_updated\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated:=\154\197\136\RS8\n\
      \6envoy.admin.v2alpha.RoutesConfigDump.StaticRouteConfig\SUB\255\STX\n\
      \\DC2DynamicRouteConfig\DC2!\n\
      \\fversion_info\CAN\SOH \SOH(\tR\vversionInfo\DC27\n\
      \\froute_config\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\vrouteConfig\DC2=\n\
      \\flast_updated\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated\DC2C\n\
      \\verror_state\CAN\EOT \SOH(\v2\".envoy.admin.v3.UpdateFailureStateR\n\
      \errorState\DC2I\n\
      \\rclient_status\CAN\ENQ \SOH(\SO2$.envoy.admin.v3.ClientResourceStatusR\fclientStatus:>\154\197\136\RS9\n\
      \7envoy.admin.v2alpha.RoutesConfigDump.DynamicRouteConfig:+\154\197\136\RS&\n\
      \$envoy.admin.v2alpha.RoutesConfigDump"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        staticRouteConfigs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "static_route_configs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RoutesConfigDump'StaticRouteConfig)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"staticRouteConfigs")) ::
              Data.ProtoLens.FieldDescriptor RoutesConfigDump
        dynamicRouteConfigs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dynamic_route_configs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RoutesConfigDump'DynamicRouteConfig)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"dynamicRouteConfigs")) ::
              Data.ProtoLens.FieldDescriptor RoutesConfigDump
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, staticRouteConfigs__field_descriptor),
           (Data.ProtoLens.Tag 3, dynamicRouteConfigs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RoutesConfigDump'_unknownFields
        (\ x__ y__ -> x__ {_RoutesConfigDump'_unknownFields = y__})
  defMessage
    = RoutesConfigDump'_constructor
        {_RoutesConfigDump'staticRouteConfigs = Data.Vector.Generic.empty,
         _RoutesConfigDump'dynamicRouteConfigs = Data.Vector.Generic.empty,
         _RoutesConfigDump'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RoutesConfigDump
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld RoutesConfigDump'DynamicRouteConfig
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld RoutesConfigDump'StaticRouteConfig
                -> Data.ProtoLens.Encoding.Bytes.Parser RoutesConfigDump
        loop x mutable'dynamicRouteConfigs mutable'staticRouteConfigs
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'dynamicRouteConfigs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'dynamicRouteConfigs)
                      frozen'staticRouteConfigs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'staticRouteConfigs)
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
                              (Data.ProtoLens.Field.field @"vec'dynamicRouteConfigs")
                              frozen'dynamicRouteConfigs
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'staticRouteConfigs")
                                 frozen'staticRouteConfigs
                                 x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "static_route_configs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'staticRouteConfigs y)
                                loop x mutable'dynamicRouteConfigs v
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "dynamic_route_configs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'dynamicRouteConfigs y)
                                loop x v mutable'staticRouteConfigs
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'dynamicRouteConfigs
                                  mutable'staticRouteConfigs
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'dynamicRouteConfigs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              mutable'staticRouteConfigs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'dynamicRouteConfigs
                mutable'staticRouteConfigs)
          "RoutesConfigDump"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
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
                   (Data.ProtoLens.Field.field @"vec'staticRouteConfigs") _x))
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
                      (Data.ProtoLens.Field.field @"vec'dynamicRouteConfigs") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData RoutesConfigDump where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RoutesConfigDump'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RoutesConfigDump'staticRouteConfigs x__)
                (Control.DeepSeq.deepseq
                   (_RoutesConfigDump'dynamicRouteConfigs x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.versionInfo' @:: Lens' RoutesConfigDump'DynamicRouteConfig Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.routeConfig' @:: Lens' RoutesConfigDump'DynamicRouteConfig Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'routeConfig' @:: Lens' RoutesConfigDump'DynamicRouteConfig (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.lastUpdated' @:: Lens' RoutesConfigDump'DynamicRouteConfig Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'lastUpdated' @:: Lens' RoutesConfigDump'DynamicRouteConfig (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.errorState' @:: Lens' RoutesConfigDump'DynamicRouteConfig UpdateFailureState@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'errorState' @:: Lens' RoutesConfigDump'DynamicRouteConfig (Prelude.Maybe UpdateFailureState)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.clientStatus' @:: Lens' RoutesConfigDump'DynamicRouteConfig ClientResourceStatus@ -}
data RoutesConfigDump'DynamicRouteConfig
  = RoutesConfigDump'DynamicRouteConfig'_constructor {_RoutesConfigDump'DynamicRouteConfig'versionInfo :: !Data.Text.Text,
                                                      _RoutesConfigDump'DynamicRouteConfig'routeConfig :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                                      _RoutesConfigDump'DynamicRouteConfig'lastUpdated :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                      _RoutesConfigDump'DynamicRouteConfig'errorState :: !(Prelude.Maybe UpdateFailureState),
                                                      _RoutesConfigDump'DynamicRouteConfig'clientStatus :: !ClientResourceStatus,
                                                      _RoutesConfigDump'DynamicRouteConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RoutesConfigDump'DynamicRouteConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RoutesConfigDump'DynamicRouteConfig "versionInfo" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutesConfigDump'DynamicRouteConfig'versionInfo
           (\ x__ y__
              -> x__ {_RoutesConfigDump'DynamicRouteConfig'versionInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RoutesConfigDump'DynamicRouteConfig "routeConfig" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutesConfigDump'DynamicRouteConfig'routeConfig
           (\ x__ y__
              -> x__ {_RoutesConfigDump'DynamicRouteConfig'routeConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RoutesConfigDump'DynamicRouteConfig "maybe'routeConfig" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutesConfigDump'DynamicRouteConfig'routeConfig
           (\ x__ y__
              -> x__ {_RoutesConfigDump'DynamicRouteConfig'routeConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RoutesConfigDump'DynamicRouteConfig "lastUpdated" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutesConfigDump'DynamicRouteConfig'lastUpdated
           (\ x__ y__
              -> x__ {_RoutesConfigDump'DynamicRouteConfig'lastUpdated = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RoutesConfigDump'DynamicRouteConfig "maybe'lastUpdated" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutesConfigDump'DynamicRouteConfig'lastUpdated
           (\ x__ y__
              -> x__ {_RoutesConfigDump'DynamicRouteConfig'lastUpdated = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RoutesConfigDump'DynamicRouteConfig "errorState" UpdateFailureState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutesConfigDump'DynamicRouteConfig'errorState
           (\ x__ y__
              -> x__ {_RoutesConfigDump'DynamicRouteConfig'errorState = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RoutesConfigDump'DynamicRouteConfig "maybe'errorState" (Prelude.Maybe UpdateFailureState) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutesConfigDump'DynamicRouteConfig'errorState
           (\ x__ y__
              -> x__ {_RoutesConfigDump'DynamicRouteConfig'errorState = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RoutesConfigDump'DynamicRouteConfig "clientStatus" ClientResourceStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutesConfigDump'DynamicRouteConfig'clientStatus
           (\ x__ y__
              -> x__ {_RoutesConfigDump'DynamicRouteConfig'clientStatus = y__}))
        Prelude.id
instance Data.ProtoLens.Message RoutesConfigDump'DynamicRouteConfig where
  messageName _
    = Data.Text.pack
        "envoy.admin.v3.RoutesConfigDump.DynamicRouteConfig"
  packedMessageDescriptor _
    = "\n\
      \\DC2DynamicRouteConfig\DC2!\n\
      \\fversion_info\CAN\SOH \SOH(\tR\vversionInfo\DC27\n\
      \\froute_config\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\vrouteConfig\DC2=\n\
      \\flast_updated\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated\DC2C\n\
      \\verror_state\CAN\EOT \SOH(\v2\".envoy.admin.v3.UpdateFailureStateR\n\
      \errorState\DC2I\n\
      \\rclient_status\CAN\ENQ \SOH(\SO2$.envoy.admin.v3.ClientResourceStatusR\fclientStatus:>\154\197\136\RS9\n\
      \7envoy.admin.v2alpha.RoutesConfigDump.DynamicRouteConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        versionInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version_info"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"versionInfo")) ::
              Data.ProtoLens.FieldDescriptor RoutesConfigDump'DynamicRouteConfig
        routeConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "route_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'routeConfig")) ::
              Data.ProtoLens.FieldDescriptor RoutesConfigDump'DynamicRouteConfig
        lastUpdated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_updated"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastUpdated")) ::
              Data.ProtoLens.FieldDescriptor RoutesConfigDump'DynamicRouteConfig
        errorState__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "error_state"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UpdateFailureState)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'errorState")) ::
              Data.ProtoLens.FieldDescriptor RoutesConfigDump'DynamicRouteConfig
        clientStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "client_status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ClientResourceStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"clientStatus")) ::
              Data.ProtoLens.FieldDescriptor RoutesConfigDump'DynamicRouteConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, versionInfo__field_descriptor),
           (Data.ProtoLens.Tag 2, routeConfig__field_descriptor),
           (Data.ProtoLens.Tag 3, lastUpdated__field_descriptor),
           (Data.ProtoLens.Tag 4, errorState__field_descriptor),
           (Data.ProtoLens.Tag 5, clientStatus__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RoutesConfigDump'DynamicRouteConfig'_unknownFields
        (\ x__ y__
           -> x__ {_RoutesConfigDump'DynamicRouteConfig'_unknownFields = y__})
  defMessage
    = RoutesConfigDump'DynamicRouteConfig'_constructor
        {_RoutesConfigDump'DynamicRouteConfig'versionInfo = Data.ProtoLens.fieldDefault,
         _RoutesConfigDump'DynamicRouteConfig'routeConfig = Prelude.Nothing,
         _RoutesConfigDump'DynamicRouteConfig'lastUpdated = Prelude.Nothing,
         _RoutesConfigDump'DynamicRouteConfig'errorState = Prelude.Nothing,
         _RoutesConfigDump'DynamicRouteConfig'clientStatus = Data.ProtoLens.fieldDefault,
         _RoutesConfigDump'DynamicRouteConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RoutesConfigDump'DynamicRouteConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser RoutesConfigDump'DynamicRouteConfig
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
                                       "version_info"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"versionInfo") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "route_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"routeConfig") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_updated"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lastUpdated") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "error_state"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"errorState") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "client_status"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"clientStatus") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DynamicRouteConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"versionInfo") _x
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
                       (Data.ProtoLens.Field.field @"maybe'routeConfig") _x
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
                          (Data.ProtoLens.Field.field @"maybe'lastUpdated") _x
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
                             (Data.ProtoLens.Field.field @"maybe'errorState") _x
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
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"clientStatus") _x
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
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData RoutesConfigDump'DynamicRouteConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RoutesConfigDump'DynamicRouteConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RoutesConfigDump'DynamicRouteConfig'versionInfo x__)
                (Control.DeepSeq.deepseq
                   (_RoutesConfigDump'DynamicRouteConfig'routeConfig x__)
                   (Control.DeepSeq.deepseq
                      (_RoutesConfigDump'DynamicRouteConfig'lastUpdated x__)
                      (Control.DeepSeq.deepseq
                         (_RoutesConfigDump'DynamicRouteConfig'errorState x__)
                         (Control.DeepSeq.deepseq
                            (_RoutesConfigDump'DynamicRouteConfig'clientStatus x__) ())))))
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.routeConfig' @:: Lens' RoutesConfigDump'StaticRouteConfig Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'routeConfig' @:: Lens' RoutesConfigDump'StaticRouteConfig (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.lastUpdated' @:: Lens' RoutesConfigDump'StaticRouteConfig Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'lastUpdated' @:: Lens' RoutesConfigDump'StaticRouteConfig (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data RoutesConfigDump'StaticRouteConfig
  = RoutesConfigDump'StaticRouteConfig'_constructor {_RoutesConfigDump'StaticRouteConfig'routeConfig :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                                     _RoutesConfigDump'StaticRouteConfig'lastUpdated :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                     _RoutesConfigDump'StaticRouteConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RoutesConfigDump'StaticRouteConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RoutesConfigDump'StaticRouteConfig "routeConfig" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutesConfigDump'StaticRouteConfig'routeConfig
           (\ x__ y__
              -> x__ {_RoutesConfigDump'StaticRouteConfig'routeConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RoutesConfigDump'StaticRouteConfig "maybe'routeConfig" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutesConfigDump'StaticRouteConfig'routeConfig
           (\ x__ y__
              -> x__ {_RoutesConfigDump'StaticRouteConfig'routeConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RoutesConfigDump'StaticRouteConfig "lastUpdated" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutesConfigDump'StaticRouteConfig'lastUpdated
           (\ x__ y__
              -> x__ {_RoutesConfigDump'StaticRouteConfig'lastUpdated = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RoutesConfigDump'StaticRouteConfig "maybe'lastUpdated" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutesConfigDump'StaticRouteConfig'lastUpdated
           (\ x__ y__
              -> x__ {_RoutesConfigDump'StaticRouteConfig'lastUpdated = y__}))
        Prelude.id
instance Data.ProtoLens.Message RoutesConfigDump'StaticRouteConfig where
  messageName _
    = Data.Text.pack
        "envoy.admin.v3.RoutesConfigDump.StaticRouteConfig"
  packedMessageDescriptor _
    = "\n\
      \\DC1StaticRouteConfig\DC27\n\
      \\froute_config\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\vrouteConfig\DC2=\n\
      \\flast_updated\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated:=\154\197\136\RS8\n\
      \6envoy.admin.v2alpha.RoutesConfigDump.StaticRouteConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        routeConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "route_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'routeConfig")) ::
              Data.ProtoLens.FieldDescriptor RoutesConfigDump'StaticRouteConfig
        lastUpdated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_updated"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastUpdated")) ::
              Data.ProtoLens.FieldDescriptor RoutesConfigDump'StaticRouteConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, routeConfig__field_descriptor),
           (Data.ProtoLens.Tag 2, lastUpdated__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RoutesConfigDump'StaticRouteConfig'_unknownFields
        (\ x__ y__
           -> x__ {_RoutesConfigDump'StaticRouteConfig'_unknownFields = y__})
  defMessage
    = RoutesConfigDump'StaticRouteConfig'_constructor
        {_RoutesConfigDump'StaticRouteConfig'routeConfig = Prelude.Nothing,
         _RoutesConfigDump'StaticRouteConfig'lastUpdated = Prelude.Nothing,
         _RoutesConfigDump'StaticRouteConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RoutesConfigDump'StaticRouteConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser RoutesConfigDump'StaticRouteConfig
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
                                       "route_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"routeConfig") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_updated"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lastUpdated") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StaticRouteConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'routeConfig") _x
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
                       (Data.ProtoLens.Field.field @"maybe'lastUpdated") _x
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
instance Control.DeepSeq.NFData RoutesConfigDump'StaticRouteConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RoutesConfigDump'StaticRouteConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RoutesConfigDump'StaticRouteConfig'routeConfig x__)
                (Control.DeepSeq.deepseq
                   (_RoutesConfigDump'StaticRouteConfig'lastUpdated x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.inlineScopedRouteConfigs' @:: Lens' ScopedRoutesConfigDump [ScopedRoutesConfigDump'InlineScopedRouteConfigs]@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.vec'inlineScopedRouteConfigs' @:: Lens' ScopedRoutesConfigDump (Data.Vector.Vector ScopedRoutesConfigDump'InlineScopedRouteConfigs)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.dynamicScopedRouteConfigs' @:: Lens' ScopedRoutesConfigDump [ScopedRoutesConfigDump'DynamicScopedRouteConfigs]@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.vec'dynamicScopedRouteConfigs' @:: Lens' ScopedRoutesConfigDump (Data.Vector.Vector ScopedRoutesConfigDump'DynamicScopedRouteConfigs)@ -}
data ScopedRoutesConfigDump
  = ScopedRoutesConfigDump'_constructor {_ScopedRoutesConfigDump'inlineScopedRouteConfigs :: !(Data.Vector.Vector ScopedRoutesConfigDump'InlineScopedRouteConfigs),
                                         _ScopedRoutesConfigDump'dynamicScopedRouteConfigs :: !(Data.Vector.Vector ScopedRoutesConfigDump'DynamicScopedRouteConfigs),
                                         _ScopedRoutesConfigDump'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScopedRoutesConfigDump where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScopedRoutesConfigDump "inlineScopedRouteConfigs" [ScopedRoutesConfigDump'InlineScopedRouteConfigs] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutesConfigDump'inlineScopedRouteConfigs
           (\ x__ y__
              -> x__ {_ScopedRoutesConfigDump'inlineScopedRouteConfigs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ScopedRoutesConfigDump "vec'inlineScopedRouteConfigs" (Data.Vector.Vector ScopedRoutesConfigDump'InlineScopedRouteConfigs) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutesConfigDump'inlineScopedRouteConfigs
           (\ x__ y__
              -> x__ {_ScopedRoutesConfigDump'inlineScopedRouteConfigs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScopedRoutesConfigDump "dynamicScopedRouteConfigs" [ScopedRoutesConfigDump'DynamicScopedRouteConfigs] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutesConfigDump'dynamicScopedRouteConfigs
           (\ x__ y__
              -> x__ {_ScopedRoutesConfigDump'dynamicScopedRouteConfigs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ScopedRoutesConfigDump "vec'dynamicScopedRouteConfigs" (Data.Vector.Vector ScopedRoutesConfigDump'DynamicScopedRouteConfigs) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutesConfigDump'dynamicScopedRouteConfigs
           (\ x__ y__
              -> x__ {_ScopedRoutesConfigDump'dynamicScopedRouteConfigs = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScopedRoutesConfigDump where
  messageName _
    = Data.Text.pack "envoy.admin.v3.ScopedRoutesConfigDump"
  packedMessageDescriptor _
    = "\n\
      \\SYNScopedRoutesConfigDump\DC2~\n\
      \\ESCinline_scoped_route_configs\CAN\SOH \ETX(\v2?.envoy.admin.v3.ScopedRoutesConfigDump.InlineScopedRouteConfigsR\CANinlineScopedRouteConfigs\DC2\129\SOH\n\
      \\FSdynamic_scoped_route_configs\CAN\STX \ETX(\v2@.envoy.admin.v3.ScopedRoutesConfigDump.DynamicScopedRouteConfigsR\EMdynamicScopedRouteConfigs\SUB\129\STX\n\
      \\CANInlineScopedRouteConfigs\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2F\n\
      \\DC4scoped_route_configs\CAN\STX \ETX(\v2\DC4.google.protobuf.AnyR\DC2scopedRouteConfigs\DC2=\n\
      \\flast_updated\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated:J\154\197\136\RSE\n\
      \Cenvoy.admin.v2alpha.ScopedRoutesConfigDump.InlineScopedRouteConfigs\SUB\182\ETX\n\
      \\EMDynamicScopedRouteConfigs\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2!\n\
      \\fversion_info\CAN\STX \SOH(\tR\vversionInfo\DC2F\n\
      \\DC4scoped_route_configs\CAN\ETX \ETX(\v2\DC4.google.protobuf.AnyR\DC2scopedRouteConfigs\DC2=\n\
      \\flast_updated\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated\DC2C\n\
      \\verror_state\CAN\ENQ \SOH(\v2\".envoy.admin.v3.UpdateFailureStateR\n\
      \errorState\DC2I\n\
      \\rclient_status\CAN\ACK \SOH(\SO2$.envoy.admin.v3.ClientResourceStatusR\fclientStatus:K\154\197\136\RSF\n\
      \Denvoy.admin.v2alpha.ScopedRoutesConfigDump.DynamicScopedRouteConfigs:1\154\197\136\RS,\n\
      \*envoy.admin.v2alpha.ScopedRoutesConfigDump"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        inlineScopedRouteConfigs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "inline_scoped_route_configs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScopedRoutesConfigDump'InlineScopedRouteConfigs)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"inlineScopedRouteConfigs")) ::
              Data.ProtoLens.FieldDescriptor ScopedRoutesConfigDump
        dynamicScopedRouteConfigs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dynamic_scoped_route_configs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScopedRoutesConfigDump'DynamicScopedRouteConfigs)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"dynamicScopedRouteConfigs")) ::
              Data.ProtoLens.FieldDescriptor ScopedRoutesConfigDump
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, 
            inlineScopedRouteConfigs__field_descriptor),
           (Data.ProtoLens.Tag 2, 
            dynamicScopedRouteConfigs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScopedRoutesConfigDump'_unknownFields
        (\ x__ y__ -> x__ {_ScopedRoutesConfigDump'_unknownFields = y__})
  defMessage
    = ScopedRoutesConfigDump'_constructor
        {_ScopedRoutesConfigDump'inlineScopedRouteConfigs = Data.Vector.Generic.empty,
         _ScopedRoutesConfigDump'dynamicScopedRouteConfigs = Data.Vector.Generic.empty,
         _ScopedRoutesConfigDump'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScopedRoutesConfigDump
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ScopedRoutesConfigDump'DynamicScopedRouteConfigs
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ScopedRoutesConfigDump'InlineScopedRouteConfigs
                -> Data.ProtoLens.Encoding.Bytes.Parser ScopedRoutesConfigDump
        loop
          x
          mutable'dynamicScopedRouteConfigs
          mutable'inlineScopedRouteConfigs
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'dynamicScopedRouteConfigs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                               mutable'dynamicScopedRouteConfigs)
                      frozen'inlineScopedRouteConfigs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                              mutable'inlineScopedRouteConfigs)
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
                              (Data.ProtoLens.Field.field @"vec'dynamicScopedRouteConfigs")
                              frozen'dynamicScopedRouteConfigs
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'inlineScopedRouteConfigs")
                                 frozen'inlineScopedRouteConfigs
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
                                        "inline_scoped_route_configs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'inlineScopedRouteConfigs y)
                                loop x mutable'dynamicScopedRouteConfigs v
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "dynamic_scoped_route_configs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'dynamicScopedRouteConfigs y)
                                loop x v mutable'inlineScopedRouteConfigs
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'dynamicScopedRouteConfigs
                                  mutable'inlineScopedRouteConfigs
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'dynamicScopedRouteConfigs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     Data.ProtoLens.Encoding.Growing.new
              mutable'inlineScopedRouteConfigs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'dynamicScopedRouteConfigs
                mutable'inlineScopedRouteConfigs)
          "ScopedRoutesConfigDump"
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
                   (Data.ProtoLens.Field.field @"vec'inlineScopedRouteConfigs") _x))
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
                      (Data.ProtoLens.Field.field @"vec'dynamicScopedRouteConfigs") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ScopedRoutesConfigDump where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScopedRoutesConfigDump'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScopedRoutesConfigDump'inlineScopedRouteConfigs x__)
                (Control.DeepSeq.deepseq
                   (_ScopedRoutesConfigDump'dynamicScopedRouteConfigs x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.name' @:: Lens' ScopedRoutesConfigDump'DynamicScopedRouteConfigs Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.versionInfo' @:: Lens' ScopedRoutesConfigDump'DynamicScopedRouteConfigs Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.scopedRouteConfigs' @:: Lens' ScopedRoutesConfigDump'DynamicScopedRouteConfigs [Proto.Google.Protobuf.Any.Any]@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.vec'scopedRouteConfigs' @:: Lens' ScopedRoutesConfigDump'DynamicScopedRouteConfigs (Data.Vector.Vector Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.lastUpdated' @:: Lens' ScopedRoutesConfigDump'DynamicScopedRouteConfigs Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'lastUpdated' @:: Lens' ScopedRoutesConfigDump'DynamicScopedRouteConfigs (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.errorState' @:: Lens' ScopedRoutesConfigDump'DynamicScopedRouteConfigs UpdateFailureState@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'errorState' @:: Lens' ScopedRoutesConfigDump'DynamicScopedRouteConfigs (Prelude.Maybe UpdateFailureState)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.clientStatus' @:: Lens' ScopedRoutesConfigDump'DynamicScopedRouteConfigs ClientResourceStatus@ -}
data ScopedRoutesConfigDump'DynamicScopedRouteConfigs
  = ScopedRoutesConfigDump'DynamicScopedRouteConfigs'_constructor {_ScopedRoutesConfigDump'DynamicScopedRouteConfigs'name :: !Data.Text.Text,
                                                                   _ScopedRoutesConfigDump'DynamicScopedRouteConfigs'versionInfo :: !Data.Text.Text,
                                                                   _ScopedRoutesConfigDump'DynamicScopedRouteConfigs'scopedRouteConfigs :: !(Data.Vector.Vector Proto.Google.Protobuf.Any.Any),
                                                                   _ScopedRoutesConfigDump'DynamicScopedRouteConfigs'lastUpdated :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                                   _ScopedRoutesConfigDump'DynamicScopedRouteConfigs'errorState :: !(Prelude.Maybe UpdateFailureState),
                                                                   _ScopedRoutesConfigDump'DynamicScopedRouteConfigs'clientStatus :: !ClientResourceStatus,
                                                                   _ScopedRoutesConfigDump'DynamicScopedRouteConfigs'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScopedRoutesConfigDump'DynamicScopedRouteConfigs where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScopedRoutesConfigDump'DynamicScopedRouteConfigs "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutesConfigDump'DynamicScopedRouteConfigs'name
           (\ x__ y__
              -> x__
                   {_ScopedRoutesConfigDump'DynamicScopedRouteConfigs'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScopedRoutesConfigDump'DynamicScopedRouteConfigs "versionInfo" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutesConfigDump'DynamicScopedRouteConfigs'versionInfo
           (\ x__ y__
              -> x__
                   {_ScopedRoutesConfigDump'DynamicScopedRouteConfigs'versionInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScopedRoutesConfigDump'DynamicScopedRouteConfigs "scopedRouteConfigs" [Proto.Google.Protobuf.Any.Any] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutesConfigDump'DynamicScopedRouteConfigs'scopedRouteConfigs
           (\ x__ y__
              -> x__
                   {_ScopedRoutesConfigDump'DynamicScopedRouteConfigs'scopedRouteConfigs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ScopedRoutesConfigDump'DynamicScopedRouteConfigs "vec'scopedRouteConfigs" (Data.Vector.Vector Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutesConfigDump'DynamicScopedRouteConfigs'scopedRouteConfigs
           (\ x__ y__
              -> x__
                   {_ScopedRoutesConfigDump'DynamicScopedRouteConfigs'scopedRouteConfigs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScopedRoutesConfigDump'DynamicScopedRouteConfigs "lastUpdated" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutesConfigDump'DynamicScopedRouteConfigs'lastUpdated
           (\ x__ y__
              -> x__
                   {_ScopedRoutesConfigDump'DynamicScopedRouteConfigs'lastUpdated = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScopedRoutesConfigDump'DynamicScopedRouteConfigs "maybe'lastUpdated" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutesConfigDump'DynamicScopedRouteConfigs'lastUpdated
           (\ x__ y__
              -> x__
                   {_ScopedRoutesConfigDump'DynamicScopedRouteConfigs'lastUpdated = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScopedRoutesConfigDump'DynamicScopedRouteConfigs "errorState" UpdateFailureState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutesConfigDump'DynamicScopedRouteConfigs'errorState
           (\ x__ y__
              -> x__
                   {_ScopedRoutesConfigDump'DynamicScopedRouteConfigs'errorState = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScopedRoutesConfigDump'DynamicScopedRouteConfigs "maybe'errorState" (Prelude.Maybe UpdateFailureState) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutesConfigDump'DynamicScopedRouteConfigs'errorState
           (\ x__ y__
              -> x__
                   {_ScopedRoutesConfigDump'DynamicScopedRouteConfigs'errorState = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScopedRoutesConfigDump'DynamicScopedRouteConfigs "clientStatus" ClientResourceStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutesConfigDump'DynamicScopedRouteConfigs'clientStatus
           (\ x__ y__
              -> x__
                   {_ScopedRoutesConfigDump'DynamicScopedRouteConfigs'clientStatus = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScopedRoutesConfigDump'DynamicScopedRouteConfigs where
  messageName _
    = Data.Text.pack
        "envoy.admin.v3.ScopedRoutesConfigDump.DynamicScopedRouteConfigs"
  packedMessageDescriptor _
    = "\n\
      \\EMDynamicScopedRouteConfigs\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2!\n\
      \\fversion_info\CAN\STX \SOH(\tR\vversionInfo\DC2F\n\
      \\DC4scoped_route_configs\CAN\ETX \ETX(\v2\DC4.google.protobuf.AnyR\DC2scopedRouteConfigs\DC2=\n\
      \\flast_updated\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated\DC2C\n\
      \\verror_state\CAN\ENQ \SOH(\v2\".envoy.admin.v3.UpdateFailureStateR\n\
      \errorState\DC2I\n\
      \\rclient_status\CAN\ACK \SOH(\SO2$.envoy.admin.v3.ClientResourceStatusR\fclientStatus:K\154\197\136\RSF\n\
      \Denvoy.admin.v2alpha.ScopedRoutesConfigDump.DynamicScopedRouteConfigs"
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
              Data.ProtoLens.FieldDescriptor ScopedRoutesConfigDump'DynamicScopedRouteConfigs
        versionInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version_info"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"versionInfo")) ::
              Data.ProtoLens.FieldDescriptor ScopedRoutesConfigDump'DynamicScopedRouteConfigs
        scopedRouteConfigs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scoped_route_configs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"scopedRouteConfigs")) ::
              Data.ProtoLens.FieldDescriptor ScopedRoutesConfigDump'DynamicScopedRouteConfigs
        lastUpdated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_updated"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastUpdated")) ::
              Data.ProtoLens.FieldDescriptor ScopedRoutesConfigDump'DynamicScopedRouteConfigs
        errorState__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "error_state"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UpdateFailureState)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'errorState")) ::
              Data.ProtoLens.FieldDescriptor ScopedRoutesConfigDump'DynamicScopedRouteConfigs
        clientStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "client_status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ClientResourceStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"clientStatus")) ::
              Data.ProtoLens.FieldDescriptor ScopedRoutesConfigDump'DynamicScopedRouteConfigs
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, versionInfo__field_descriptor),
           (Data.ProtoLens.Tag 3, scopedRouteConfigs__field_descriptor),
           (Data.ProtoLens.Tag 4, lastUpdated__field_descriptor),
           (Data.ProtoLens.Tag 5, errorState__field_descriptor),
           (Data.ProtoLens.Tag 6, clientStatus__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScopedRoutesConfigDump'DynamicScopedRouteConfigs'_unknownFields
        (\ x__ y__
           -> x__
                {_ScopedRoutesConfigDump'DynamicScopedRouteConfigs'_unknownFields = y__})
  defMessage
    = ScopedRoutesConfigDump'DynamicScopedRouteConfigs'_constructor
        {_ScopedRoutesConfigDump'DynamicScopedRouteConfigs'name = Data.ProtoLens.fieldDefault,
         _ScopedRoutesConfigDump'DynamicScopedRouteConfigs'versionInfo = Data.ProtoLens.fieldDefault,
         _ScopedRoutesConfigDump'DynamicScopedRouteConfigs'scopedRouteConfigs = Data.Vector.Generic.empty,
         _ScopedRoutesConfigDump'DynamicScopedRouteConfigs'lastUpdated = Prelude.Nothing,
         _ScopedRoutesConfigDump'DynamicScopedRouteConfigs'errorState = Prelude.Nothing,
         _ScopedRoutesConfigDump'DynamicScopedRouteConfigs'clientStatus = Data.ProtoLens.fieldDefault,
         _ScopedRoutesConfigDump'DynamicScopedRouteConfigs'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScopedRoutesConfigDump'DynamicScopedRouteConfigs
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Any.Any
             -> Data.ProtoLens.Encoding.Bytes.Parser ScopedRoutesConfigDump'DynamicScopedRouteConfigs
        loop x mutable'scopedRouteConfigs
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'scopedRouteConfigs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'scopedRouteConfigs)
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
                              (Data.ProtoLens.Field.field @"vec'scopedRouteConfigs")
                              frozen'scopedRouteConfigs
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
                                  mutable'scopedRouteConfigs
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
                                       "version_info"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"versionInfo") y x)
                                  mutable'scopedRouteConfigs
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "scoped_route_configs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'scopedRouteConfigs y)
                                loop x v
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_updated"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lastUpdated") y x)
                                  mutable'scopedRouteConfigs
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "error_state"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"errorState") y x)
                                  mutable'scopedRouteConfigs
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "client_status"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"clientStatus") y x)
                                  mutable'scopedRouteConfigs
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'scopedRouteConfigs
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'scopedRouteConfigs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'scopedRouteConfigs)
          "DynamicScopedRouteConfigs"
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"versionInfo") _x
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
                         (Data.ProtoLens.Field.field @"vec'scopedRouteConfigs") _x))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'lastUpdated") _x
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
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'errorState") _x
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
                            (let
                               _v
                                 = Lens.Family2.view (Data.ProtoLens.Field.field @"clientStatus") _x
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
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData ScopedRoutesConfigDump'DynamicScopedRouteConfigs where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScopedRoutesConfigDump'DynamicScopedRouteConfigs'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_ScopedRoutesConfigDump'DynamicScopedRouteConfigs'name x__)
                (Control.DeepSeq.deepseq
                   (_ScopedRoutesConfigDump'DynamicScopedRouteConfigs'versionInfo x__)
                   (Control.DeepSeq.deepseq
                      (_ScopedRoutesConfigDump'DynamicScopedRouteConfigs'scopedRouteConfigs
                         x__)
                      (Control.DeepSeq.deepseq
                         (_ScopedRoutesConfigDump'DynamicScopedRouteConfigs'lastUpdated x__)
                         (Control.DeepSeq.deepseq
                            (_ScopedRoutesConfigDump'DynamicScopedRouteConfigs'errorState x__)
                            (Control.DeepSeq.deepseq
                               (_ScopedRoutesConfigDump'DynamicScopedRouteConfigs'clientStatus
                                  x__)
                               ()))))))
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.name' @:: Lens' ScopedRoutesConfigDump'InlineScopedRouteConfigs Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.scopedRouteConfigs' @:: Lens' ScopedRoutesConfigDump'InlineScopedRouteConfigs [Proto.Google.Protobuf.Any.Any]@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.vec'scopedRouteConfigs' @:: Lens' ScopedRoutesConfigDump'InlineScopedRouteConfigs (Data.Vector.Vector Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.lastUpdated' @:: Lens' ScopedRoutesConfigDump'InlineScopedRouteConfigs Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'lastUpdated' @:: Lens' ScopedRoutesConfigDump'InlineScopedRouteConfigs (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data ScopedRoutesConfigDump'InlineScopedRouteConfigs
  = ScopedRoutesConfigDump'InlineScopedRouteConfigs'_constructor {_ScopedRoutesConfigDump'InlineScopedRouteConfigs'name :: !Data.Text.Text,
                                                                  _ScopedRoutesConfigDump'InlineScopedRouteConfigs'scopedRouteConfigs :: !(Data.Vector.Vector Proto.Google.Protobuf.Any.Any),
                                                                  _ScopedRoutesConfigDump'InlineScopedRouteConfigs'lastUpdated :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                                  _ScopedRoutesConfigDump'InlineScopedRouteConfigs'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScopedRoutesConfigDump'InlineScopedRouteConfigs where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScopedRoutesConfigDump'InlineScopedRouteConfigs "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutesConfigDump'InlineScopedRouteConfigs'name
           (\ x__ y__
              -> x__
                   {_ScopedRoutesConfigDump'InlineScopedRouteConfigs'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScopedRoutesConfigDump'InlineScopedRouteConfigs "scopedRouteConfigs" [Proto.Google.Protobuf.Any.Any] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutesConfigDump'InlineScopedRouteConfigs'scopedRouteConfigs
           (\ x__ y__
              -> x__
                   {_ScopedRoutesConfigDump'InlineScopedRouteConfigs'scopedRouteConfigs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ScopedRoutesConfigDump'InlineScopedRouteConfigs "vec'scopedRouteConfigs" (Data.Vector.Vector Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutesConfigDump'InlineScopedRouteConfigs'scopedRouteConfigs
           (\ x__ y__
              -> x__
                   {_ScopedRoutesConfigDump'InlineScopedRouteConfigs'scopedRouteConfigs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScopedRoutesConfigDump'InlineScopedRouteConfigs "lastUpdated" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutesConfigDump'InlineScopedRouteConfigs'lastUpdated
           (\ x__ y__
              -> x__
                   {_ScopedRoutesConfigDump'InlineScopedRouteConfigs'lastUpdated = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScopedRoutesConfigDump'InlineScopedRouteConfigs "maybe'lastUpdated" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutesConfigDump'InlineScopedRouteConfigs'lastUpdated
           (\ x__ y__
              -> x__
                   {_ScopedRoutesConfigDump'InlineScopedRouteConfigs'lastUpdated = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScopedRoutesConfigDump'InlineScopedRouteConfigs where
  messageName _
    = Data.Text.pack
        "envoy.admin.v3.ScopedRoutesConfigDump.InlineScopedRouteConfigs"
  packedMessageDescriptor _
    = "\n\
      \\CANInlineScopedRouteConfigs\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2F\n\
      \\DC4scoped_route_configs\CAN\STX \ETX(\v2\DC4.google.protobuf.AnyR\DC2scopedRouteConfigs\DC2=\n\
      \\flast_updated\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated:J\154\197\136\RSE\n\
      \Cenvoy.admin.v2alpha.ScopedRoutesConfigDump.InlineScopedRouteConfigs"
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
              Data.ProtoLens.FieldDescriptor ScopedRoutesConfigDump'InlineScopedRouteConfigs
        scopedRouteConfigs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scoped_route_configs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"scopedRouteConfigs")) ::
              Data.ProtoLens.FieldDescriptor ScopedRoutesConfigDump'InlineScopedRouteConfigs
        lastUpdated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_updated"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastUpdated")) ::
              Data.ProtoLens.FieldDescriptor ScopedRoutesConfigDump'InlineScopedRouteConfigs
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, scopedRouteConfigs__field_descriptor),
           (Data.ProtoLens.Tag 3, lastUpdated__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScopedRoutesConfigDump'InlineScopedRouteConfigs'_unknownFields
        (\ x__ y__
           -> x__
                {_ScopedRoutesConfigDump'InlineScopedRouteConfigs'_unknownFields = y__})
  defMessage
    = ScopedRoutesConfigDump'InlineScopedRouteConfigs'_constructor
        {_ScopedRoutesConfigDump'InlineScopedRouteConfigs'name = Data.ProtoLens.fieldDefault,
         _ScopedRoutesConfigDump'InlineScopedRouteConfigs'scopedRouteConfigs = Data.Vector.Generic.empty,
         _ScopedRoutesConfigDump'InlineScopedRouteConfigs'lastUpdated = Prelude.Nothing,
         _ScopedRoutesConfigDump'InlineScopedRouteConfigs'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScopedRoutesConfigDump'InlineScopedRouteConfigs
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Any.Any
             -> Data.ProtoLens.Encoding.Bytes.Parser ScopedRoutesConfigDump'InlineScopedRouteConfigs
        loop x mutable'scopedRouteConfigs
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'scopedRouteConfigs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'scopedRouteConfigs)
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
                              (Data.ProtoLens.Field.field @"vec'scopedRouteConfigs")
                              frozen'scopedRouteConfigs
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
                                  mutable'scopedRouteConfigs
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "scoped_route_configs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'scopedRouteConfigs y)
                                loop x v
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_updated"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lastUpdated") y x)
                                  mutable'scopedRouteConfigs
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'scopedRouteConfigs
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'scopedRouteConfigs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'scopedRouteConfigs)
          "InlineScopedRouteConfigs"
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
                      (Data.ProtoLens.Field.field @"vec'scopedRouteConfigs") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'lastUpdated") _x
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
instance Control.DeepSeq.NFData ScopedRoutesConfigDump'InlineScopedRouteConfigs where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScopedRoutesConfigDump'InlineScopedRouteConfigs'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_ScopedRoutesConfigDump'InlineScopedRouteConfigs'name x__)
                (Control.DeepSeq.deepseq
                   (_ScopedRoutesConfigDump'InlineScopedRouteConfigs'scopedRouteConfigs
                      x__)
                   (Control.DeepSeq.deepseq
                      (_ScopedRoutesConfigDump'InlineScopedRouteConfigs'lastUpdated x__)
                      ())))
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.staticSecrets' @:: Lens' SecretsConfigDump [SecretsConfigDump'StaticSecret]@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.vec'staticSecrets' @:: Lens' SecretsConfigDump (Data.Vector.Vector SecretsConfigDump'StaticSecret)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.dynamicActiveSecrets' @:: Lens' SecretsConfigDump [SecretsConfigDump'DynamicSecret]@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.vec'dynamicActiveSecrets' @:: Lens' SecretsConfigDump (Data.Vector.Vector SecretsConfigDump'DynamicSecret)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.dynamicWarmingSecrets' @:: Lens' SecretsConfigDump [SecretsConfigDump'DynamicSecret]@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.vec'dynamicWarmingSecrets' @:: Lens' SecretsConfigDump (Data.Vector.Vector SecretsConfigDump'DynamicSecret)@ -}
data SecretsConfigDump
  = SecretsConfigDump'_constructor {_SecretsConfigDump'staticSecrets :: !(Data.Vector.Vector SecretsConfigDump'StaticSecret),
                                    _SecretsConfigDump'dynamicActiveSecrets :: !(Data.Vector.Vector SecretsConfigDump'DynamicSecret),
                                    _SecretsConfigDump'dynamicWarmingSecrets :: !(Data.Vector.Vector SecretsConfigDump'DynamicSecret),
                                    _SecretsConfigDump'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SecretsConfigDump where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SecretsConfigDump "staticSecrets" [SecretsConfigDump'StaticSecret] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecretsConfigDump'staticSecrets
           (\ x__ y__ -> x__ {_SecretsConfigDump'staticSecrets = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SecretsConfigDump "vec'staticSecrets" (Data.Vector.Vector SecretsConfigDump'StaticSecret) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecretsConfigDump'staticSecrets
           (\ x__ y__ -> x__ {_SecretsConfigDump'staticSecrets = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SecretsConfigDump "dynamicActiveSecrets" [SecretsConfigDump'DynamicSecret] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecretsConfigDump'dynamicActiveSecrets
           (\ x__ y__ -> x__ {_SecretsConfigDump'dynamicActiveSecrets = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SecretsConfigDump "vec'dynamicActiveSecrets" (Data.Vector.Vector SecretsConfigDump'DynamicSecret) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecretsConfigDump'dynamicActiveSecrets
           (\ x__ y__ -> x__ {_SecretsConfigDump'dynamicActiveSecrets = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SecretsConfigDump "dynamicWarmingSecrets" [SecretsConfigDump'DynamicSecret] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecretsConfigDump'dynamicWarmingSecrets
           (\ x__ y__
              -> x__ {_SecretsConfigDump'dynamicWarmingSecrets = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SecretsConfigDump "vec'dynamicWarmingSecrets" (Data.Vector.Vector SecretsConfigDump'DynamicSecret) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecretsConfigDump'dynamicWarmingSecrets
           (\ x__ y__
              -> x__ {_SecretsConfigDump'dynamicWarmingSecrets = y__}))
        Prelude.id
instance Data.ProtoLens.Message SecretsConfigDump where
  messageName _ = Data.Text.pack "envoy.admin.v3.SecretsConfigDump"
  packedMessageDescriptor _
    = "\n\
      \\DC1SecretsConfigDump\DC2U\n\
      \\SOstatic_secrets\CAN\SOH \ETX(\v2..envoy.admin.v3.SecretsConfigDump.StaticSecretR\rstaticSecrets\DC2e\n\
      \\SYNdynamic_active_secrets\CAN\STX \ETX(\v2/.envoy.admin.v3.SecretsConfigDump.DynamicSecretR\DC4dynamicActiveSecrets\DC2g\n\
      \\ETBdynamic_warming_secrets\CAN\ETX \ETX(\v2/.envoy.admin.v3.SecretsConfigDump.DynamicSecretR\NAKdynamicWarmingSecrets\SUB\255\STX\n\
      \\rDynamicSecret\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2!\n\
      \\fversion_info\CAN\STX \SOH(\tR\vversionInfo\DC2=\n\
      \\flast_updated\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated\DC2,\n\
      \\ACKsecret\CAN\EOT \SOH(\v2\DC4.google.protobuf.AnyR\ACKsecret\DC2C\n\
      \\verror_state\CAN\ENQ \SOH(\v2\".envoy.admin.v3.UpdateFailureStateR\n\
      \errorState\DC2I\n\
      \\rclient_status\CAN\ACK \SOH(\SO2$.envoy.admin.v3.ClientResourceStatusR\fclientStatus::\154\197\136\RS5\n\
      \3envoy.admin.v2alpha.SecretsConfigDump.DynamicSecret\SUB\202\SOH\n\
      \\fStaticSecret\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2=\n\
      \\flast_updated\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated\DC2,\n\
      \\ACKsecret\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyR\ACKsecret:9\154\197\136\RS4\n\
      \2envoy.admin.v2alpha.SecretsConfigDump.StaticSecret:,\154\197\136\RS'\n\
      \%envoy.admin.v2alpha.SecretsConfigDump"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        staticSecrets__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "static_secrets"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SecretsConfigDump'StaticSecret)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"staticSecrets")) ::
              Data.ProtoLens.FieldDescriptor SecretsConfigDump
        dynamicActiveSecrets__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dynamic_active_secrets"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SecretsConfigDump'DynamicSecret)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"dynamicActiveSecrets")) ::
              Data.ProtoLens.FieldDescriptor SecretsConfigDump
        dynamicWarmingSecrets__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dynamic_warming_secrets"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SecretsConfigDump'DynamicSecret)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"dynamicWarmingSecrets")) ::
              Data.ProtoLens.FieldDescriptor SecretsConfigDump
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, staticSecrets__field_descriptor),
           (Data.ProtoLens.Tag 2, dynamicActiveSecrets__field_descriptor),
           (Data.ProtoLens.Tag 3, dynamicWarmingSecrets__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SecretsConfigDump'_unknownFields
        (\ x__ y__ -> x__ {_SecretsConfigDump'_unknownFields = y__})
  defMessage
    = SecretsConfigDump'_constructor
        {_SecretsConfigDump'staticSecrets = Data.Vector.Generic.empty,
         _SecretsConfigDump'dynamicActiveSecrets = Data.Vector.Generic.empty,
         _SecretsConfigDump'dynamicWarmingSecrets = Data.Vector.Generic.empty,
         _SecretsConfigDump'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SecretsConfigDump
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld SecretsConfigDump'DynamicSecret
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld SecretsConfigDump'DynamicSecret
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld SecretsConfigDump'StaticSecret
                   -> Data.ProtoLens.Encoding.Bytes.Parser SecretsConfigDump
        loop
          x
          mutable'dynamicActiveSecrets
          mutable'dynamicWarmingSecrets
          mutable'staticSecrets
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'dynamicActiveSecrets <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                          mutable'dynamicActiveSecrets)
                      frozen'dynamicWarmingSecrets <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                           mutable'dynamicWarmingSecrets)
                      frozen'staticSecrets <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'staticSecrets)
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
                              (Data.ProtoLens.Field.field @"vec'dynamicActiveSecrets")
                              frozen'dynamicActiveSecrets
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'dynamicWarmingSecrets")
                                 frozen'dynamicWarmingSecrets
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'staticSecrets")
                                    frozen'staticSecrets
                                    x))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "static_secrets"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'staticSecrets y)
                                loop x mutable'dynamicActiveSecrets mutable'dynamicWarmingSecrets v
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "dynamic_active_secrets"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'dynamicActiveSecrets y)
                                loop x v mutable'dynamicWarmingSecrets mutable'staticSecrets
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "dynamic_warming_secrets"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'dynamicWarmingSecrets y)
                                loop x mutable'dynamicActiveSecrets v mutable'staticSecrets
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'dynamicActiveSecrets
                                  mutable'dynamicWarmingSecrets
                                  mutable'staticSecrets
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'dynamicActiveSecrets <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                Data.ProtoLens.Encoding.Growing.new
              mutable'dynamicWarmingSecrets <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 Data.ProtoLens.Encoding.Growing.new
              mutable'staticSecrets <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'dynamicActiveSecrets
                mutable'dynamicWarmingSecrets
                mutable'staticSecrets)
          "SecretsConfigDump"
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
                   (Data.ProtoLens.Field.field @"vec'staticSecrets") _x))
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
                      (Data.ProtoLens.Field.field @"vec'dynamicActiveSecrets") _x))
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
                         (Data.ProtoLens.Field.field @"vec'dynamicWarmingSecrets") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData SecretsConfigDump where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SecretsConfigDump'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SecretsConfigDump'staticSecrets x__)
                (Control.DeepSeq.deepseq
                   (_SecretsConfigDump'dynamicActiveSecrets x__)
                   (Control.DeepSeq.deepseq
                      (_SecretsConfigDump'dynamicWarmingSecrets x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.name' @:: Lens' SecretsConfigDump'DynamicSecret Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.versionInfo' @:: Lens' SecretsConfigDump'DynamicSecret Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.lastUpdated' @:: Lens' SecretsConfigDump'DynamicSecret Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'lastUpdated' @:: Lens' SecretsConfigDump'DynamicSecret (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.secret' @:: Lens' SecretsConfigDump'DynamicSecret Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'secret' @:: Lens' SecretsConfigDump'DynamicSecret (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.errorState' @:: Lens' SecretsConfigDump'DynamicSecret UpdateFailureState@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'errorState' @:: Lens' SecretsConfigDump'DynamicSecret (Prelude.Maybe UpdateFailureState)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.clientStatus' @:: Lens' SecretsConfigDump'DynamicSecret ClientResourceStatus@ -}
data SecretsConfigDump'DynamicSecret
  = SecretsConfigDump'DynamicSecret'_constructor {_SecretsConfigDump'DynamicSecret'name :: !Data.Text.Text,
                                                  _SecretsConfigDump'DynamicSecret'versionInfo :: !Data.Text.Text,
                                                  _SecretsConfigDump'DynamicSecret'lastUpdated :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                  _SecretsConfigDump'DynamicSecret'secret :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                                  _SecretsConfigDump'DynamicSecret'errorState :: !(Prelude.Maybe UpdateFailureState),
                                                  _SecretsConfigDump'DynamicSecret'clientStatus :: !ClientResourceStatus,
                                                  _SecretsConfigDump'DynamicSecret'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SecretsConfigDump'DynamicSecret where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SecretsConfigDump'DynamicSecret "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecretsConfigDump'DynamicSecret'name
           (\ x__ y__ -> x__ {_SecretsConfigDump'DynamicSecret'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SecretsConfigDump'DynamicSecret "versionInfo" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecretsConfigDump'DynamicSecret'versionInfo
           (\ x__ y__
              -> x__ {_SecretsConfigDump'DynamicSecret'versionInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SecretsConfigDump'DynamicSecret "lastUpdated" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecretsConfigDump'DynamicSecret'lastUpdated
           (\ x__ y__
              -> x__ {_SecretsConfigDump'DynamicSecret'lastUpdated = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SecretsConfigDump'DynamicSecret "maybe'lastUpdated" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecretsConfigDump'DynamicSecret'lastUpdated
           (\ x__ y__
              -> x__ {_SecretsConfigDump'DynamicSecret'lastUpdated = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SecretsConfigDump'DynamicSecret "secret" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecretsConfigDump'DynamicSecret'secret
           (\ x__ y__ -> x__ {_SecretsConfigDump'DynamicSecret'secret = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SecretsConfigDump'DynamicSecret "maybe'secret" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecretsConfigDump'DynamicSecret'secret
           (\ x__ y__ -> x__ {_SecretsConfigDump'DynamicSecret'secret = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SecretsConfigDump'DynamicSecret "errorState" UpdateFailureState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecretsConfigDump'DynamicSecret'errorState
           (\ x__ y__
              -> x__ {_SecretsConfigDump'DynamicSecret'errorState = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SecretsConfigDump'DynamicSecret "maybe'errorState" (Prelude.Maybe UpdateFailureState) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecretsConfigDump'DynamicSecret'errorState
           (\ x__ y__
              -> x__ {_SecretsConfigDump'DynamicSecret'errorState = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SecretsConfigDump'DynamicSecret "clientStatus" ClientResourceStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecretsConfigDump'DynamicSecret'clientStatus
           (\ x__ y__
              -> x__ {_SecretsConfigDump'DynamicSecret'clientStatus = y__}))
        Prelude.id
instance Data.ProtoLens.Message SecretsConfigDump'DynamicSecret where
  messageName _
    = Data.Text.pack "envoy.admin.v3.SecretsConfigDump.DynamicSecret"
  packedMessageDescriptor _
    = "\n\
      \\rDynamicSecret\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2!\n\
      \\fversion_info\CAN\STX \SOH(\tR\vversionInfo\DC2=\n\
      \\flast_updated\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated\DC2,\n\
      \\ACKsecret\CAN\EOT \SOH(\v2\DC4.google.protobuf.AnyR\ACKsecret\DC2C\n\
      \\verror_state\CAN\ENQ \SOH(\v2\".envoy.admin.v3.UpdateFailureStateR\n\
      \errorState\DC2I\n\
      \\rclient_status\CAN\ACK \SOH(\SO2$.envoy.admin.v3.ClientResourceStatusR\fclientStatus::\154\197\136\RS5\n\
      \3envoy.admin.v2alpha.SecretsConfigDump.DynamicSecret"
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
              Data.ProtoLens.FieldDescriptor SecretsConfigDump'DynamicSecret
        versionInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version_info"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"versionInfo")) ::
              Data.ProtoLens.FieldDescriptor SecretsConfigDump'DynamicSecret
        lastUpdated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_updated"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastUpdated")) ::
              Data.ProtoLens.FieldDescriptor SecretsConfigDump'DynamicSecret
        secret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "secret"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'secret")) ::
              Data.ProtoLens.FieldDescriptor SecretsConfigDump'DynamicSecret
        errorState__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "error_state"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UpdateFailureState)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'errorState")) ::
              Data.ProtoLens.FieldDescriptor SecretsConfigDump'DynamicSecret
        clientStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "client_status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ClientResourceStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"clientStatus")) ::
              Data.ProtoLens.FieldDescriptor SecretsConfigDump'DynamicSecret
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, versionInfo__field_descriptor),
           (Data.ProtoLens.Tag 3, lastUpdated__field_descriptor),
           (Data.ProtoLens.Tag 4, secret__field_descriptor),
           (Data.ProtoLens.Tag 5, errorState__field_descriptor),
           (Data.ProtoLens.Tag 6, clientStatus__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SecretsConfigDump'DynamicSecret'_unknownFields
        (\ x__ y__
           -> x__ {_SecretsConfigDump'DynamicSecret'_unknownFields = y__})
  defMessage
    = SecretsConfigDump'DynamicSecret'_constructor
        {_SecretsConfigDump'DynamicSecret'name = Data.ProtoLens.fieldDefault,
         _SecretsConfigDump'DynamicSecret'versionInfo = Data.ProtoLens.fieldDefault,
         _SecretsConfigDump'DynamicSecret'lastUpdated = Prelude.Nothing,
         _SecretsConfigDump'DynamicSecret'secret = Prelude.Nothing,
         _SecretsConfigDump'DynamicSecret'errorState = Prelude.Nothing,
         _SecretsConfigDump'DynamicSecret'clientStatus = Data.ProtoLens.fieldDefault,
         _SecretsConfigDump'DynamicSecret'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SecretsConfigDump'DynamicSecret
          -> Data.ProtoLens.Encoding.Bytes.Parser SecretsConfigDump'DynamicSecret
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
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "version_info"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"versionInfo") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_updated"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lastUpdated") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "secret"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"secret") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "error_state"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"errorState") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "client_status"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"clientStatus") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DynamicSecret"
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"versionInfo") _x
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
                          (Data.ProtoLens.Field.field @"maybe'lastUpdated") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'secret") _x
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
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'errorState") _x
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
                            (let
                               _v
                                 = Lens.Family2.view (Data.ProtoLens.Field.field @"clientStatus") _x
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
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData SecretsConfigDump'DynamicSecret where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SecretsConfigDump'DynamicSecret'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SecretsConfigDump'DynamicSecret'name x__)
                (Control.DeepSeq.deepseq
                   (_SecretsConfigDump'DynamicSecret'versionInfo x__)
                   (Control.DeepSeq.deepseq
                      (_SecretsConfigDump'DynamicSecret'lastUpdated x__)
                      (Control.DeepSeq.deepseq
                         (_SecretsConfigDump'DynamicSecret'secret x__)
                         (Control.DeepSeq.deepseq
                            (_SecretsConfigDump'DynamicSecret'errorState x__)
                            (Control.DeepSeq.deepseq
                               (_SecretsConfigDump'DynamicSecret'clientStatus x__) ()))))))
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.name' @:: Lens' SecretsConfigDump'StaticSecret Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.lastUpdated' @:: Lens' SecretsConfigDump'StaticSecret Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'lastUpdated' @:: Lens' SecretsConfigDump'StaticSecret (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.secret' @:: Lens' SecretsConfigDump'StaticSecret Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'secret' @:: Lens' SecretsConfigDump'StaticSecret (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data SecretsConfigDump'StaticSecret
  = SecretsConfigDump'StaticSecret'_constructor {_SecretsConfigDump'StaticSecret'name :: !Data.Text.Text,
                                                 _SecretsConfigDump'StaticSecret'lastUpdated :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                 _SecretsConfigDump'StaticSecret'secret :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                                 _SecretsConfigDump'StaticSecret'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SecretsConfigDump'StaticSecret where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SecretsConfigDump'StaticSecret "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecretsConfigDump'StaticSecret'name
           (\ x__ y__ -> x__ {_SecretsConfigDump'StaticSecret'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SecretsConfigDump'StaticSecret "lastUpdated" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecretsConfigDump'StaticSecret'lastUpdated
           (\ x__ y__
              -> x__ {_SecretsConfigDump'StaticSecret'lastUpdated = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SecretsConfigDump'StaticSecret "maybe'lastUpdated" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecretsConfigDump'StaticSecret'lastUpdated
           (\ x__ y__
              -> x__ {_SecretsConfigDump'StaticSecret'lastUpdated = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SecretsConfigDump'StaticSecret "secret" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecretsConfigDump'StaticSecret'secret
           (\ x__ y__ -> x__ {_SecretsConfigDump'StaticSecret'secret = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SecretsConfigDump'StaticSecret "maybe'secret" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecretsConfigDump'StaticSecret'secret
           (\ x__ y__ -> x__ {_SecretsConfigDump'StaticSecret'secret = y__}))
        Prelude.id
instance Data.ProtoLens.Message SecretsConfigDump'StaticSecret where
  messageName _
    = Data.Text.pack "envoy.admin.v3.SecretsConfigDump.StaticSecret"
  packedMessageDescriptor _
    = "\n\
      \\fStaticSecret\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2=\n\
      \\flast_updated\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated\DC2,\n\
      \\ACKsecret\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyR\ACKsecret:9\154\197\136\RS4\n\
      \2envoy.admin.v2alpha.SecretsConfigDump.StaticSecret"
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
              Data.ProtoLens.FieldDescriptor SecretsConfigDump'StaticSecret
        lastUpdated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_updated"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastUpdated")) ::
              Data.ProtoLens.FieldDescriptor SecretsConfigDump'StaticSecret
        secret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "secret"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'secret")) ::
              Data.ProtoLens.FieldDescriptor SecretsConfigDump'StaticSecret
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, lastUpdated__field_descriptor),
           (Data.ProtoLens.Tag 3, secret__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SecretsConfigDump'StaticSecret'_unknownFields
        (\ x__ y__
           -> x__ {_SecretsConfigDump'StaticSecret'_unknownFields = y__})
  defMessage
    = SecretsConfigDump'StaticSecret'_constructor
        {_SecretsConfigDump'StaticSecret'name = Data.ProtoLens.fieldDefault,
         _SecretsConfigDump'StaticSecret'lastUpdated = Prelude.Nothing,
         _SecretsConfigDump'StaticSecret'secret = Prelude.Nothing,
         _SecretsConfigDump'StaticSecret'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SecretsConfigDump'StaticSecret
          -> Data.ProtoLens.Encoding.Bytes.Parser SecretsConfigDump'StaticSecret
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
                                       "last_updated"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lastUpdated") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "secret"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"secret") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StaticSecret"
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
                       (Data.ProtoLens.Field.field @"maybe'lastUpdated") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'secret") _x
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
instance Control.DeepSeq.NFData SecretsConfigDump'StaticSecret where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SecretsConfigDump'StaticSecret'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SecretsConfigDump'StaticSecret'name x__)
                (Control.DeepSeq.deepseq
                   (_SecretsConfigDump'StaticSecret'lastUpdated x__)
                   (Control.DeepSeq.deepseq
                      (_SecretsConfigDump'StaticSecret'secret x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.failedConfiguration' @:: Lens' UpdateFailureState Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'failedConfiguration' @:: Lens' UpdateFailureState (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.lastUpdateAttempt' @:: Lens' UpdateFailureState Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.maybe'lastUpdateAttempt' @:: Lens' UpdateFailureState (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.details' @:: Lens' UpdateFailureState Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ConfigDump_Fields.versionInfo' @:: Lens' UpdateFailureState Data.Text.Text@ -}
data UpdateFailureState
  = UpdateFailureState'_constructor {_UpdateFailureState'failedConfiguration :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                     _UpdateFailureState'lastUpdateAttempt :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                     _UpdateFailureState'details :: !Data.Text.Text,
                                     _UpdateFailureState'versionInfo :: !Data.Text.Text,
                                     _UpdateFailureState'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UpdateFailureState where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UpdateFailureState "failedConfiguration" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateFailureState'failedConfiguration
           (\ x__ y__ -> x__ {_UpdateFailureState'failedConfiguration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UpdateFailureState "maybe'failedConfiguration" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateFailureState'failedConfiguration
           (\ x__ y__ -> x__ {_UpdateFailureState'failedConfiguration = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateFailureState "lastUpdateAttempt" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateFailureState'lastUpdateAttempt
           (\ x__ y__ -> x__ {_UpdateFailureState'lastUpdateAttempt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UpdateFailureState "maybe'lastUpdateAttempt" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateFailureState'lastUpdateAttempt
           (\ x__ y__ -> x__ {_UpdateFailureState'lastUpdateAttempt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateFailureState "details" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateFailureState'details
           (\ x__ y__ -> x__ {_UpdateFailureState'details = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateFailureState "versionInfo" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateFailureState'versionInfo
           (\ x__ y__ -> x__ {_UpdateFailureState'versionInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Message UpdateFailureState where
  messageName _ = Data.Text.pack "envoy.admin.v3.UpdateFailureState"
  packedMessageDescriptor _
    = "\n\
      \\DC2UpdateFailureState\DC2G\n\
      \\DC4failed_configuration\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\DC3failedConfiguration\DC2J\n\
      \\DC3last_update_attempt\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\DC1lastUpdateAttempt\DC2\CAN\n\
      \\adetails\CAN\ETX \SOH(\tR\adetails\DC2!\n\
      \\fversion_info\CAN\EOT \SOH(\tR\vversionInfo:-\154\197\136\RS(\n\
      \&envoy.admin.v2alpha.UpdateFailureState"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        failedConfiguration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failed_configuration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failedConfiguration")) ::
              Data.ProtoLens.FieldDescriptor UpdateFailureState
        lastUpdateAttempt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_update_attempt"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastUpdateAttempt")) ::
              Data.ProtoLens.FieldDescriptor UpdateFailureState
        details__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "details"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"details")) ::
              Data.ProtoLens.FieldDescriptor UpdateFailureState
        versionInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version_info"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"versionInfo")) ::
              Data.ProtoLens.FieldDescriptor UpdateFailureState
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, failedConfiguration__field_descriptor),
           (Data.ProtoLens.Tag 2, lastUpdateAttempt__field_descriptor),
           (Data.ProtoLens.Tag 3, details__field_descriptor),
           (Data.ProtoLens.Tag 4, versionInfo__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UpdateFailureState'_unknownFields
        (\ x__ y__ -> x__ {_UpdateFailureState'_unknownFields = y__})
  defMessage
    = UpdateFailureState'_constructor
        {_UpdateFailureState'failedConfiguration = Prelude.Nothing,
         _UpdateFailureState'lastUpdateAttempt = Prelude.Nothing,
         _UpdateFailureState'details = Data.ProtoLens.fieldDefault,
         _UpdateFailureState'versionInfo = Data.ProtoLens.fieldDefault,
         _UpdateFailureState'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UpdateFailureState
          -> Data.ProtoLens.Encoding.Bytes.Parser UpdateFailureState
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
                                       "failed_configuration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"failedConfiguration") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_update_attempt"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastUpdateAttempt") y x)
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
                                       "details"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"details") y x)
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
                                       "version_info"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"versionInfo") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UpdateFailureState"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'failedConfiguration") _x
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
                       (Data.ProtoLens.Field.field @"maybe'lastUpdateAttempt") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"details") _x
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
                      (let
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"versionInfo") _x
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
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData UpdateFailureState where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UpdateFailureState'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UpdateFailureState'failedConfiguration x__)
                (Control.DeepSeq.deepseq
                   (_UpdateFailureState'lastUpdateAttempt x__)
                   (Control.DeepSeq.deepseq
                      (_UpdateFailureState'details x__)
                      (Control.DeepSeq.deepseq
                         (_UpdateFailureState'versionInfo x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \ envoy/admin/v3/config_dump.proto\DC2\SOenvoy.admin.v3\SUB)envoy/config/bootstrap/v3/bootstrap.proto\SUB\EMgoogle/protobuf/any.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"c\n\
    \\n\
    \ConfigDump\DC2.\n\
    \\aconfigs\CAN\SOH \ETX(\v2\DC4.google.protobuf.AnyR\aconfigs:%\154\197\136\RS \n\
    \\RSenvoy.admin.v2alpha.ConfigDump\"\149\STX\n\
    \\DC2UpdateFailureState\DC2G\n\
    \\DC4failed_configuration\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\DC3failedConfiguration\DC2J\n\
    \\DC3last_update_attempt\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\DC1lastUpdateAttempt\DC2\CAN\n\
    \\adetails\CAN\ETX \SOH(\tR\adetails\DC2!\n\
    \\fversion_info\CAN\EOT \SOH(\tR\vversionInfo:-\154\197\136\RS(\n\
    \&envoy.admin.v2alpha.UpdateFailureState\"\200\SOH\n\
    \\DC3BootstrapConfigDump\DC2B\n\
    \\tbootstrap\CAN\SOH \SOH(\v2$.envoy.config.bootstrap.v3.BootstrapR\tbootstrap\DC2=\n\
    \\flast_updated\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated:.\154\197\136\RS)\n\
    \'envoy.admin.v2alpha.BootstrapConfigDump\"\243\t\n\
    \\DC3ListenersConfigDump\DC2!\n\
    \\fversion_info\CAN\SOH \SOH(\tR\vversionInfo\DC2]\n\
    \\DLEstatic_listeners\CAN\STX \ETX(\v22.envoy.admin.v3.ListenersConfigDump.StaticListenerR\SIstaticListeners\DC2`\n\
    \\DC1dynamic_listeners\CAN\ETX \ETX(\v23.envoy.admin.v3.ListenersConfigDump.DynamicListenerR\DLEdynamicListeners\SUB\192\SOH\n\
    \\SOStaticListener\DC20\n\
    \\blistener\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\blistener\DC2=\n\
    \\flast_updated\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated:=\154\197\136\RS8\n\
    \6envoy.admin.v2alpha.ListenersConfigDump.StaticListener\SUB\239\SOH\n\
    \\DC4DynamicListenerState\DC2!\n\
    \\fversion_info\CAN\SOH \SOH(\tR\vversionInfo\DC20\n\
    \\blistener\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\blistener\DC2=\n\
    \\flast_updated\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated:C\154\197\136\RS>\n\
    \<envoy.admin.v2alpha.ListenersConfigDump.DynamicListenerState\SUB\146\EOT\n\
    \\SIDynamicListener\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2[\n\
    \\factive_state\CAN\STX \SOH(\v28.envoy.admin.v3.ListenersConfigDump.DynamicListenerStateR\vactiveState\DC2]\n\
    \\rwarming_state\CAN\ETX \SOH(\v28.envoy.admin.v3.ListenersConfigDump.DynamicListenerStateR\fwarmingState\DC2_\n\
    \\SOdraining_state\CAN\EOT \SOH(\v28.envoy.admin.v3.ListenersConfigDump.DynamicListenerStateR\rdrainingState\DC2C\n\
    \\verror_state\CAN\ENQ \SOH(\v2\".envoy.admin.v3.UpdateFailureStateR\n\
    \errorState\DC2I\n\
    \\rclient_status\CAN\ACK \SOH(\SO2$.envoy.admin.v3.ClientResourceStatusR\fclientStatus:>\154\197\136\RS9\n\
    \7envoy.admin.v2alpha.ListenersConfigDump.DynamicListener:.\154\197\136\RS)\n\
    \'envoy.admin.v2alpha.ListenersConfigDump\"\202\a\n\
    \\DC2ClustersConfigDump\DC2!\n\
    \\fversion_info\CAN\SOH \SOH(\tR\vversionInfo\DC2Y\n\
    \\SIstatic_clusters\CAN\STX \ETX(\v20.envoy.admin.v3.ClustersConfigDump.StaticClusterR\SOstaticClusters\DC2i\n\
    \\ETBdynamic_active_clusters\CAN\ETX \ETX(\v21.envoy.admin.v3.ClustersConfigDump.DynamicClusterR\NAKdynamicActiveClusters\DC2k\n\
    \\CANdynamic_warming_clusters\CAN\EOT \ETX(\v21.envoy.admin.v3.ClustersConfigDump.DynamicClusterR\SYNdynamicWarmingClusters\SUB\187\SOH\n\
    \\rStaticCluster\DC2.\n\
    \\acluster\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\acluster\DC2=\n\
    \\flast_updated\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated:;\154\197\136\RS6\n\
    \4envoy.admin.v2alpha.ClustersConfigDump.StaticCluster\SUB\240\STX\n\
    \\SODynamicCluster\DC2!\n\
    \\fversion_info\CAN\SOH \SOH(\tR\vversionInfo\DC2.\n\
    \\acluster\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\acluster\DC2=\n\
    \\flast_updated\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated\DC2C\n\
    \\verror_state\CAN\EOT \SOH(\v2\".envoy.admin.v3.UpdateFailureStateR\n\
    \errorState\DC2I\n\
    \\rclient_status\CAN\ENQ \SOH(\SO2$.envoy.admin.v3.ClientResourceStatusR\fclientStatus:<\154\197\136\RS7\n\
    \5envoy.admin.v2alpha.ClustersConfigDump.DynamicCluster:-\154\197\136\RS(\n\
    \&envoy.admin.v2alpha.ClustersConfigDump\"\221\ACK\n\
    \\DLERoutesConfigDump\DC2d\n\
    \\DC4static_route_configs\CAN\STX \ETX(\v22.envoy.admin.v3.RoutesConfigDump.StaticRouteConfigR\DC2staticRouteConfigs\DC2g\n\
    \\NAKdynamic_route_configs\CAN\ETX \ETX(\v23.envoy.admin.v3.RoutesConfigDump.DynamicRouteConfigR\DC3dynamicRouteConfigs\SUB\202\SOH\n\
    \\DC1StaticRouteConfig\DC27\n\
    \\froute_config\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\vrouteConfig\DC2=\n\
    \\flast_updated\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated:=\154\197\136\RS8\n\
    \6envoy.admin.v2alpha.RoutesConfigDump.StaticRouteConfig\SUB\255\STX\n\
    \\DC2DynamicRouteConfig\DC2!\n\
    \\fversion_info\CAN\SOH \SOH(\tR\vversionInfo\DC27\n\
    \\froute_config\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\vrouteConfig\DC2=\n\
    \\flast_updated\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated\DC2C\n\
    \\verror_state\CAN\EOT \SOH(\v2\".envoy.admin.v3.UpdateFailureStateR\n\
    \errorState\DC2I\n\
    \\rclient_status\CAN\ENQ \SOH(\SO2$.envoy.admin.v3.ClientResourceStatusR\fclientStatus:>\154\197\136\RS9\n\
    \7envoy.admin.v2alpha.RoutesConfigDump.DynamicRouteConfig:+\154\197\136\RS&\n\
    \$envoy.admin.v2alpha.RoutesConfigDump\"\140\b\n\
    \\SYNScopedRoutesConfigDump\DC2~\n\
    \\ESCinline_scoped_route_configs\CAN\SOH \ETX(\v2?.envoy.admin.v3.ScopedRoutesConfigDump.InlineScopedRouteConfigsR\CANinlineScopedRouteConfigs\DC2\129\SOH\n\
    \\FSdynamic_scoped_route_configs\CAN\STX \ETX(\v2@.envoy.admin.v3.ScopedRoutesConfigDump.DynamicScopedRouteConfigsR\EMdynamicScopedRouteConfigs\SUB\129\STX\n\
    \\CANInlineScopedRouteConfigs\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2F\n\
    \\DC4scoped_route_configs\CAN\STX \ETX(\v2\DC4.google.protobuf.AnyR\DC2scopedRouteConfigs\DC2=\n\
    \\flast_updated\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated:J\154\197\136\RSE\n\
    \Cenvoy.admin.v2alpha.ScopedRoutesConfigDump.InlineScopedRouteConfigs\SUB\182\ETX\n\
    \\EMDynamicScopedRouteConfigs\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2!\n\
    \\fversion_info\CAN\STX \SOH(\tR\vversionInfo\DC2F\n\
    \\DC4scoped_route_configs\CAN\ETX \ETX(\v2\DC4.google.protobuf.AnyR\DC2scopedRouteConfigs\DC2=\n\
    \\flast_updated\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated\DC2C\n\
    \\verror_state\CAN\ENQ \SOH(\v2\".envoy.admin.v3.UpdateFailureStateR\n\
    \errorState\DC2I\n\
    \\rclient_status\CAN\ACK \SOH(\SO2$.envoy.admin.v3.ClientResourceStatusR\fclientStatus:K\154\197\136\RSF\n\
    \Denvoy.admin.v2alpha.ScopedRoutesConfigDump.DynamicScopedRouteConfigs:1\154\197\136\RS,\n\
    \*envoy.admin.v2alpha.ScopedRoutesConfigDump\"\183\a\n\
    \\DC1SecretsConfigDump\DC2U\n\
    \\SOstatic_secrets\CAN\SOH \ETX(\v2..envoy.admin.v3.SecretsConfigDump.StaticSecretR\rstaticSecrets\DC2e\n\
    \\SYNdynamic_active_secrets\CAN\STX \ETX(\v2/.envoy.admin.v3.SecretsConfigDump.DynamicSecretR\DC4dynamicActiveSecrets\DC2g\n\
    \\ETBdynamic_warming_secrets\CAN\ETX \ETX(\v2/.envoy.admin.v3.SecretsConfigDump.DynamicSecretR\NAKdynamicWarmingSecrets\SUB\255\STX\n\
    \\rDynamicSecret\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2!\n\
    \\fversion_info\CAN\STX \SOH(\tR\vversionInfo\DC2=\n\
    \\flast_updated\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated\DC2,\n\
    \\ACKsecret\CAN\EOT \SOH(\v2\DC4.google.protobuf.AnyR\ACKsecret\DC2C\n\
    \\verror_state\CAN\ENQ \SOH(\v2\".envoy.admin.v3.UpdateFailureStateR\n\
    \errorState\DC2I\n\
    \\rclient_status\CAN\ACK \SOH(\SO2$.envoy.admin.v3.ClientResourceStatusR\fclientStatus::\154\197\136\RS5\n\
    \3envoy.admin.v2alpha.SecretsConfigDump.DynamicSecret\SUB\202\SOH\n\
    \\fStaticSecret\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2=\n\
    \\flast_updated\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated\DC2,\n\
    \\ACKsecret\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyR\ACKsecret:9\154\197\136\RS4\n\
    \2envoy.admin.v2alpha.SecretsConfigDump.StaticSecret:,\154\197\136\RS'\n\
    \%envoy.admin.v2alpha.SecretsConfigDump\"\222\ENQ\n\
    \\DC3EndpointsConfigDump\DC2p\n\
    \\ETBstatic_endpoint_configs\CAN\STX \ETX(\v28.envoy.admin.v3.EndpointsConfigDump.StaticEndpointConfigR\NAKstaticEndpointConfigs\DC2s\n\
    \\CANdynamic_endpoint_configs\CAN\ETX \ETX(\v29.envoy.admin.v3.EndpointsConfigDump.DynamicEndpointConfigR\SYNdynamicEndpointConfigs\SUB\148\SOH\n\
    \\DC4StaticEndpointConfig\DC2=\n\
    \\SIendpoint_config\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\SOendpointConfig\DC2=\n\
    \\flast_updated\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated\SUB\200\STX\n\
    \\NAKDynamicEndpointConfig\DC2!\n\
    \\fversion_info\CAN\SOH \SOH(\tR\vversionInfo\DC2=\n\
    \\SIendpoint_config\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\SOendpointConfig\DC2=\n\
    \\flast_updated\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated\DC2C\n\
    \\verror_state\CAN\EOT \SOH(\v2\".envoy.admin.v3.UpdateFailureStateR\n\
    \errorState\DC2I\n\
    \\rclient_status\CAN\ENQ \SOH(\SO2$.envoy.admin.v3.ClientResourceStatusR\fclientStatus*]\n\
    \\DC4ClientResourceStatus\DC2\v\n\
    \\aUNKNOWN\DLE\NUL\DC2\r\n\
    \\tREQUESTED\DLE\SOH\DC2\DC2\n\
    \\SODOES_NOT_EXIST\DLE\STX\DC2\t\n\
    \\ENQACKED\DLE\ETX\DC2\n\
    \\n\
    \\ACKNACKED\DLE\EOTB9\n\
    \\FSio.envoyproxy.envoy.admin.v3B\SIConfigDumpProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\226\151\SOH\n\
    \\a\DC2\ENQ\NUL\NUL\225\ETX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\ETB\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL3\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL)\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL'\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL5\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NUL5\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL0\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL0\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SO\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SI\NULF\n\
    \\177\SOH\n\
    \\STX\ENQ\NUL\DC2\EOT\NAK\NUL*\SOH\SUB\131\SOH Resource status from the view of a xDS client, which tells the synchronization\n\
    \ status between the xDS client and the xDS server.\n\
    \2\US [#protodoc-title: ConfigDump]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\NAK\ENQ\EM\n\
    \8\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX\ETB\STX\SO\SUB+ Resource status is not available/unknown.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX\ETB\STX\t\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX\ETB\f\r\n\
    \\229\SOH\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX\FS\STX\DLE\SUB\215\SOH Client requested this resource but hasn't received any update from management\n\
    \ server. The client will not fail requests, but will queue them until update\n\
    \ arrives or the client times out waiting for the resource.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX\FS\STX\v\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX\FS\SO\SI\n\
    \\242\STX\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX#\STX\NAK\SUB\228\STX This resource has been requested by the client but has either not been\n\
    \ delivered by the server or was previously delivered by the server and then\n\
    \ subsequently removed from resources provided by the server. For more\n\
    \ information, please refer to the :ref:`\"Knowing When a Requested Resource\n\
    \ Does Not Exist\" <xds_protocol_resource_not_existed>` section.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX#\STX\DLE\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX#\DC3\DC4\n\
    \B\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETX&\STX\f\SUB5 Client received this resource and replied with ACK.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETX&\STX\a\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETX&\n\
    \\v\n\
    \C\n\
    \\EOT\ENQ\NUL\STX\EOT\DC2\ETX)\STX\r\SUB6 Client received this resource and replied with NACK.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\SOH\DC2\ETX)\STX\b\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\STX\DC2\ETX)\v\f\n\
    \\208\SOH\n\
    \\STX\EOT\NUL\DC2\EOT.\NULG\SOH\SUB\195\SOH The :ref:`/config_dump <operations_admin_interface_config_dump>` admin endpoint uses this wrapper\n\
    \ message to maintain and serve arbitrary configuration information from any component in Envoy.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX.\b\DC2\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX/\STX`\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX/\STX`\n\
    \\169\n\
    \\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXF\STX+\SUB\155\n\
    \ This list is serialized and dumped in its entirety at the\n\
    \ :ref:`/config_dump <operations_admin_interface_config_dump>` endpoint.\n\
    \\n\
    \ The following configurations are currently supported and will be dumped in the order given\n\
    \ below:\n\
    \\n\
    \ * *bootstrap*: :ref:`BootstrapConfigDump <envoy_v3_api_msg_admin.v3.BootstrapConfigDump>`\n\
    \ * *clusters*: :ref:`ClustersConfigDump <envoy_v3_api_msg_admin.v3.ClustersConfigDump>`\n\
    \ * *endpoints*:  :ref:`EndpointsConfigDump <envoy_v3_api_msg_admin.v3.EndpointsConfigDump>`\n\
    \ * *listeners*: :ref:`ListenersConfigDump <envoy_v3_api_msg_admin.v3.ListenersConfigDump>`\n\
    \ * *scoped_routes*: :ref:`ScopedRoutesConfigDump <envoy_v3_api_msg_admin.v3.ScopedRoutesConfigDump>`\n\
    \ * *routes*:  :ref:`RoutesConfigDump <envoy_v3_api_msg_admin.v3.RoutesConfigDump>`\n\
    \ * *secrets*:  :ref:`SecretsConfigDump <envoy_v3_api_msg_admin.v3.SecretsConfigDump>`\n\
    \\n\
    \ EDS Configuration will only be dumped by using parameter `?include_eds`\n\
    \\n\
    \ You can filter output with the resource and mask query parameters.\n\
    \ See :ref:`/config_dump?resource={} <operations_admin_interface_config_dump_by_resource>`,\n\
    \ :ref:`/config_dump?mask={} <operations_admin_interface_config_dump_by_mask>`,\n\
    \ or :ref:`/config_dump?resource={},mask={}\n\
    \ <operations_admin_interface_config_dump_by_resource_and_mask>` for more information.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETXF\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETXF\v\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXF\US&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXF)*\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOTI\NULZ\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXI\b\SUB\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOTJ\STXK/\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOTJ\STXK/\n\
    \\166\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXO\STX/\SUB\152\SOH What the component configuration would have been if the update had succeeded.\n\
    \ This field may not be populated by xDS clients due to storage overhead.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXO\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXO\SYN*\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXO-.\n\
    \8\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXR\STX4\SUB+ Time of the latest failed update attempt.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETXR\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXR\FS/\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXR23\n\
    \<\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETXU\STX\NAK\SUB/ Details about the last failed update attempt.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETXU\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETXU\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETXU\DC3\DC4\n\
    \V\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETXY\STX\SUB\SUBI This is the version of the rejected resource.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETXY\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETXY\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETXY\CAN\EM\n\
    \\197\STX\n\
    \\STX\EOT\STX\DC2\EOT`\NULh\SOH\SUB\184\STX This message describes the bootstrap configuration that Envoy was started with. This includes\n\
    \ any CLI overrides that were merged. Bootstrap configuration information can be used to recreate\n\
    \ the static portions of an Envoy configuration by reusing the output as the bootstrap\n\
    \ configuration for another Envoy.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX`\b\ESC\n\
    \\v\n\
    \\ETX\EOT\STX\a\DC2\EOTa\STXb0\n\
    \\DLE\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\EOTa\STXb0\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXd\STX.\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETXd\STX\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXd )\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXd,-\n\
    \G\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXg\STX-\SUB: The timestamp when the BootstrapConfig was last updated.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETXg\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXg\FS(\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXg+,\n\
    \\139\STX\n\
    \\STX\EOT\ETX\DC2\ENQm\NUL\188\SOH\SOH\SUB\253\SOH Envoy's listener manager fills this message with all currently known listeners. Listener\n\
    \ configuration information can be used to recreate an Envoy configuration by populating all\n\
    \ listeners as static listeners or by returning them in a LDS response.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXm\b\ESC\n\
    \\v\n\
    \\ETX\EOT\ETX\a\DC2\EOTn\STXo0\n\
    \\DLE\n\
    \\b\EOT\ETX\a\211\136\225\ETX\SOH\DC2\EOTn\STXo0\n\
    \7\n\
    \\EOT\EOT\ETX\ETX\NUL\DC2\EOTr\STX{\ETX\SUB) Describes a statically loaded listener.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\ETX\NUL\SOH\DC2\ETXr\n\
    \\CAN\n\
    \\r\n\
    \\ENQ\EOT\ETX\ETX\NUL\a\DC2\EOTs\EOTtA\n\
    \\DC2\n\
    \\n\
    \\EOT\ETX\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOTs\EOTtA\n\
    \%\n\
    \\ACK\EOT\ETX\ETX\NUL\STX\NUL\DC2\ETXw\EOT%\SUB\SYN The listener config.\n\
    \\n\
    \\SO\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\ACK\DC2\ETXw\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\SOH\DC2\ETXw\CAN \n\
    \\SO\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\ETX\DC2\ETXw#$\n\
    \O\n\
    \\ACK\EOT\ETX\ETX\NUL\STX\SOH\DC2\ETXz\EOT/\SUB@ The timestamp when the Listener was last successfully updated.\n\
    \\n\
    \\SO\n\
    \\a\EOT\ETX\ETX\NUL\STX\SOH\ACK\DC2\ETXz\EOT\GS\n\
    \\SO\n\
    \\a\EOT\ETX\ETX\NUL\STX\SOH\SOH\DC2\ETXz\RS*\n\
    \\SO\n\
    \\a\EOT\ETX\ETX\NUL\STX\SOH\ETX\DC2\ETXz-.\n\
    \\r\n\
    \\EOT\EOT\ETX\ETX\SOH\DC2\ENQ}\STX\140\SOH\ETX\n\
    \\f\n\
    \\ENQ\EOT\ETX\ETX\SOH\SOH\DC2\ETX}\n\
    \\RS\n\
    \\r\n\
    \\ENQ\EOT\ETX\ETX\SOH\a\DC2\EOT~\EOT\DELG\n\
    \\DC2\n\
    \\n\
    \\EOT\ETX\ETX\SOH\a\211\136\225\ETX\SOH\DC2\EOT~\EOT\DELG\n\
    \\196\STX\n\
    \\ACK\EOT\ETX\ETX\SOH\STX\NUL\DC2\EOT\133\SOH\EOT\FS\SUB\179\STX This is the per-resource version information. This version is currently taken from the\n\
    \ :ref:`version_info <envoy_v3_api_field_service.discovery.v3.DiscoveryResponse.version_info>` field at the time\n\
    \ that the listener was loaded. In the future, discrete per-listener versions may be supported\n\
    \ by the API.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\SOH\STX\NUL\ENQ\DC2\EOT\133\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\SOH\STX\NUL\SOH\DC2\EOT\133\SOH\v\ETB\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\SOH\STX\NUL\ETX\DC2\EOT\133\SOH\SUB\ESC\n\
    \&\n\
    \\ACK\EOT\ETX\ETX\SOH\STX\SOH\DC2\EOT\136\SOH\EOT%\SUB\SYN The listener config.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\SOH\STX\SOH\ACK\DC2\EOT\136\SOH\EOT\ETB\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\SOH\STX\SOH\SOH\DC2\EOT\136\SOH\CAN \n\
    \\SI\n\
    \\a\EOT\ETX\ETX\SOH\STX\SOH\ETX\DC2\EOT\136\SOH#$\n\
    \P\n\
    \\ACK\EOT\ETX\ETX\SOH\STX\STX\DC2\EOT\139\SOH\EOT/\SUB@ The timestamp when the Listener was last successfully updated.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\SOH\STX\STX\ACK\DC2\EOT\139\SOH\EOT\GS\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\SOH\STX\STX\SOH\DC2\EOT\139\SOH\RS*\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\SOH\STX\STX\ETX\DC2\EOT\139\SOH-.\n\
    \a\n\
    \\EOT\EOT\ETX\ETX\STX\DC2\ACK\144\SOH\STX\176\SOH\ETX\SUBQ Describes a dynamically loaded listener via the LDS API.\n\
    \ [#next-free-field: 7]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\ETX\STX\SOH\DC2\EOT\144\SOH\n\
    \\EM\n\
    \\SI\n\
    \\ENQ\EOT\ETX\ETX\STX\a\DC2\ACK\145\SOH\EOT\146\SOHB\n\
    \\DC4\n\
    \\n\
    \\EOT\ETX\ETX\STX\a\211\136\225\ETX\SOH\DC2\ACK\145\SOH\EOT\146\SOHB\n\
    \f\n\
    \\ACK\EOT\ETX\ETX\STX\STX\NUL\DC2\EOT\149\SOH\EOT\DC4\SUBV The name or unique id of this listener, pulled from the DynamicListenerState config.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\STX\STX\NUL\ENQ\DC2\EOT\149\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\STX\STX\NUL\SOH\DC2\EOT\149\SOH\v\SI\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\STX\STX\NUL\ETX\DC2\EOT\149\SOH\DC2\DC3\n\
    \\146\SOH\n\
    \\ACK\EOT\ETX\ETX\STX\STX\SOH\DC2\EOT\153\SOH\EOT*\SUB\129\SOH The listener state for any active listener by this name.\n\
    \ These are listeners that are available to service data plane traffic.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\STX\STX\SOH\ACK\DC2\EOT\153\SOH\EOT\CAN\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\STX\STX\SOH\SOH\DC2\EOT\153\SOH\EM%\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\STX\STX\SOH\ETX\DC2\EOT\153\SOH()\n\
    \\194\STX\n\
    \\ACK\EOT\ETX\ETX\STX\STX\STX\DC2\EOT\159\SOH\EOT+\SUB\177\STX The listener state for any warming listener by this name.\n\
    \ These are listeners that are currently undergoing warming in preparation to service data\n\
    \ plane traffic. Note that if attempting to recreate an Envoy configuration from a\n\
    \ configuration dump, the warming listeners should generally be discarded.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\STX\STX\STX\ACK\DC2\EOT\159\SOH\EOT\CAN\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\STX\STX\STX\SOH\DC2\EOT\159\SOH\EM&\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\STX\STX\STX\ETX\DC2\EOT\159\SOH)*\n\
    \\204\STX\n\
    \\ACK\EOT\ETX\ETX\STX\STX\ETX\DC2\EOT\165\SOH\EOT,\SUB\187\STX The listener state for any draining listener by this name.\n\
    \ These are listeners that are currently undergoing draining in preparation to stop servicing\n\
    \ data plane traffic. Note that if attempting to recreate an Envoy configuration from a\n\
    \ configuration dump, the draining listeners should generally be discarded.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\STX\STX\ETX\ACK\DC2\EOT\165\SOH\EOT\CAN\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\STX\STX\ETX\SOH\DC2\EOT\165\SOH\EM'\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\STX\STX\ETX\ETX\DC2\EOT\165\SOH*+\n\
    \\164\STX\n\
    \\ACK\EOT\ETX\ETX\STX\STX\EOT\DC2\EOT\171\SOH\EOT'\SUB\147\STX Set if the last update failed, cleared after the next successful update.\n\
    \ The *error_state* field contains the rejected version of this particular\n\
    \ resource along with the reason and timestamp. For successfully updated or\n\
    \ acknowledged resource, this field should be empty.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\STX\STX\EOT\ACK\DC2\EOT\171\SOH\EOT\SYN\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\STX\STX\EOT\SOH\DC2\EOT\171\SOH\ETB\"\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\STX\STX\EOT\ETX\DC2\EOT\171\SOH%&\n\
    \O\n\
    \\ACK\EOT\ETX\ETX\STX\STX\ENQ\DC2\EOT\175\SOH\EOT+\SUB? The client status of this resource.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\STX\STX\ENQ\ACK\DC2\EOT\175\SOH\EOT\CAN\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\STX\STX\ENQ\SOH\DC2\EOT\175\SOH\EM&\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\STX\STX\ENQ\ETX\DC2\EOT\175\SOH)*\n\
    \\238\SOH\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\181\SOH\STX\SUB\SUB\223\SOH This is the :ref:`version_info <envoy_v3_api_field_service.discovery.v3.DiscoveryResponse.version_info>` in the\n\
    \ last processed LDS discovery response. If there are only static bootstrap listeners, this field\n\
    \ will be \"\".\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\EOT\181\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\181\SOH\t\NAK\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\181\SOH\CAN\EM\n\
    \7\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT\184\SOH\STX/\SUB) The statically loaded listener configs.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\EOT\184\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\EOT\184\SOH\v\EM\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\EOT\184\SOH\SUB*\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\EOT\184\SOH-.\n\
    \E\n\
    \\EOT\EOT\ETX\STX\STX\DC2\EOT\187\SOH\STX1\SUB7 State for any warming, active, or draining listeners.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\EOT\DC2\EOT\187\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ACK\DC2\EOT\187\SOH\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\EOT\187\SOH\ESC,\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\EOT\187\SOH/0\n\
    \\135\STX\n\
    \\STX\EOT\EOT\DC2\ACK\193\SOH\NUL\128\STX\SOH\SUB\248\SOH Envoy's cluster manager fills this message with all currently known clusters. Cluster\n\
    \ configuration information can be used to recreate an Envoy configuration by populating all\n\
    \ clusters as static clusters or by returning them in a CDS response.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\193\SOH\b\SUB\n\
    \\r\n\
    \\ETX\EOT\EOT\a\DC2\ACK\194\SOH\STX\195\SOH/\n\
    \\DC2\n\
    \\b\EOT\EOT\a\211\136\225\ETX\SOH\DC2\ACK\194\SOH\STX\195\SOH/\n\
    \8\n\
    \\EOT\EOT\EOT\ETX\NUL\DC2\ACK\198\SOH\STX\207\SOH\ETX\SUB( Describes a statically loaded cluster.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\ETX\NUL\SOH\DC2\EOT\198\SOH\n\
    \\ETB\n\
    \\SI\n\
    \\ENQ\EOT\EOT\ETX\NUL\a\DC2\ACK\199\SOH\EOT\200\SOH?\n\
    \\DC4\n\
    \\n\
    \\EOT\EOT\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ACK\199\SOH\EOT\200\SOH?\n\
    \%\n\
    \\ACK\EOT\EOT\ETX\NUL\STX\NUL\DC2\EOT\203\SOH\EOT$\SUB\NAK The cluster config.\n\
    \\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\NUL\ACK\DC2\EOT\203\SOH\EOT\ETB\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\NUL\SOH\DC2\EOT\203\SOH\CAN\US\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\NUL\ETX\DC2\EOT\203\SOH\"#\n\
    \B\n\
    \\ACK\EOT\EOT\ETX\NUL\STX\SOH\DC2\EOT\206\SOH\EOT/\SUB2 The timestamp when the Cluster was last updated.\n\
    \\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\SOH\ACK\DC2\EOT\206\SOH\EOT\GS\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\SOH\SOH\DC2\EOT\206\SOH\RS*\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\SOH\ETX\DC2\EOT\206\SOH-.\n\
    \`\n\
    \\EOT\EOT\EOT\ETX\SOH\DC2\ACK\211\SOH\STX\237\SOH\ETX\SUBP Describes a dynamically loaded cluster via the CDS API.\n\
    \ [#next-free-field: 6]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\ETX\SOH\SOH\DC2\EOT\211\SOH\n\
    \\CAN\n\
    \\SI\n\
    \\ENQ\EOT\EOT\ETX\SOH\a\DC2\ACK\212\SOH\EOT\213\SOH@\n\
    \\DC4\n\
    \\n\
    \\EOT\EOT\ETX\SOH\a\211\136\225\ETX\SOH\DC2\ACK\212\SOH\EOT\213\SOH@\n\
    \\194\STX\n\
    \\ACK\EOT\EOT\ETX\SOH\STX\NUL\DC2\EOT\219\SOH\EOT\FS\SUB\177\STX This is the per-resource version information. This version is currently taken from the\n\
    \ :ref:`version_info <envoy_v3_api_field_service.discovery.v3.DiscoveryResponse.version_info>` field at the time\n\
    \ that the cluster was loaded. In the future, discrete per-cluster versions may be supported by\n\
    \ the API.\n\
    \\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\SOH\STX\NUL\ENQ\DC2\EOT\219\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\SOH\STX\NUL\SOH\DC2\EOT\219\SOH\v\ETB\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\SOH\STX\NUL\ETX\DC2\EOT\219\SOH\SUB\ESC\n\
    \%\n\
    \\ACK\EOT\EOT\ETX\SOH\STX\SOH\DC2\EOT\222\SOH\EOT$\SUB\NAK The cluster config.\n\
    \\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\SOH\STX\SOH\ACK\DC2\EOT\222\SOH\EOT\ETB\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\SOH\STX\SOH\SOH\DC2\EOT\222\SOH\CAN\US\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\SOH\STX\SOH\ETX\DC2\EOT\222\SOH\"#\n\
    \B\n\
    \\ACK\EOT\EOT\ETX\SOH\STX\STX\DC2\EOT\225\SOH\EOT/\SUB2 The timestamp when the Cluster was last updated.\n\
    \\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\SOH\STX\STX\ACK\DC2\EOT\225\SOH\EOT\GS\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\SOH\STX\STX\SOH\DC2\EOT\225\SOH\RS*\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\SOH\STX\STX\ETX\DC2\EOT\225\SOH-.\n\
    \\190\STX\n\
    \\ACK\EOT\EOT\ETX\SOH\STX\ETX\DC2\EOT\232\SOH\EOT'\SUB\173\STX Set if the last update failed, cleared after the next successful update.\n\
    \ The *error_state* field contains the rejected version of this particular\n\
    \ resource along with the reason and timestamp. For successfully updated or\n\
    \ acknowledged resource, this field should be empty.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\SOH\STX\ETX\ACK\DC2\EOT\232\SOH\EOT\SYN\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\SOH\STX\ETX\SOH\DC2\EOT\232\SOH\ETB\"\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\SOH\STX\ETX\ETX\DC2\EOT\232\SOH%&\n\
    \O\n\
    \\ACK\EOT\EOT\ETX\SOH\STX\EOT\DC2\EOT\236\SOH\EOT+\SUB? The client status of this resource.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\SOH\STX\EOT\ACK\DC2\EOT\236\SOH\EOT\CAN\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\SOH\STX\EOT\SOH\DC2\EOT\236\SOH\EM&\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\SOH\STX\EOT\ETX\DC2\EOT\236\SOH)*\n\
    \\237\SOH\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\242\SOH\STX\SUB\SUB\222\SOH This is the :ref:`version_info <envoy_v3_api_field_service.discovery.v3.DiscoveryResponse.version_info>` in the\n\
    \ last processed CDS discovery response. If there are only static bootstrap clusters, this field\n\
    \ will be \"\".\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\EOT\242\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\242\SOH\t\NAK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\242\SOH\CAN\EM\n\
    \6\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\EOT\245\SOH\STX-\SUB( The statically loaded cluster configs.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\EOT\245\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\EOT\245\SOH\v\CAN\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\EOT\245\SOH\EM(\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\EOT\245\SOH+,\n\
    \}\n\
    \\EOT\EOT\EOT\STX\STX\DC2\EOT\249\SOH\STX6\SUBo The dynamically loaded active clusters. These are clusters that are available to service\n\
    \ data plane traffic.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\EOT\249\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ACK\DC2\EOT\249\SOH\v\EM\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\EOT\249\SOH\SUB1\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\EOT\249\SOH45\n\
    \\173\STX\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\EOT\255\SOH\STX7\SUB\158\STX The dynamically loaded warming clusters. These are clusters that are currently undergoing\n\
    \ warming in preparation to service data plane traffic. Note that if attempting to recreate an\n\
    \ Envoy configuration from a configuration dump, the warming clusters should generally be\n\
    \ discarded.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\EOT\DC2\EOT\255\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ACK\DC2\EOT\255\SOH\v\EM\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\EOT\255\SOH\SUB2\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\EOT\255\SOH56\n\
    \\226\ETX\n\
    \\STX\EOT\ENQ\DC2\ACK\135\STX\NUL\183\STX\SOH\SUB\211\ETX Envoy's RDS implementation fills this message with all currently loaded routes, as described by\n\
    \ their RouteConfiguration objects. Static routes that are either defined in the bootstrap configuration\n\
    \ or defined inline while configuring listeners are separated from those configured dynamically via RDS.\n\
    \ Route configuration information can be used to recreate an Envoy configuration by populating all routes\n\
    \ as static routes or by returning them in RDS responses.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\135\STX\b\CAN\n\
    \\r\n\
    \\ETX\EOT\ENQ\a\DC2\ACK\136\STX\STX\137\STX-\n\
    \\DC2\n\
    \\b\EOT\ENQ\a\211\136\225\ETX\SOH\DC2\ACK\136\STX\STX\137\STX-\n\
    \\SO\n\
    \\EOT\EOT\ENQ\ETX\NUL\DC2\ACK\139\STX\STX\148\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\ENQ\ETX\NUL\SOH\DC2\EOT\139\STX\n\
    \\ESC\n\
    \\SI\n\
    \\ENQ\EOT\ENQ\ETX\NUL\a\DC2\ACK\140\STX\EOT\141\STXA\n\
    \\DC4\n\
    \\n\
    \\EOT\ENQ\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ACK\140\STX\EOT\141\STXA\n\
    \#\n\
    \\ACK\EOT\ENQ\ETX\NUL\STX\NUL\DC2\EOT\144\STX\EOT)\SUB\DC3 The route config.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\NUL\ACK\DC2\EOT\144\STX\EOT\ETB\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\NUL\SOH\DC2\EOT\144\STX\CAN$\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\NUL\ETX\DC2\EOT\144\STX'(\n\
    \@\n\
    \\ACK\EOT\ENQ\ETX\NUL\STX\SOH\DC2\EOT\147\STX\EOT/\SUB0 The timestamp when the Route was last updated.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\SOH\ACK\DC2\EOT\147\STX\EOT\GS\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\SOH\SOH\DC2\EOT\147\STX\RS*\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\SOH\ETX\DC2\EOT\147\STX-.\n\
    \'\n\
    \\EOT\EOT\ENQ\ETX\SOH\DC2\ACK\151\STX\STX\176\STX\ETX\SUB\ETB [#next-free-field: 6]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\ETX\SOH\SOH\DC2\EOT\151\STX\n\
    \\FS\n\
    \\SI\n\
    \\ENQ\EOT\ENQ\ETX\SOH\a\DC2\ACK\152\STX\EOT\153\STXB\n\
    \\DC4\n\
    \\n\
    \\EOT\ENQ\ETX\SOH\a\211\136\225\ETX\SOH\DC2\ACK\152\STX\EOT\153\STXB\n\
    \\131\STX\n\
    \\ACK\EOT\ENQ\ETX\SOH\STX\NUL\DC2\EOT\158\STX\EOT\FS\SUB\242\SOH This is the per-resource version information. This version is currently taken from the\n\
    \ :ref:`version_info <envoy_v3_api_field_service.discovery.v3.DiscoveryResponse.version_info>` field at the time that\n\
    \ the route configuration was loaded.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\SOH\STX\NUL\ENQ\DC2\EOT\158\STX\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\SOH\STX\NUL\SOH\DC2\EOT\158\STX\v\ETB\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\SOH\STX\NUL\ETX\DC2\EOT\158\STX\SUB\ESC\n\
    \#\n\
    \\ACK\EOT\ENQ\ETX\SOH\STX\SOH\DC2\EOT\161\STX\EOT)\SUB\DC3 The route config.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\SOH\STX\SOH\ACK\DC2\EOT\161\STX\EOT\ETB\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\SOH\STX\SOH\SOH\DC2\EOT\161\STX\CAN$\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\SOH\STX\SOH\ETX\DC2\EOT\161\STX'(\n\
    \@\n\
    \\ACK\EOT\ENQ\ETX\SOH\STX\STX\DC2\EOT\164\STX\EOT/\SUB0 The timestamp when the Route was last updated.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\SOH\STX\STX\ACK\DC2\EOT\164\STX\EOT\GS\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\SOH\STX\STX\SOH\DC2\EOT\164\STX\RS*\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\SOH\STX\STX\ETX\DC2\EOT\164\STX-.\n\
    \\190\STX\n\
    \\ACK\EOT\ENQ\ETX\SOH\STX\ETX\DC2\EOT\171\STX\EOT'\SUB\173\STX Set if the last update failed, cleared after the next successful update.\n\
    \ The *error_state* field contains the rejected version of this particular\n\
    \ resource along with the reason and timestamp. For successfully updated or\n\
    \ acknowledged resource, this field should be empty.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\SOH\STX\ETX\ACK\DC2\EOT\171\STX\EOT\SYN\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\SOH\STX\ETX\SOH\DC2\EOT\171\STX\ETB\"\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\SOH\STX\ETX\ETX\DC2\EOT\171\STX%&\n\
    \O\n\
    \\ACK\EOT\ENQ\ETX\SOH\STX\EOT\DC2\EOT\175\STX\EOT+\SUB? The client status of this resource.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\SOH\STX\EOT\ACK\DC2\EOT\175\STX\EOT\CAN\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\SOH\STX\EOT\SOH\DC2\EOT\175\STX\EM&\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\SOH\STX\EOT\ETX\DC2\EOT\175\STX)*\n\
    \4\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\179\STX\STX6\SUB& The statically loaded route configs.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\EOT\179\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\EOT\179\STX\v\FS\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\179\STX\GS1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\179\STX45\n\
    \5\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\182\STX\STX8\SUB' The dynamically loaded route configs.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\EOT\DC2\EOT\182\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\EOT\182\STX\v\GS\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\182\STX\RS3\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\182\STX67\n\
    \\215\STX\n\
    \\STX\EOT\ACK\DC2\ACK\189\STX\NUL\243\STX\SOH\SUB\200\STX Envoy's scoped RDS implementation fills this message with all currently loaded route\n\
    \ configuration scopes (defined via ScopedRouteConfigurationsSet protos). This message lists both\n\
    \ the scopes defined inline with the higher order object (i.e., the HttpConnectionManager) and the\n\
    \ dynamically obtained scopes via the SRDS API.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\189\STX\b\RS\n\
    \\r\n\
    \\ETX\EOT\ACK\a\DC2\ACK\190\STX\STX\191\STX3\n\
    \\DC2\n\
    \\b\EOT\ACK\a\211\136\225\ETX\SOH\DC2\ACK\190\STX\STX\191\STX3\n\
    \\SO\n\
    \\EOT\EOT\ACK\ETX\NUL\DC2\ACK\193\STX\STX\205\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\ACK\ETX\NUL\SOH\DC2\EOT\193\STX\n\
    \\"\n\
    \\SI\n\
    \\ENQ\EOT\ACK\ETX\NUL\a\DC2\ACK\194\STX\EOT\195\STXN\n\
    \\DC4\n\
    \\n\
    \\EOT\ACK\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ACK\194\STX\EOT\195\STXN\n\
    \G\n\
    \\ACK\EOT\ACK\ETX\NUL\STX\NUL\DC2\EOT\198\STX\EOT\DC4\SUB7 The name assigned to the scoped route configurations.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\NUL\STX\NUL\ENQ\DC2\EOT\198\STX\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\NUL\STX\NUL\SOH\DC2\EOT\198\STX\v\SI\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\NUL\STX\NUL\ETX\DC2\EOT\198\STX\DC2\DC3\n\
    \2\n\
    \\ACK\EOT\ACK\ETX\NUL\STX\SOH\DC2\EOT\201\STX\EOT:\SUB\" The scoped route configurations.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\NUL\STX\SOH\EOT\DC2\EOT\201\STX\EOT\f\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\NUL\STX\SOH\ACK\DC2\EOT\201\STX\r \n\
    \\SI\n\
    \\a\EOT\ACK\ETX\NUL\STX\SOH\SOH\DC2\EOT\201\STX!5\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\NUL\STX\SOH\ETX\DC2\EOT\201\STX89\n\
    \R\n\
    \\ACK\EOT\ACK\ETX\NUL\STX\STX\DC2\EOT\204\STX\EOT/\SUBB The timestamp when the scoped route config set was last updated.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\NUL\STX\STX\ACK\DC2\EOT\204\STX\EOT\GS\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\NUL\STX\STX\SOH\DC2\EOT\204\STX\RS*\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\NUL\STX\STX\ETX\DC2\EOT\204\STX-.\n\
    \'\n\
    \\EOT\EOT\ACK\ETX\SOH\DC2\ACK\208\STX\STX\236\STX\ETX\SUB\ETB [#next-free-field: 7]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\ETX\SOH\SOH\DC2\EOT\208\STX\n\
    \#\n\
    \\SI\n\
    \\ENQ\EOT\ACK\ETX\SOH\a\DC2\ACK\209\STX\EOT\210\STXO\n\
    \\DC4\n\
    \\n\
    \\EOT\ACK\ETX\SOH\a\211\136\225\ETX\SOH\DC2\ACK\209\STX\EOT\210\STXO\n\
    \G\n\
    \\ACK\EOT\ACK\ETX\SOH\STX\NUL\DC2\EOT\213\STX\EOT\DC4\SUB7 The name assigned to the scoped route configurations.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\SOH\STX\NUL\ENQ\DC2\EOT\213\STX\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\SOH\STX\NUL\SOH\DC2\EOT\213\STX\v\SI\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\SOH\STX\NUL\ETX\DC2\EOT\213\STX\DC2\DC3\n\
    \\139\STX\n\
    \\ACK\EOT\ACK\ETX\SOH\STX\SOH\DC2\EOT\218\STX\EOT\FS\SUB\250\SOH This is the per-resource version information. This version is currently taken from the\n\
    \ :ref:`version_info <envoy_v3_api_field_service.discovery.v3.DiscoveryResponse.version_info>` field at the time that\n\
    \ the scoped routes configuration was loaded.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\SOH\STX\SOH\ENQ\DC2\EOT\218\STX\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\SOH\STX\SOH\SOH\DC2\EOT\218\STX\v\ETB\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\SOH\STX\SOH\ETX\DC2\EOT\218\STX\SUB\ESC\n\
    \2\n\
    \\ACK\EOT\ACK\ETX\SOH\STX\STX\DC2\EOT\221\STX\EOT:\SUB\" The scoped route configurations.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\SOH\STX\STX\EOT\DC2\EOT\221\STX\EOT\f\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\SOH\STX\STX\ACK\DC2\EOT\221\STX\r \n\
    \\SI\n\
    \\a\EOT\ACK\ETX\SOH\STX\STX\SOH\DC2\EOT\221\STX!5\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\SOH\STX\STX\ETX\DC2\EOT\221\STX89\n\
    \R\n\
    \\ACK\EOT\ACK\ETX\SOH\STX\ETX\DC2\EOT\224\STX\EOT/\SUBB The timestamp when the scoped route config set was last updated.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\SOH\STX\ETX\ACK\DC2\EOT\224\STX\EOT\GS\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\SOH\STX\ETX\SOH\DC2\EOT\224\STX\RS*\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\SOH\STX\ETX\ETX\DC2\EOT\224\STX-.\n\
    \\190\STX\n\
    \\ACK\EOT\ACK\ETX\SOH\STX\EOT\DC2\EOT\231\STX\EOT'\SUB\173\STX Set if the last update failed, cleared after the next successful update.\n\
    \ The *error_state* field contains the rejected version of this particular\n\
    \ resource along with the reason and timestamp. For successfully updated or\n\
    \ acknowledged resource, this field should be empty.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\SOH\STX\EOT\ACK\DC2\EOT\231\STX\EOT\SYN\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\SOH\STX\EOT\SOH\DC2\EOT\231\STX\ETB\"\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\SOH\STX\EOT\ETX\DC2\EOT\231\STX%&\n\
    \O\n\
    \\ACK\EOT\ACK\ETX\SOH\STX\ENQ\DC2\EOT\235\STX\EOT+\SUB? The client status of this resource.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\SOH\STX\ENQ\ACK\DC2\EOT\235\STX\EOT\CAN\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\SOH\STX\ENQ\SOH\DC2\EOT\235\STX\EM&\n\
    \\SI\n\
    \\a\EOT\ACK\ETX\SOH\STX\ENQ\ETX\DC2\EOT\235\STX)*\n\
    \;\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\239\STX\STXD\SUB- The statically loaded scoped route configs.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\EOT\239\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\EOT\239\STX\v#\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\239\STX$?\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\239\STXBC\n\
    \<\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\242\STX\STXF\SUB. The dynamically loaded scoped route configs.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\EOT\DC2\EOT\242\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ACK\DC2\EOT\242\STX\v$\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\242\STX%A\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\242\STXDE\n\
    \j\n\
    \\STX\EOT\a\DC2\ACK\246\STX\NUL\181\ETX\SOH\SUB\\ Envoys SDS implementation fills this message with all secrets fetched dynamically via SDS.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\246\STX\b\EM\n\
    \\r\n\
    \\ETX\EOT\a\a\DC2\ACK\247\STX\STX\248\STX.\n\
    \\DC2\n\
    \\b\EOT\a\a\211\136\225\ETX\SOH\DC2\ACK\247\STX\STX\248\STX.\n\
    \c\n\
    \\EOT\EOT\a\ETX\NUL\DC2\ACK\252\STX\STX\152\ETX\ETX\SUBS DynamicSecret contains secret information fetched via SDS.\n\
    \ [#next-free-field: 7]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\ETX\NUL\SOH\DC2\EOT\252\STX\n\
    \\ETB\n\
    \\SI\n\
    \\ENQ\EOT\a\ETX\NUL\a\DC2\ACK\253\STX\EOT\254\STX>\n\
    \\DC4\n\
    \\n\
    \\EOT\a\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ACK\253\STX\EOT\254\STX>\n\
    \2\n\
    \\ACK\EOT\a\ETX\NUL\STX\NUL\DC2\EOT\129\ETX\EOT\DC4\SUB\" The name assigned to the secret.\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\NUL\ENQ\DC2\EOT\129\ETX\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\NUL\SOH\DC2\EOT\129\ETX\v\SI\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\NUL\ETX\DC2\EOT\129\ETX\DC2\DC3\n\
    \?\n\
    \\ACK\EOT\a\ETX\NUL\STX\SOH\DC2\EOT\132\ETX\EOT\FS\SUB/ This is the per-resource version information.\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\SOH\ENQ\DC2\EOT\132\ETX\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\SOH\SOH\DC2\EOT\132\ETX\v\ETB\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\SOH\ETX\DC2\EOT\132\ETX\SUB\ESC\n\
    \A\n\
    \\ACK\EOT\a\ETX\NUL\STX\STX\DC2\EOT\135\ETX\EOT/\SUB1 The timestamp when the secret was last updated.\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\STX\ACK\DC2\EOT\135\ETX\EOT\GS\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\STX\SOH\DC2\EOT\135\ETX\RS*\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\STX\ETX\DC2\EOT\135\ETX-.\n\
    \\175\SOH\n\
    \\ACK\EOT\a\ETX\NUL\STX\ETX\DC2\EOT\140\ETX\EOT#\SUB\158\SOH The actual secret information.\n\
    \ Security sensitive information is redacted (replaced with \"[redacted]\") for\n\
    \ private keys and passwords in TLS certificates.\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\ETX\ACK\DC2\EOT\140\ETX\EOT\ETB\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\ETX\SOH\DC2\EOT\140\ETX\CAN\RS\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\ETX\ETX\DC2\EOT\140\ETX!\"\n\
    \\190\STX\n\
    \\ACK\EOT\a\ETX\NUL\STX\EOT\DC2\EOT\147\ETX\EOT'\SUB\173\STX Set if the last update failed, cleared after the next successful update.\n\
    \ The *error_state* field contains the rejected version of this particular\n\
    \ resource along with the reason and timestamp. For successfully updated or\n\
    \ acknowledged resource, this field should be empty.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\EOT\ACK\DC2\EOT\147\ETX\EOT\SYN\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\EOT\SOH\DC2\EOT\147\ETX\ETB\"\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\EOT\ETX\DC2\EOT\147\ETX%&\n\
    \O\n\
    \\ACK\EOT\a\ETX\NUL\STX\ENQ\DC2\EOT\151\ETX\EOT+\SUB? The client status of this resource.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\ENQ\ACK\DC2\EOT\151\ETX\EOT\CAN\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\ENQ\SOH\DC2\EOT\151\ETX\EM&\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\ENQ\ETX\DC2\EOT\151\ETX)*\n\
    \O\n\
    \\EOT\EOT\a\ETX\SOH\DC2\ACK\155\ETX\STX\169\ETX\ETX\SUB? StaticSecret specifies statically loaded secret in bootstrap.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\ETX\SOH\SOH\DC2\EOT\155\ETX\n\
    \\SYN\n\
    \\SI\n\
    \\ENQ\EOT\a\ETX\SOH\a\DC2\ACK\156\ETX\EOT\157\ETX=\n\
    \\DC4\n\
    \\n\
    \\EOT\a\ETX\SOH\a\211\136\225\ETX\SOH\DC2\ACK\156\ETX\EOT\157\ETX=\n\
    \2\n\
    \\ACK\EOT\a\ETX\SOH\STX\NUL\DC2\EOT\160\ETX\EOT\DC4\SUB\" The name assigned to the secret.\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\SOH\STX\NUL\ENQ\DC2\EOT\160\ETX\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\SOH\STX\NUL\SOH\DC2\EOT\160\ETX\v\SI\n\
    \\SI\n\
    \\a\EOT\a\ETX\SOH\STX\NUL\ETX\DC2\EOT\160\ETX\DC2\DC3\n\
    \A\n\
    \\ACK\EOT\a\ETX\SOH\STX\SOH\DC2\EOT\163\ETX\EOT/\SUB1 The timestamp when the secret was last updated.\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\SOH\STX\SOH\ACK\DC2\EOT\163\ETX\EOT\GS\n\
    \\SI\n\
    \\a\EOT\a\ETX\SOH\STX\SOH\SOH\DC2\EOT\163\ETX\RS*\n\
    \\SI\n\
    \\a\EOT\a\ETX\SOH\STX\SOH\ETX\DC2\EOT\163\ETX-.\n\
    \\175\SOH\n\
    \\ACK\EOT\a\ETX\SOH\STX\STX\DC2\EOT\168\ETX\EOT#\SUB\158\SOH The actual secret information.\n\
    \ Security sensitive information is redacted (replaced with \"[redacted]\") for\n\
    \ private keys and passwords in TLS certificates.\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\SOH\STX\STX\ACK\DC2\EOT\168\ETX\EOT\ETB\n\
    \\SI\n\
    \\a\EOT\a\ETX\SOH\STX\STX\SOH\DC2\EOT\168\ETX\CAN\RS\n\
    \\SI\n\
    \\a\EOT\a\ETX\SOH\STX\STX\ETX\DC2\EOT\168\ETX!\"\n\
    \.\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\172\ETX\STX+\SUB  The statically loaded secrets.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\EOT\172\ETX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\EOT\172\ETX\v\ETB\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\172\ETX\CAN&\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\172\ETX)*\n\
    \~\n\
    \\EOT\EOT\a\STX\SOH\DC2\EOT\176\ETX\STX4\SUBp The dynamically loaded active secrets. These are secrets that are available to service\n\
    \ clusters or listeners.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\EOT\DC2\EOT\176\ETX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ACK\DC2\EOT\176\ETX\v\CAN\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\EOT\176\ETX\EM/\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\EOT\176\ETX23\n\
    \\162\SOH\n\
    \\EOT\EOT\a\STX\STX\DC2\EOT\180\ETX\STX5\SUB\147\SOH The dynamically loaded warming secrets. These are secrets that are currently undergoing\n\
    \ warming in preparation to service clusters or listeners.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\EOT\DC2\EOT\180\ETX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ACK\DC2\EOT\180\ETX\v\CAN\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\EOT\180\ETX\EM0\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\EOT\180\ETX34\n\
    \\129\STX\n\
    \\STX\EOT\b\DC2\ACK\186\ETX\NUL\225\ETX\SOH\SUB\242\SOH Envoy's admin fill this message with all currently known endpoints. Endpoint\n\
    \ configuration information can be used to recreate an Envoy configuration by populating all\n\
    \ endpoints as static endpoints or by returning them in an EDS response.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\186\ETX\b\ESC\n\
    \\SO\n\
    \\EOT\EOT\b\ETX\NUL\DC2\ACK\187\ETX\STX\193\ETX\ETX\n\
    \\r\n\
    \\ENQ\EOT\b\ETX\NUL\SOH\DC2\EOT\187\ETX\n\
    \\RS\n\
    \&\n\
    \\ACK\EOT\b\ETX\NUL\STX\NUL\DC2\EOT\189\ETX\EOT,\SUB\SYN The endpoint config.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\NUL\ACK\DC2\EOT\189\ETX\EOT\ETB\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\NUL\SOH\DC2\EOT\189\ETX\CAN'\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\NUL\ETX\DC2\EOT\189\ETX*+\n\
    \\\\n\
    \\ACK\EOT\b\ETX\NUL\STX\SOH\DC2\EOT\192\ETX\EOT/\SUBL [#not-implemented-hide:] The timestamp when the Endpoint was last updated.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\SOH\ACK\DC2\EOT\192\ETX\EOT\GS\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\SOH\SOH\DC2\EOT\192\ETX\RS*\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\SOH\ETX\DC2\EOT\192\ETX-.\n\
    \'\n\
    \\EOT\EOT\b\ETX\SOH\DC2\ACK\196\ETX\STX\218\ETX\ETX\SUB\ETB [#next-free-field: 6]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\ETX\SOH\SOH\DC2\EOT\196\ETX\n\
    \\US\n\
    \\159\STX\n\
    \\ACK\EOT\b\ETX\SOH\STX\NUL\DC2\EOT\200\ETX\EOT\FS\SUB\142\STX [#not-implemented-hide:] This is the per-resource version information. This version is currently taken from the\n\
    \ :ref:`version_info <envoy_v3_api_field_service.discovery.v3.DiscoveryResponse.version_info>` field at the time that\n\
    \ the endpoint configuration was loaded.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\NUL\ENQ\DC2\EOT\200\ETX\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\NUL\SOH\DC2\EOT\200\ETX\v\ETB\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\NUL\ETX\DC2\EOT\200\ETX\SUB\ESC\n\
    \&\n\
    \\ACK\EOT\b\ETX\SOH\STX\SOH\DC2\EOT\203\ETX\EOT,\SUB\SYN The endpoint config.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\SOH\ACK\DC2\EOT\203\ETX\EOT\ETB\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\SOH\SOH\DC2\EOT\203\ETX\CAN'\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\SOH\ETX\DC2\EOT\203\ETX*+\n\
    \\\\n\
    \\ACK\EOT\b\ETX\SOH\STX\STX\DC2\EOT\206\ETX\EOT/\SUBL [#not-implemented-hide:] The timestamp when the Endpoint was last updated.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\STX\ACK\DC2\EOT\206\ETX\EOT\GS\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\STX\SOH\DC2\EOT\206\ETX\RS*\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\STX\ETX\DC2\EOT\206\ETX-.\n\
    \\190\STX\n\
    \\ACK\EOT\b\ETX\SOH\STX\ETX\DC2\EOT\213\ETX\EOT'\SUB\173\STX Set if the last update failed, cleared after the next successful update.\n\
    \ The *error_state* field contains the rejected version of this particular\n\
    \ resource along with the reason and timestamp. For successfully updated or\n\
    \ acknowledged resource, this field should be empty.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\ETX\ACK\DC2\EOT\213\ETX\EOT\SYN\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\ETX\SOH\DC2\EOT\213\ETX\ETB\"\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\ETX\ETX\DC2\EOT\213\ETX%&\n\
    \O\n\
    \\ACK\EOT\b\ETX\SOH\STX\EOT\DC2\EOT\217\ETX\EOT+\SUB? The client status of this resource.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\EOT\ACK\DC2\EOT\217\ETX\EOT\CAN\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\EOT\SOH\DC2\EOT\217\ETX\EM&\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\EOT\ETX\DC2\EOT\217\ETX)*\n\
    \7\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\221\ETX\STX<\SUB) The statically loaded endpoint configs.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\EOT\DC2\EOT\221\ETX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\EOT\221\ETX\v\US\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\221\ETX 7\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\221\ETX:;\n\
    \8\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\224\ETX\STX>\SUB* The dynamically loaded endpoint configs.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\EOT\DC2\EOT\224\ETX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ACK\DC2\EOT\224\ETX\v \n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\224\ETX!9\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\224\ETX<=b\ACKproto3"