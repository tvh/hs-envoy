{- This file was auto-generated from envoy/service/status/v3/csds.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Service.Status.V3.Csds (
        ClientStatusDiscoveryService(..), ClientConfig(),
        ClientConfig'GenericXdsConfig(), ClientConfigStatus(..),
        ClientConfigStatus(), ClientConfigStatus'UnrecognizedValue,
        ClientStatusRequest(), ClientStatusResponse(), ConfigStatus(..),
        ConfigStatus(), ConfigStatus'UnrecognizedValue, PerXdsConfig(),
        PerXdsConfig'PerXdsConfig(..), _PerXdsConfig'ListenerConfig,
        _PerXdsConfig'ClusterConfig, _PerXdsConfig'RouteConfig,
        _PerXdsConfig'ScopedRouteConfig, _PerXdsConfig'EndpointConfig
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
import qualified Proto.Envoy.Admin.V3.ConfigDump
import qualified Proto.Envoy.Annotations.Deprecation
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Type.Matcher.V3.Node
import qualified Proto.Google.Api.Annotations
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
{- | Fields :
     
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.node' @:: Lens' ClientConfig Proto.Envoy.Config.Core.V3.Base.Node@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.maybe'node' @:: Lens' ClientConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node)@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.xdsConfig' @:: Lens' ClientConfig [PerXdsConfig]@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.vec'xdsConfig' @:: Lens' ClientConfig (Data.Vector.Vector PerXdsConfig)@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.genericXdsConfigs' @:: Lens' ClientConfig [ClientConfig'GenericXdsConfig]@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.vec'genericXdsConfigs' @:: Lens' ClientConfig (Data.Vector.Vector ClientConfig'GenericXdsConfig)@ -}
data ClientConfig
  = ClientConfig'_constructor {_ClientConfig'node :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node),
                               _ClientConfig'xdsConfig :: !(Data.Vector.Vector PerXdsConfig),
                               _ClientConfig'genericXdsConfigs :: !(Data.Vector.Vector ClientConfig'GenericXdsConfig),
                               _ClientConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClientConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClientConfig "node" Proto.Envoy.Config.Core.V3.Base.Node where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientConfig'node (\ x__ y__ -> x__ {_ClientConfig'node = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClientConfig "maybe'node" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientConfig'node (\ x__ y__ -> x__ {_ClientConfig'node = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClientConfig "xdsConfig" [PerXdsConfig] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientConfig'xdsConfig
           (\ x__ y__ -> x__ {_ClientConfig'xdsConfig = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ClientConfig "vec'xdsConfig" (Data.Vector.Vector PerXdsConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientConfig'xdsConfig
           (\ x__ y__ -> x__ {_ClientConfig'xdsConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClientConfig "genericXdsConfigs" [ClientConfig'GenericXdsConfig] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientConfig'genericXdsConfigs
           (\ x__ y__ -> x__ {_ClientConfig'genericXdsConfigs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ClientConfig "vec'genericXdsConfigs" (Data.Vector.Vector ClientConfig'GenericXdsConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientConfig'genericXdsConfigs
           (\ x__ y__ -> x__ {_ClientConfig'genericXdsConfigs = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClientConfig where
  messageName _
    = Data.Text.pack "envoy.service.status.v3.ClientConfig"
  packedMessageDescriptor _
    = "\n\
      \\fClientConfig\DC2.\n\
      \\EOTnode\CAN\SOH \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnode\DC2Q\n\
      \\n\
      \xds_config\CAN\STX \ETX(\v2%.envoy.service.status.v3.PerXdsConfigR\txdsConfigB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2f\n\
      \\DC3generic_xds_configs\CAN\ETX \ETX(\v26.envoy.service.status.v3.ClientConfig.GenericXdsConfigR\DC1genericXdsConfigs\SUB\226\ETX\n\
      \\DLEGenericXdsConfig\DC2\EM\n\
      \\btype_url\CAN\SOH \SOH(\tR\atypeUrl\DC2\DC2\n\
      \\EOTname\CAN\STX \SOH(\tR\EOTname\DC2!\n\
      \\fversion_info\CAN\ETX \SOH(\tR\vversionInfo\DC23\n\
      \\n\
      \xds_config\CAN\EOT \SOH(\v2\DC4.google.protobuf.AnyR\txdsConfig\DC2=\n\
      \\flast_updated\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated\DC2J\n\
      \\rconfig_status\CAN\ACK \SOH(\SO2%.envoy.service.status.v3.ConfigStatusR\fconfigStatus\DC2I\n\
      \\rclient_status\CAN\a \SOH(\SO2$.envoy.admin.v3.ClientResourceStatusR\fclientStatus\DC2C\n\
      \\verror_state\CAN\b \SOH(\v2\".envoy.admin.v3.UpdateFailureStateR\n\
      \errorState\DC2,\n\
      \\DC2is_static_resource\CAN\t \SOH(\bR\DLEisStaticResource:+\154\197\136\RS&\n\
      \$envoy.service.status.v2.ClientConfig"
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
              Data.ProtoLens.FieldDescriptor ClientConfig
        xdsConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "xds_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PerXdsConfig)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"xdsConfig")) ::
              Data.ProtoLens.FieldDescriptor ClientConfig
        genericXdsConfigs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "generic_xds_configs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ClientConfig'GenericXdsConfig)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"genericXdsConfigs")) ::
              Data.ProtoLens.FieldDescriptor ClientConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, node__field_descriptor),
           (Data.ProtoLens.Tag 2, xdsConfig__field_descriptor),
           (Data.ProtoLens.Tag 3, genericXdsConfigs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClientConfig'_unknownFields
        (\ x__ y__ -> x__ {_ClientConfig'_unknownFields = y__})
  defMessage
    = ClientConfig'_constructor
        {_ClientConfig'node = Prelude.Nothing,
         _ClientConfig'xdsConfig = Data.Vector.Generic.empty,
         _ClientConfig'genericXdsConfigs = Data.Vector.Generic.empty,
         _ClientConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClientConfig
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ClientConfig'GenericXdsConfig
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld PerXdsConfig
                -> Data.ProtoLens.Encoding.Bytes.Parser ClientConfig
        loop x mutable'genericXdsConfigs mutable'xdsConfig
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'genericXdsConfigs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                       mutable'genericXdsConfigs)
                      frozen'xdsConfig <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'xdsConfig)
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
                              (Data.ProtoLens.Field.field @"vec'genericXdsConfigs")
                              frozen'genericXdsConfigs
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'xdsConfig") frozen'xdsConfig x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "node"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"node") y x)
                                  mutable'genericXdsConfigs
                                  mutable'xdsConfig
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "xds_config"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'xdsConfig y)
                                loop x mutable'genericXdsConfigs v
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "generic_xds_configs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'genericXdsConfigs y)
                                loop x v mutable'xdsConfig
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'genericXdsConfigs
                                  mutable'xdsConfig
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'genericXdsConfigs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             Data.ProtoLens.Encoding.Growing.new
              mutable'xdsConfig <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'genericXdsConfigs
                mutable'xdsConfig)
          "ClientConfig"
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
                      (Data.ProtoLens.Field.field @"vec'xdsConfig") _x))
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
                         (Data.ProtoLens.Field.field @"vec'genericXdsConfigs") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ClientConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClientConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ClientConfig'node x__)
                (Control.DeepSeq.deepseq
                   (_ClientConfig'xdsConfig x__)
                   (Control.DeepSeq.deepseq
                      (_ClientConfig'genericXdsConfigs x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.typeUrl' @:: Lens' ClientConfig'GenericXdsConfig Data.Text.Text@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.name' @:: Lens' ClientConfig'GenericXdsConfig Data.Text.Text@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.versionInfo' @:: Lens' ClientConfig'GenericXdsConfig Data.Text.Text@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.xdsConfig' @:: Lens' ClientConfig'GenericXdsConfig Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.maybe'xdsConfig' @:: Lens' ClientConfig'GenericXdsConfig (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.lastUpdated' @:: Lens' ClientConfig'GenericXdsConfig Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.maybe'lastUpdated' @:: Lens' ClientConfig'GenericXdsConfig (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.configStatus' @:: Lens' ClientConfig'GenericXdsConfig ConfigStatus@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.clientStatus' @:: Lens' ClientConfig'GenericXdsConfig Proto.Envoy.Admin.V3.ConfigDump.ClientResourceStatus@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.errorState' @:: Lens' ClientConfig'GenericXdsConfig Proto.Envoy.Admin.V3.ConfigDump.UpdateFailureState@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.maybe'errorState' @:: Lens' ClientConfig'GenericXdsConfig (Prelude.Maybe Proto.Envoy.Admin.V3.ConfigDump.UpdateFailureState)@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.isStaticResource' @:: Lens' ClientConfig'GenericXdsConfig Prelude.Bool@ -}
data ClientConfig'GenericXdsConfig
  = ClientConfig'GenericXdsConfig'_constructor {_ClientConfig'GenericXdsConfig'typeUrl :: !Data.Text.Text,
                                                _ClientConfig'GenericXdsConfig'name :: !Data.Text.Text,
                                                _ClientConfig'GenericXdsConfig'versionInfo :: !Data.Text.Text,
                                                _ClientConfig'GenericXdsConfig'xdsConfig :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                                _ClientConfig'GenericXdsConfig'lastUpdated :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                _ClientConfig'GenericXdsConfig'configStatus :: !ConfigStatus,
                                                _ClientConfig'GenericXdsConfig'clientStatus :: !Proto.Envoy.Admin.V3.ConfigDump.ClientResourceStatus,
                                                _ClientConfig'GenericXdsConfig'errorState :: !(Prelude.Maybe Proto.Envoy.Admin.V3.ConfigDump.UpdateFailureState),
                                                _ClientConfig'GenericXdsConfig'isStaticResource :: !Prelude.Bool,
                                                _ClientConfig'GenericXdsConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClientConfig'GenericXdsConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClientConfig'GenericXdsConfig "typeUrl" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientConfig'GenericXdsConfig'typeUrl
           (\ x__ y__ -> x__ {_ClientConfig'GenericXdsConfig'typeUrl = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClientConfig'GenericXdsConfig "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientConfig'GenericXdsConfig'name
           (\ x__ y__ -> x__ {_ClientConfig'GenericXdsConfig'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClientConfig'GenericXdsConfig "versionInfo" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientConfig'GenericXdsConfig'versionInfo
           (\ x__ y__
              -> x__ {_ClientConfig'GenericXdsConfig'versionInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClientConfig'GenericXdsConfig "xdsConfig" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientConfig'GenericXdsConfig'xdsConfig
           (\ x__ y__
              -> x__ {_ClientConfig'GenericXdsConfig'xdsConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClientConfig'GenericXdsConfig "maybe'xdsConfig" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientConfig'GenericXdsConfig'xdsConfig
           (\ x__ y__
              -> x__ {_ClientConfig'GenericXdsConfig'xdsConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClientConfig'GenericXdsConfig "lastUpdated" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientConfig'GenericXdsConfig'lastUpdated
           (\ x__ y__
              -> x__ {_ClientConfig'GenericXdsConfig'lastUpdated = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClientConfig'GenericXdsConfig "maybe'lastUpdated" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientConfig'GenericXdsConfig'lastUpdated
           (\ x__ y__
              -> x__ {_ClientConfig'GenericXdsConfig'lastUpdated = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClientConfig'GenericXdsConfig "configStatus" ConfigStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientConfig'GenericXdsConfig'configStatus
           (\ x__ y__
              -> x__ {_ClientConfig'GenericXdsConfig'configStatus = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClientConfig'GenericXdsConfig "clientStatus" Proto.Envoy.Admin.V3.ConfigDump.ClientResourceStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientConfig'GenericXdsConfig'clientStatus
           (\ x__ y__
              -> x__ {_ClientConfig'GenericXdsConfig'clientStatus = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClientConfig'GenericXdsConfig "errorState" Proto.Envoy.Admin.V3.ConfigDump.UpdateFailureState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientConfig'GenericXdsConfig'errorState
           (\ x__ y__
              -> x__ {_ClientConfig'GenericXdsConfig'errorState = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClientConfig'GenericXdsConfig "maybe'errorState" (Prelude.Maybe Proto.Envoy.Admin.V3.ConfigDump.UpdateFailureState) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientConfig'GenericXdsConfig'errorState
           (\ x__ y__
              -> x__ {_ClientConfig'GenericXdsConfig'errorState = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClientConfig'GenericXdsConfig "isStaticResource" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientConfig'GenericXdsConfig'isStaticResource
           (\ x__ y__
              -> x__ {_ClientConfig'GenericXdsConfig'isStaticResource = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClientConfig'GenericXdsConfig where
  messageName _
    = Data.Text.pack
        "envoy.service.status.v3.ClientConfig.GenericXdsConfig"
  packedMessageDescriptor _
    = "\n\
      \\DLEGenericXdsConfig\DC2\EM\n\
      \\btype_url\CAN\SOH \SOH(\tR\atypeUrl\DC2\DC2\n\
      \\EOTname\CAN\STX \SOH(\tR\EOTname\DC2!\n\
      \\fversion_info\CAN\ETX \SOH(\tR\vversionInfo\DC23\n\
      \\n\
      \xds_config\CAN\EOT \SOH(\v2\DC4.google.protobuf.AnyR\txdsConfig\DC2=\n\
      \\flast_updated\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated\DC2J\n\
      \\rconfig_status\CAN\ACK \SOH(\SO2%.envoy.service.status.v3.ConfigStatusR\fconfigStatus\DC2I\n\
      \\rclient_status\CAN\a \SOH(\SO2$.envoy.admin.v3.ClientResourceStatusR\fclientStatus\DC2C\n\
      \\verror_state\CAN\b \SOH(\v2\".envoy.admin.v3.UpdateFailureStateR\n\
      \errorState\DC2,\n\
      \\DC2is_static_resource\CAN\t \SOH(\bR\DLEisStaticResource"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        typeUrl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type_url"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"typeUrl")) ::
              Data.ProtoLens.FieldDescriptor ClientConfig'GenericXdsConfig
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor ClientConfig'GenericXdsConfig
        versionInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version_info"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"versionInfo")) ::
              Data.ProtoLens.FieldDescriptor ClientConfig'GenericXdsConfig
        xdsConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "xds_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'xdsConfig")) ::
              Data.ProtoLens.FieldDescriptor ClientConfig'GenericXdsConfig
        lastUpdated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_updated"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastUpdated")) ::
              Data.ProtoLens.FieldDescriptor ClientConfig'GenericXdsConfig
        configStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "config_status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ConfigStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"configStatus")) ::
              Data.ProtoLens.FieldDescriptor ClientConfig'GenericXdsConfig
        clientStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "client_status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Admin.V3.ConfigDump.ClientResourceStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"clientStatus")) ::
              Data.ProtoLens.FieldDescriptor ClientConfig'GenericXdsConfig
        errorState__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "error_state"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Admin.V3.ConfigDump.UpdateFailureState)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'errorState")) ::
              Data.ProtoLens.FieldDescriptor ClientConfig'GenericXdsConfig
        isStaticResource__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_static_resource"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"isStaticResource")) ::
              Data.ProtoLens.FieldDescriptor ClientConfig'GenericXdsConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, typeUrl__field_descriptor),
           (Data.ProtoLens.Tag 2, name__field_descriptor),
           (Data.ProtoLens.Tag 3, versionInfo__field_descriptor),
           (Data.ProtoLens.Tag 4, xdsConfig__field_descriptor),
           (Data.ProtoLens.Tag 5, lastUpdated__field_descriptor),
           (Data.ProtoLens.Tag 6, configStatus__field_descriptor),
           (Data.ProtoLens.Tag 7, clientStatus__field_descriptor),
           (Data.ProtoLens.Tag 8, errorState__field_descriptor),
           (Data.ProtoLens.Tag 9, isStaticResource__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClientConfig'GenericXdsConfig'_unknownFields
        (\ x__ y__
           -> x__ {_ClientConfig'GenericXdsConfig'_unknownFields = y__})
  defMessage
    = ClientConfig'GenericXdsConfig'_constructor
        {_ClientConfig'GenericXdsConfig'typeUrl = Data.ProtoLens.fieldDefault,
         _ClientConfig'GenericXdsConfig'name = Data.ProtoLens.fieldDefault,
         _ClientConfig'GenericXdsConfig'versionInfo = Data.ProtoLens.fieldDefault,
         _ClientConfig'GenericXdsConfig'xdsConfig = Prelude.Nothing,
         _ClientConfig'GenericXdsConfig'lastUpdated = Prelude.Nothing,
         _ClientConfig'GenericXdsConfig'configStatus = Data.ProtoLens.fieldDefault,
         _ClientConfig'GenericXdsConfig'clientStatus = Data.ProtoLens.fieldDefault,
         _ClientConfig'GenericXdsConfig'errorState = Prelude.Nothing,
         _ClientConfig'GenericXdsConfig'isStaticResource = Data.ProtoLens.fieldDefault,
         _ClientConfig'GenericXdsConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClientConfig'GenericXdsConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser ClientConfig'GenericXdsConfig
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
                                       "type_url"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"typeUrl") y x)
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
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
                                       "version_info"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"versionInfo") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "xds_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"xdsConfig") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_updated"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lastUpdated") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "config_status"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"configStatus") y x)
                        56
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
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "error_state"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"errorState") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "is_static_resource"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"isStaticResource") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GenericXdsConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"typeUrl") _x
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"versionInfo") _x
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
                             (Data.ProtoLens.Field.field @"maybe'xdsConfig") _x
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
                                (Data.ProtoLens.Field.field @"maybe'lastUpdated") _x
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
                                 = Lens.Family2.view (Data.ProtoLens.Field.field @"configStatus") _x
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
                                        (Data.ProtoLens.Field.field @"clientStatus") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                        ((Prelude..)
                                           ((Prelude..)
                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                              Prelude.fromIntegral)
                                           Prelude.fromEnum
                                           _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'errorState") _x
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
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"isStaticResource") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                              ((Prelude..)
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (\ b -> if b then 1 else 0)
                                                 _v))
                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                        (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))))
instance Control.DeepSeq.NFData ClientConfig'GenericXdsConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClientConfig'GenericXdsConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ClientConfig'GenericXdsConfig'typeUrl x__)
                (Control.DeepSeq.deepseq
                   (_ClientConfig'GenericXdsConfig'name x__)
                   (Control.DeepSeq.deepseq
                      (_ClientConfig'GenericXdsConfig'versionInfo x__)
                      (Control.DeepSeq.deepseq
                         (_ClientConfig'GenericXdsConfig'xdsConfig x__)
                         (Control.DeepSeq.deepseq
                            (_ClientConfig'GenericXdsConfig'lastUpdated x__)
                            (Control.DeepSeq.deepseq
                               (_ClientConfig'GenericXdsConfig'configStatus x__)
                               (Control.DeepSeq.deepseq
                                  (_ClientConfig'GenericXdsConfig'clientStatus x__)
                                  (Control.DeepSeq.deepseq
                                     (_ClientConfig'GenericXdsConfig'errorState x__)
                                     (Control.DeepSeq.deepseq
                                        (_ClientConfig'GenericXdsConfig'isStaticResource x__)
                                        ())))))))))
newtype ClientConfigStatus'UnrecognizedValue
  = ClientConfigStatus'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ClientConfigStatus
  = CLIENT_UNKNOWN |
    CLIENT_REQUESTED |
    CLIENT_ACKED |
    CLIENT_NACKED |
    ClientConfigStatus'Unrecognized !ClientConfigStatus'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ClientConfigStatus where
  maybeToEnum 0 = Prelude.Just CLIENT_UNKNOWN
  maybeToEnum 1 = Prelude.Just CLIENT_REQUESTED
  maybeToEnum 2 = Prelude.Just CLIENT_ACKED
  maybeToEnum 3 = Prelude.Just CLIENT_NACKED
  maybeToEnum k
    = Prelude.Just
        (ClientConfigStatus'Unrecognized
           (ClientConfigStatus'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum CLIENT_UNKNOWN = "CLIENT_UNKNOWN"
  showEnum CLIENT_REQUESTED = "CLIENT_REQUESTED"
  showEnum CLIENT_ACKED = "CLIENT_ACKED"
  showEnum CLIENT_NACKED = "CLIENT_NACKED"
  showEnum
    (ClientConfigStatus'Unrecognized (ClientConfigStatus'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "CLIENT_UNKNOWN" = Prelude.Just CLIENT_UNKNOWN
    | (Prelude.==) k "CLIENT_REQUESTED" = Prelude.Just CLIENT_REQUESTED
    | (Prelude.==) k "CLIENT_ACKED" = Prelude.Just CLIENT_ACKED
    | (Prelude.==) k "CLIENT_NACKED" = Prelude.Just CLIENT_NACKED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ClientConfigStatus where
  minBound = CLIENT_UNKNOWN
  maxBound = CLIENT_NACKED
instance Prelude.Enum ClientConfigStatus where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ClientConfigStatus: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum CLIENT_UNKNOWN = 0
  fromEnum CLIENT_REQUESTED = 1
  fromEnum CLIENT_ACKED = 2
  fromEnum CLIENT_NACKED = 3
  fromEnum
    (ClientConfigStatus'Unrecognized (ClientConfigStatus'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ CLIENT_NACKED
    = Prelude.error
        "ClientConfigStatus.succ: bad argument CLIENT_NACKED. This value would be out of bounds."
  succ CLIENT_UNKNOWN = CLIENT_REQUESTED
  succ CLIENT_REQUESTED = CLIENT_ACKED
  succ CLIENT_ACKED = CLIENT_NACKED
  succ (ClientConfigStatus'Unrecognized _)
    = Prelude.error
        "ClientConfigStatus.succ: bad argument: unrecognized value"
  pred CLIENT_UNKNOWN
    = Prelude.error
        "ClientConfigStatus.pred: bad argument CLIENT_UNKNOWN. This value would be out of bounds."
  pred CLIENT_REQUESTED = CLIENT_UNKNOWN
  pred CLIENT_ACKED = CLIENT_REQUESTED
  pred CLIENT_NACKED = CLIENT_ACKED
  pred (ClientConfigStatus'Unrecognized _)
    = Prelude.error
        "ClientConfigStatus.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ClientConfigStatus where
  fieldDefault = CLIENT_UNKNOWN
instance Control.DeepSeq.NFData ClientConfigStatus where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.nodeMatchers' @:: Lens' ClientStatusRequest [Proto.Envoy.Type.Matcher.V3.Node.NodeMatcher]@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.vec'nodeMatchers' @:: Lens' ClientStatusRequest (Data.Vector.Vector Proto.Envoy.Type.Matcher.V3.Node.NodeMatcher)@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.node' @:: Lens' ClientStatusRequest Proto.Envoy.Config.Core.V3.Base.Node@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.maybe'node' @:: Lens' ClientStatusRequest (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node)@ -}
data ClientStatusRequest
  = ClientStatusRequest'_constructor {_ClientStatusRequest'nodeMatchers :: !(Data.Vector.Vector Proto.Envoy.Type.Matcher.V3.Node.NodeMatcher),
                                      _ClientStatusRequest'node :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node),
                                      _ClientStatusRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClientStatusRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClientStatusRequest "nodeMatchers" [Proto.Envoy.Type.Matcher.V3.Node.NodeMatcher] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientStatusRequest'nodeMatchers
           (\ x__ y__ -> x__ {_ClientStatusRequest'nodeMatchers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ClientStatusRequest "vec'nodeMatchers" (Data.Vector.Vector Proto.Envoy.Type.Matcher.V3.Node.NodeMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientStatusRequest'nodeMatchers
           (\ x__ y__ -> x__ {_ClientStatusRequest'nodeMatchers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClientStatusRequest "node" Proto.Envoy.Config.Core.V3.Base.Node where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientStatusRequest'node
           (\ x__ y__ -> x__ {_ClientStatusRequest'node = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClientStatusRequest "maybe'node" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientStatusRequest'node
           (\ x__ y__ -> x__ {_ClientStatusRequest'node = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClientStatusRequest where
  messageName _
    = Data.Text.pack "envoy.service.status.v3.ClientStatusRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC3ClientStatusRequest\DC2G\n\
      \\rnode_matchers\CAN\SOH \ETX(\v2\".envoy.type.matcher.v3.NodeMatcherR\fnodeMatchers\DC2.\n\
      \\EOTnode\CAN\STX \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnode:2\154\197\136\RS-\n\
      \+envoy.service.status.v2.ClientStatusRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nodeMatchers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "node_matchers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.Node.NodeMatcher)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"nodeMatchers")) ::
              Data.ProtoLens.FieldDescriptor ClientStatusRequest
        node__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "node"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.Node)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'node")) ::
              Data.ProtoLens.FieldDescriptor ClientStatusRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, nodeMatchers__field_descriptor),
           (Data.ProtoLens.Tag 2, node__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClientStatusRequest'_unknownFields
        (\ x__ y__ -> x__ {_ClientStatusRequest'_unknownFields = y__})
  defMessage
    = ClientStatusRequest'_constructor
        {_ClientStatusRequest'nodeMatchers = Data.Vector.Generic.empty,
         _ClientStatusRequest'node = Prelude.Nothing,
         _ClientStatusRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClientStatusRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Type.Matcher.V3.Node.NodeMatcher
             -> Data.ProtoLens.Encoding.Bytes.Parser ClientStatusRequest
        loop x mutable'nodeMatchers
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'nodeMatchers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'nodeMatchers)
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
                              (Data.ProtoLens.Field.field @"vec'nodeMatchers")
                              frozen'nodeMatchers
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
                                        "node_matchers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'nodeMatchers y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "node"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"node") y x)
                                  mutable'nodeMatchers
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'nodeMatchers
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'nodeMatchers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'nodeMatchers)
          "ClientStatusRequest"
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
                   (Data.ProtoLens.Field.field @"vec'nodeMatchers") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'node") _x
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
instance Control.DeepSeq.NFData ClientStatusRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClientStatusRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ClientStatusRequest'nodeMatchers x__)
                (Control.DeepSeq.deepseq (_ClientStatusRequest'node x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.config' @:: Lens' ClientStatusResponse [ClientConfig]@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.vec'config' @:: Lens' ClientStatusResponse (Data.Vector.Vector ClientConfig)@ -}
data ClientStatusResponse
  = ClientStatusResponse'_constructor {_ClientStatusResponse'config :: !(Data.Vector.Vector ClientConfig),
                                       _ClientStatusResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClientStatusResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClientStatusResponse "config" [ClientConfig] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientStatusResponse'config
           (\ x__ y__ -> x__ {_ClientStatusResponse'config = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ClientStatusResponse "vec'config" (Data.Vector.Vector ClientConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientStatusResponse'config
           (\ x__ y__ -> x__ {_ClientStatusResponse'config = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClientStatusResponse where
  messageName _
    = Data.Text.pack "envoy.service.status.v3.ClientStatusResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC4ClientStatusResponse\DC2=\n\
      \\ACKconfig\CAN\SOH \ETX(\v2%.envoy.service.status.v3.ClientConfigR\ACKconfig:3\154\197\136\RS.\n\
      \,envoy.service.status.v2.ClientStatusResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        config__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ClientConfig)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"config")) ::
              Data.ProtoLens.FieldDescriptor ClientStatusResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, config__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClientStatusResponse'_unknownFields
        (\ x__ y__ -> x__ {_ClientStatusResponse'_unknownFields = y__})
  defMessage
    = ClientStatusResponse'_constructor
        {_ClientStatusResponse'config = Data.Vector.Generic.empty,
         _ClientStatusResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClientStatusResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ClientConfig
             -> Data.ProtoLens.Encoding.Bytes.Parser ClientStatusResponse
        loop x mutable'config
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'config <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'config)
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
                              (Data.ProtoLens.Field.field @"vec'config") frozen'config x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "config"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'config y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'config
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'config <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'config)
          "ClientStatusResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'config") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ClientStatusResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClientStatusResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ClientStatusResponse'config x__) ())
newtype ConfigStatus'UnrecognizedValue
  = ConfigStatus'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ConfigStatus
  = UNKNOWN |
    SYNCED |
    NOT_SENT |
    STALE |
    ERROR |
    ConfigStatus'Unrecognized !ConfigStatus'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ConfigStatus where
  maybeToEnum 0 = Prelude.Just UNKNOWN
  maybeToEnum 1 = Prelude.Just SYNCED
  maybeToEnum 2 = Prelude.Just NOT_SENT
  maybeToEnum 3 = Prelude.Just STALE
  maybeToEnum 4 = Prelude.Just ERROR
  maybeToEnum k
    = Prelude.Just
        (ConfigStatus'Unrecognized
           (ConfigStatus'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum UNKNOWN = "UNKNOWN"
  showEnum SYNCED = "SYNCED"
  showEnum NOT_SENT = "NOT_SENT"
  showEnum STALE = "STALE"
  showEnum ERROR = "ERROR"
  showEnum
    (ConfigStatus'Unrecognized (ConfigStatus'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "UNKNOWN" = Prelude.Just UNKNOWN
    | (Prelude.==) k "SYNCED" = Prelude.Just SYNCED
    | (Prelude.==) k "NOT_SENT" = Prelude.Just NOT_SENT
    | (Prelude.==) k "STALE" = Prelude.Just STALE
    | (Prelude.==) k "ERROR" = Prelude.Just ERROR
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ConfigStatus where
  minBound = UNKNOWN
  maxBound = ERROR
instance Prelude.Enum ConfigStatus where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ConfigStatus: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum UNKNOWN = 0
  fromEnum SYNCED = 1
  fromEnum NOT_SENT = 2
  fromEnum STALE = 3
  fromEnum ERROR = 4
  fromEnum
    (ConfigStatus'Unrecognized (ConfigStatus'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ ERROR
    = Prelude.error
        "ConfigStatus.succ: bad argument ERROR. This value would be out of bounds."
  succ UNKNOWN = SYNCED
  succ SYNCED = NOT_SENT
  succ NOT_SENT = STALE
  succ STALE = ERROR
  succ (ConfigStatus'Unrecognized _)
    = Prelude.error
        "ConfigStatus.succ: bad argument: unrecognized value"
  pred UNKNOWN
    = Prelude.error
        "ConfigStatus.pred: bad argument UNKNOWN. This value would be out of bounds."
  pred SYNCED = UNKNOWN
  pred NOT_SENT = SYNCED
  pred STALE = NOT_SENT
  pred ERROR = STALE
  pred (ConfigStatus'Unrecognized _)
    = Prelude.error
        "ConfigStatus.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ConfigStatus where
  fieldDefault = UNKNOWN
instance Control.DeepSeq.NFData ConfigStatus where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.status' @:: Lens' PerXdsConfig ConfigStatus@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.clientStatus' @:: Lens' PerXdsConfig ClientConfigStatus@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.maybe'perXdsConfig' @:: Lens' PerXdsConfig (Prelude.Maybe PerXdsConfig'PerXdsConfig)@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.maybe'listenerConfig' @:: Lens' PerXdsConfig (Prelude.Maybe Proto.Envoy.Admin.V3.ConfigDump.ListenersConfigDump)@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.listenerConfig' @:: Lens' PerXdsConfig Proto.Envoy.Admin.V3.ConfigDump.ListenersConfigDump@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.maybe'clusterConfig' @:: Lens' PerXdsConfig (Prelude.Maybe Proto.Envoy.Admin.V3.ConfigDump.ClustersConfigDump)@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.clusterConfig' @:: Lens' PerXdsConfig Proto.Envoy.Admin.V3.ConfigDump.ClustersConfigDump@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.maybe'routeConfig' @:: Lens' PerXdsConfig (Prelude.Maybe Proto.Envoy.Admin.V3.ConfigDump.RoutesConfigDump)@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.routeConfig' @:: Lens' PerXdsConfig Proto.Envoy.Admin.V3.ConfigDump.RoutesConfigDump@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.maybe'scopedRouteConfig' @:: Lens' PerXdsConfig (Prelude.Maybe Proto.Envoy.Admin.V3.ConfigDump.ScopedRoutesConfigDump)@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.scopedRouteConfig' @:: Lens' PerXdsConfig Proto.Envoy.Admin.V3.ConfigDump.ScopedRoutesConfigDump@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.maybe'endpointConfig' @:: Lens' PerXdsConfig (Prelude.Maybe Proto.Envoy.Admin.V3.ConfigDump.EndpointsConfigDump)@
         * 'Proto.Envoy.Service.Status.V3.Csds_Fields.endpointConfig' @:: Lens' PerXdsConfig Proto.Envoy.Admin.V3.ConfigDump.EndpointsConfigDump@ -}
data PerXdsConfig
  = PerXdsConfig'_constructor {_PerXdsConfig'status :: !ConfigStatus,
                               _PerXdsConfig'clientStatus :: !ClientConfigStatus,
                               _PerXdsConfig'perXdsConfig :: !(Prelude.Maybe PerXdsConfig'PerXdsConfig),
                               _PerXdsConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PerXdsConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data PerXdsConfig'PerXdsConfig
  = PerXdsConfig'ListenerConfig !Proto.Envoy.Admin.V3.ConfigDump.ListenersConfigDump |
    PerXdsConfig'ClusterConfig !Proto.Envoy.Admin.V3.ConfigDump.ClustersConfigDump |
    PerXdsConfig'RouteConfig !Proto.Envoy.Admin.V3.ConfigDump.RoutesConfigDump |
    PerXdsConfig'ScopedRouteConfig !Proto.Envoy.Admin.V3.ConfigDump.ScopedRoutesConfigDump |
    PerXdsConfig'EndpointConfig !Proto.Envoy.Admin.V3.ConfigDump.EndpointsConfigDump
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField PerXdsConfig "status" ConfigStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerXdsConfig'status
           (\ x__ y__ -> x__ {_PerXdsConfig'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PerXdsConfig "clientStatus" ClientConfigStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerXdsConfig'clientStatus
           (\ x__ y__ -> x__ {_PerXdsConfig'clientStatus = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PerXdsConfig "maybe'perXdsConfig" (Prelude.Maybe PerXdsConfig'PerXdsConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerXdsConfig'perXdsConfig
           (\ x__ y__ -> x__ {_PerXdsConfig'perXdsConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PerXdsConfig "maybe'listenerConfig" (Prelude.Maybe Proto.Envoy.Admin.V3.ConfigDump.ListenersConfigDump) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerXdsConfig'perXdsConfig
           (\ x__ y__ -> x__ {_PerXdsConfig'perXdsConfig = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PerXdsConfig'ListenerConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PerXdsConfig'ListenerConfig y__))
instance Data.ProtoLens.Field.HasField PerXdsConfig "listenerConfig" Proto.Envoy.Admin.V3.ConfigDump.ListenersConfigDump where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerXdsConfig'perXdsConfig
           (\ x__ y__ -> x__ {_PerXdsConfig'perXdsConfig = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PerXdsConfig'ListenerConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PerXdsConfig'ListenerConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PerXdsConfig "maybe'clusterConfig" (Prelude.Maybe Proto.Envoy.Admin.V3.ConfigDump.ClustersConfigDump) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerXdsConfig'perXdsConfig
           (\ x__ y__ -> x__ {_PerXdsConfig'perXdsConfig = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PerXdsConfig'ClusterConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PerXdsConfig'ClusterConfig y__))
instance Data.ProtoLens.Field.HasField PerXdsConfig "clusterConfig" Proto.Envoy.Admin.V3.ConfigDump.ClustersConfigDump where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerXdsConfig'perXdsConfig
           (\ x__ y__ -> x__ {_PerXdsConfig'perXdsConfig = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PerXdsConfig'ClusterConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PerXdsConfig'ClusterConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PerXdsConfig "maybe'routeConfig" (Prelude.Maybe Proto.Envoy.Admin.V3.ConfigDump.RoutesConfigDump) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerXdsConfig'perXdsConfig
           (\ x__ y__ -> x__ {_PerXdsConfig'perXdsConfig = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PerXdsConfig'RouteConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PerXdsConfig'RouteConfig y__))
instance Data.ProtoLens.Field.HasField PerXdsConfig "routeConfig" Proto.Envoy.Admin.V3.ConfigDump.RoutesConfigDump where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerXdsConfig'perXdsConfig
           (\ x__ y__ -> x__ {_PerXdsConfig'perXdsConfig = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PerXdsConfig'RouteConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PerXdsConfig'RouteConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PerXdsConfig "maybe'scopedRouteConfig" (Prelude.Maybe Proto.Envoy.Admin.V3.ConfigDump.ScopedRoutesConfigDump) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerXdsConfig'perXdsConfig
           (\ x__ y__ -> x__ {_PerXdsConfig'perXdsConfig = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PerXdsConfig'ScopedRouteConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PerXdsConfig'ScopedRouteConfig y__))
instance Data.ProtoLens.Field.HasField PerXdsConfig "scopedRouteConfig" Proto.Envoy.Admin.V3.ConfigDump.ScopedRoutesConfigDump where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerXdsConfig'perXdsConfig
           (\ x__ y__ -> x__ {_PerXdsConfig'perXdsConfig = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PerXdsConfig'ScopedRouteConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PerXdsConfig'ScopedRouteConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PerXdsConfig "maybe'endpointConfig" (Prelude.Maybe Proto.Envoy.Admin.V3.ConfigDump.EndpointsConfigDump) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerXdsConfig'perXdsConfig
           (\ x__ y__ -> x__ {_PerXdsConfig'perXdsConfig = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PerXdsConfig'EndpointConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PerXdsConfig'EndpointConfig y__))
instance Data.ProtoLens.Field.HasField PerXdsConfig "endpointConfig" Proto.Envoy.Admin.V3.ConfigDump.EndpointsConfigDump where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerXdsConfig'perXdsConfig
           (\ x__ y__ -> x__ {_PerXdsConfig'perXdsConfig = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PerXdsConfig'EndpointConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PerXdsConfig'EndpointConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message PerXdsConfig where
  messageName _
    = Data.Text.pack "envoy.service.status.v3.PerXdsConfig"
  packedMessageDescriptor _
    = "\n\
      \\fPerXdsConfig\DC2=\n\
      \\ACKstatus\CAN\SOH \SOH(\SO2%.envoy.service.status.v3.ConfigStatusR\ACKstatus\DC2]\n\
      \\rclient_status\CAN\a \SOH(\SO2+.envoy.service.status.v3.ClientConfigStatusR\fclientStatusB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2N\n\
      \\SIlistener_config\CAN\STX \SOH(\v2#.envoy.admin.v3.ListenersConfigDumpH\NULR\SOlistenerConfig\DC2K\n\
      \\SOcluster_config\CAN\ETX \SOH(\v2\".envoy.admin.v3.ClustersConfigDumpH\NULR\rclusterConfig\DC2E\n\
      \\froute_config\CAN\EOT \SOH(\v2 .envoy.admin.v3.RoutesConfigDumpH\NULR\vrouteConfig\DC2X\n\
      \\DC3scoped_route_config\CAN\ENQ \SOH(\v2&.envoy.admin.v3.ScopedRoutesConfigDumpH\NULR\DC1scopedRouteConfig\DC2N\n\
      \\SIendpoint_config\CAN\ACK \SOH(\v2#.envoy.admin.v3.EndpointsConfigDumpH\NULR\SOendpointConfigB\DLE\n\
      \\SOper_xds_config:+\154\197\136\RS&\n\
      \$envoy.service.status.v2.PerXdsConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ConfigStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor PerXdsConfig
        clientStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "client_status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ClientConfigStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"clientStatus")) ::
              Data.ProtoLens.FieldDescriptor PerXdsConfig
        listenerConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "listener_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Admin.V3.ConfigDump.ListenersConfigDump)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'listenerConfig")) ::
              Data.ProtoLens.FieldDescriptor PerXdsConfig
        clusterConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Admin.V3.ConfigDump.ClustersConfigDump)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'clusterConfig")) ::
              Data.ProtoLens.FieldDescriptor PerXdsConfig
        routeConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "route_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Admin.V3.ConfigDump.RoutesConfigDump)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'routeConfig")) ::
              Data.ProtoLens.FieldDescriptor PerXdsConfig
        scopedRouteConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scoped_route_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Admin.V3.ConfigDump.ScopedRoutesConfigDump)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scopedRouteConfig")) ::
              Data.ProtoLens.FieldDescriptor PerXdsConfig
        endpointConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoint_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Admin.V3.ConfigDump.EndpointsConfigDump)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'endpointConfig")) ::
              Data.ProtoLens.FieldDescriptor PerXdsConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, status__field_descriptor),
           (Data.ProtoLens.Tag 7, clientStatus__field_descriptor),
           (Data.ProtoLens.Tag 2, listenerConfig__field_descriptor),
           (Data.ProtoLens.Tag 3, clusterConfig__field_descriptor),
           (Data.ProtoLens.Tag 4, routeConfig__field_descriptor),
           (Data.ProtoLens.Tag 5, scopedRouteConfig__field_descriptor),
           (Data.ProtoLens.Tag 6, endpointConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PerXdsConfig'_unknownFields
        (\ x__ y__ -> x__ {_PerXdsConfig'_unknownFields = y__})
  defMessage
    = PerXdsConfig'_constructor
        {_PerXdsConfig'status = Data.ProtoLens.fieldDefault,
         _PerXdsConfig'clientStatus = Data.ProtoLens.fieldDefault,
         _PerXdsConfig'perXdsConfig = Prelude.Nothing,
         _PerXdsConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PerXdsConfig -> Data.ProtoLens.Encoding.Bytes.Parser PerXdsConfig
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
                                       "status"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                        56
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
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "listener_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"listenerConfig") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cluster_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"clusterConfig") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "route_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"routeConfig") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "scoped_route_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scopedRouteConfig") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "endpoint_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"endpointConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PerXdsConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"clientStatus") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum
                            _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'perXdsConfig") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just (PerXdsConfig'ListenerConfig v))
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
                      (Prelude.Just (PerXdsConfig'ClusterConfig v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage
                                v)
                      (Prelude.Just (PerXdsConfig'RouteConfig v))
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
                      (Prelude.Just (PerXdsConfig'ScopedRouteConfig v))
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
                      (Prelude.Just (PerXdsConfig'EndpointConfig v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage
                                v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData PerXdsConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PerXdsConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PerXdsConfig'status x__)
                (Control.DeepSeq.deepseq
                   (_PerXdsConfig'clientStatus x__)
                   (Control.DeepSeq.deepseq (_PerXdsConfig'perXdsConfig x__) ())))
instance Control.DeepSeq.NFData PerXdsConfig'PerXdsConfig where
  rnf (PerXdsConfig'ListenerConfig x__) = Control.DeepSeq.rnf x__
  rnf (PerXdsConfig'ClusterConfig x__) = Control.DeepSeq.rnf x__
  rnf (PerXdsConfig'RouteConfig x__) = Control.DeepSeq.rnf x__
  rnf (PerXdsConfig'ScopedRouteConfig x__) = Control.DeepSeq.rnf x__
  rnf (PerXdsConfig'EndpointConfig x__) = Control.DeepSeq.rnf x__
_PerXdsConfig'ListenerConfig ::
  Data.ProtoLens.Prism.Prism' PerXdsConfig'PerXdsConfig Proto.Envoy.Admin.V3.ConfigDump.ListenersConfigDump
_PerXdsConfig'ListenerConfig
  = Data.ProtoLens.Prism.prism'
      PerXdsConfig'ListenerConfig
      (\ p__
         -> case p__ of
              (PerXdsConfig'ListenerConfig p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PerXdsConfig'ClusterConfig ::
  Data.ProtoLens.Prism.Prism' PerXdsConfig'PerXdsConfig Proto.Envoy.Admin.V3.ConfigDump.ClustersConfigDump
_PerXdsConfig'ClusterConfig
  = Data.ProtoLens.Prism.prism'
      PerXdsConfig'ClusterConfig
      (\ p__
         -> case p__ of
              (PerXdsConfig'ClusterConfig p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PerXdsConfig'RouteConfig ::
  Data.ProtoLens.Prism.Prism' PerXdsConfig'PerXdsConfig Proto.Envoy.Admin.V3.ConfigDump.RoutesConfigDump
_PerXdsConfig'RouteConfig
  = Data.ProtoLens.Prism.prism'
      PerXdsConfig'RouteConfig
      (\ p__
         -> case p__ of
              (PerXdsConfig'RouteConfig p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PerXdsConfig'ScopedRouteConfig ::
  Data.ProtoLens.Prism.Prism' PerXdsConfig'PerXdsConfig Proto.Envoy.Admin.V3.ConfigDump.ScopedRoutesConfigDump
_PerXdsConfig'ScopedRouteConfig
  = Data.ProtoLens.Prism.prism'
      PerXdsConfig'ScopedRouteConfig
      (\ p__
         -> case p__ of
              (PerXdsConfig'ScopedRouteConfig p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PerXdsConfig'EndpointConfig ::
  Data.ProtoLens.Prism.Prism' PerXdsConfig'PerXdsConfig Proto.Envoy.Admin.V3.ConfigDump.EndpointsConfigDump
_PerXdsConfig'EndpointConfig
  = Data.ProtoLens.Prism.prism'
      PerXdsConfig'EndpointConfig
      (\ p__
         -> case p__ of
              (PerXdsConfig'EndpointConfig p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
data ClientStatusDiscoveryService = ClientStatusDiscoveryService {}
instance Data.ProtoLens.Service.Types.Service ClientStatusDiscoveryService where
  type ServiceName ClientStatusDiscoveryService = "ClientStatusDiscoveryService"
  type ServicePackage ClientStatusDiscoveryService = "envoy.service.status.v3"
  type ServiceMethods ClientStatusDiscoveryService = '["fetchClientStatus",
                                                       "streamClientStatus"]
instance Data.ProtoLens.Service.Types.HasMethodImpl ClientStatusDiscoveryService "streamClientStatus" where
  type MethodName ClientStatusDiscoveryService "streamClientStatus" = "StreamClientStatus"
  type MethodInput ClientStatusDiscoveryService "streamClientStatus" = ClientStatusRequest
  type MethodOutput ClientStatusDiscoveryService "streamClientStatus" = ClientStatusResponse
  type MethodStreamingType ClientStatusDiscoveryService "streamClientStatus" = 'Data.ProtoLens.Service.Types.BiDiStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ClientStatusDiscoveryService "fetchClientStatus" where
  type MethodName ClientStatusDiscoveryService "fetchClientStatus" = "FetchClientStatus"
  type MethodInput ClientStatusDiscoveryService "fetchClientStatus" = ClientStatusRequest
  type MethodOutput ClientStatusDiscoveryService "fetchClientStatus" = ClientStatusResponse
  type MethodStreamingType ClientStatusDiscoveryService "fetchClientStatus" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\"envoy/service/status/v3/csds.proto\DC2\ETBenvoy.service.status.v3\SUB envoy/admin/v3/config_dump.proto\SUB\USenvoy/config/core/v3/base.proto\SUB envoy/type/matcher/v3/node.proto\SUB\FSgoogle/api/annotations.proto\SUB\EMgoogle/protobuf/any.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB#envoy/annotations/deprecation.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"\194\SOH\n\
    \\DC3ClientStatusRequest\DC2G\n\
    \\rnode_matchers\CAN\SOH \ETX(\v2\".envoy.type.matcher.v3.NodeMatcherR\fnodeMatchers\DC2.\n\
    \\EOTnode\CAN\STX \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnode:2\154\197\136\RS-\n\
    \+envoy.service.status.v2.ClientStatusRequest\"\249\EOT\n\
    \\fPerXdsConfig\DC2=\n\
    \\ACKstatus\CAN\SOH \SOH(\SO2%.envoy.service.status.v3.ConfigStatusR\ACKstatus\DC2]\n\
    \\rclient_status\CAN\a \SOH(\SO2+.envoy.service.status.v3.ClientConfigStatusR\fclientStatusB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2N\n\
    \\SIlistener_config\CAN\STX \SOH(\v2#.envoy.admin.v3.ListenersConfigDumpH\NULR\SOlistenerConfig\DC2K\n\
    \\SOcluster_config\CAN\ETX \SOH(\v2\".envoy.admin.v3.ClustersConfigDumpH\NULR\rclusterConfig\DC2E\n\
    \\froute_config\CAN\EOT \SOH(\v2 .envoy.admin.v3.RoutesConfigDumpH\NULR\vrouteConfig\DC2X\n\
    \\DC3scoped_route_config\CAN\ENQ \SOH(\v2&.envoy.admin.v3.ScopedRoutesConfigDumpH\NULR\DC1scopedRouteConfig\DC2N\n\
    \\SIendpoint_config\CAN\ACK \SOH(\v2#.envoy.admin.v3.EndpointsConfigDumpH\NULR\SOendpointConfigB\DLE\n\
    \\SOper_xds_config:+\154\197\136\RS&\n\
    \$envoy.service.status.v2.PerXdsConfig\"\139\ACK\n\
    \\fClientConfig\DC2.\n\
    \\EOTnode\CAN\SOH \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnode\DC2Q\n\
    \\n\
    \xds_config\CAN\STX \ETX(\v2%.envoy.service.status.v3.PerXdsConfigR\txdsConfigB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2f\n\
    \\DC3generic_xds_configs\CAN\ETX \ETX(\v26.envoy.service.status.v3.ClientConfig.GenericXdsConfigR\DC1genericXdsConfigs\SUB\226\ETX\n\
    \\DLEGenericXdsConfig\DC2\EM\n\
    \\btype_url\CAN\SOH \SOH(\tR\atypeUrl\DC2\DC2\n\
    \\EOTname\CAN\STX \SOH(\tR\EOTname\DC2!\n\
    \\fversion_info\CAN\ETX \SOH(\tR\vversionInfo\DC23\n\
    \\n\
    \xds_config\CAN\EOT \SOH(\v2\DC4.google.protobuf.AnyR\txdsConfig\DC2=\n\
    \\flast_updated\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\vlastUpdated\DC2J\n\
    \\rconfig_status\CAN\ACK \SOH(\SO2%.envoy.service.status.v3.ConfigStatusR\fconfigStatus\DC2I\n\
    \\rclient_status\CAN\a \SOH(\SO2$.envoy.admin.v3.ClientResourceStatusR\fclientStatus\DC2C\n\
    \\verror_state\CAN\b \SOH(\v2\".envoy.admin.v3.UpdateFailureStateR\n\
    \errorState\DC2,\n\
    \\DC2is_static_resource\CAN\t \SOH(\bR\DLEisStaticResource:+\154\197\136\RS&\n\
    \$envoy.service.status.v2.ClientConfig\"\138\SOH\n\
    \\DC4ClientStatusResponse\DC2=\n\
    \\ACKconfig\CAN\SOH \ETX(\v2%.envoy.service.status.v3.ClientConfigR\ACKconfig:3\154\197\136\RS.\n\
    \,envoy.service.status.v2.ClientStatusResponse*K\n\
    \\fConfigStatus\DC2\v\n\
    \\aUNKNOWN\DLE\NUL\DC2\n\
    \\n\
    \\ACKSYNCED\DLE\SOH\DC2\f\n\
    \\bNOT_SENT\DLE\STX\DC2\t\n\
    \\ENQSTALE\DLE\ETX\DC2\t\n\
    \\ENQERROR\DLE\EOT*c\n\
    \\DC2ClientConfigStatus\DC2\DC2\n\
    \\SOCLIENT_UNKNOWN\DLE\NUL\DC2\DC4\n\
    \\DLECLIENT_REQUESTED\DLE\SOH\DC2\DLE\n\
    \\fCLIENT_ACKED\DLE\STX\DC2\DC1\n\
    \\rCLIENT_NACKED\DLE\ETX2\184\STX\n\
    \\FSClientStatusDiscoveryService\DC2w\n\
    \\DC2StreamClientStatus\DC2,.envoy.service.status.v3.ClientStatusRequest\SUB-.envoy.service.status.v3.ClientStatusResponse\"\NUL(\SOH0\SOH\DC2\158\SOH\n\
    \\DC1FetchClientStatus\DC2,.envoy.service.status.v3.ClientStatusRequest\SUB-.envoy.service.status.v3.ClientStatusResponse\",\130\211\228\147\STX\GS\"\ESC/v3/discovery:client_status\130\211\228\147\STX\ETX:\SOH*B?\n\
    \%io.envoyproxy.envoy.service.status.v3B\tCsdsProtoP\SOH\136\SOH\SOH\186\128\200\209\ACK\STX\DLE\STXJ\251\&1\n\
    \\a\DC2\ENQ\NUL\NUL\190\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL \n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL*\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL*\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL&\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL#\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\n\
    \\NUL)\n\
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
    \\SOH\b\DC2\ETX\DC1\NUL*\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\DC1\NUL*\n\
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
    \\170\STX\n\
    \\STX\ACK\NUL\DC2\EOT\ESC\NUL#\SOH\SUB\224\SOH CSDS is Client Status Discovery Service. It can be used to get the status of\n\
    \ an xDS-compliant client from the management server's point of view. It can\n\
    \ also be used to get the current xDS states directly from the client.\n\
    \2; [#protodoc-title: Client Status Discovery Service (CSDS)]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\ESC\b$\n\
    \\f\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\FS\STX\GS\ETX\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\FS\ACK\CAN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ENQ\DC2\ETX\FS\EM\US\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\FS 3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ACK\DC2\ETX\FS>D\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\FSEY\n\
    \\f\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\US\STX\"\ETX\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\US\ACK\ETB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\US\CAN+\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\US6J\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX \EOTB\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\EOT\DC2\ETX \EOTB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX!\EOT(\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\a\DC2\ETX!\EOT(\n\
    \?\n\
    \\STX\ENQ\NUL\DC2\EOT&\NUL8\SOH\SUB3 Status of a config from a management server view.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX&\ENQ\DC1\n\
    \4\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX(\STX\SO\SUB' Status info is not available/unknown.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX(\STX\t\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX(\f\r\n\
    \P\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX+\STX\r\SUBC Management server has sent the config to client and received ACK.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX+\STX\b\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX+\v\f\n\
    \\"\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX.\STX\SI\SUB\NAK Config is not sent.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX.\STX\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX.\r\SO\n\
    \_\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETX2\STX\f\SUBR Management server has sent the config to client but hasn\226\128\153t received\n\
    \ ACK/NACK.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETX2\STX\a\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETX2\n\
    \\v\n\
    \\215\SOH\n\
    \\EOT\ENQ\NUL\STX\EOT\DC2\ETX7\STX\f\SUB\201\SOH Management server has sent the config to client but received NACK. The\n\
    \ attached config dump will be the latest config (the rejected one), since\n\
    \ it is the persisted version in the management server.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\SOH\DC2\ETX7\STX\a\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\STX\DC2\ETX7\n\
    \\v\n\
    \4\n\
    \\STX\ENQ\SOH\DC2\EOT;\NULJ\SOH\SUB( Config status from a client-side view.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\SOH\SOH\DC2\ETX;\ENQ\ETB\n\
    \6\n\
    \\EOT\ENQ\SOH\STX\NUL\DC2\ETX=\STX\NAK\SUB) Config status is not available/unknown.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\NUL\SOH\DC2\ETX=\STX\DLE\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\NUL\STX\DC2\ETX=\DC3\DC4\n\
    \f\n\
    \\EOT\ENQ\SOH\STX\SOH\DC2\ETXA\STX\ETB\SUBY Client requested the config but hasn't received any config from management\n\
    \ server yet.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\SOH\SOH\DC2\ETXA\STX\DC2\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\SOH\STX\DC2\ETXA\NAK\SYN\n\
    \?\n\
    \\EOT\ENQ\SOH\STX\STX\DC2\ETXD\STX\DC3\SUB2 Client received the config and replied with ACK.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\STX\SOH\DC2\ETXD\STX\SO\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\STX\STX\DC2\ETXD\DC1\DC2\n\
    \\232\SOH\n\
    \\EOT\ENQ\SOH\STX\ETX\DC2\ETXI\STX\DC4\SUB\218\SOH Client received the config and replied with NACK. Notably, the attached\n\
    \ config dump is not the NACKed version, but the most recent accepted one. If\n\
    \ no config is accepted yet, the attached config dump will be empty.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\ETX\SOH\DC2\ETXI\STX\SI\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\ETX\STX\DC2\ETXI\DC2\DC3\n\
    \X\n\
    \\STX\EOT\NUL\DC2\EOTM\NULW\SOH\SUBL Request for client status of clients identified by a list of NodeMatchers.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETXM\b\ESC\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOTN\STXO4\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOTN\STXO4\n\
    \s\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXS\STX9\SUBf Management server can use these match criteria to identify clients.\n\
    \ The match follows OR semantics.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETXS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETXS\v&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXS'4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXS78\n\
    \0\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXV\STX\US\SUB# The node making the csds request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETXV\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXV\SYN\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXV\GS\RS\n\
    \K\n\
    \\STX\EOT\SOH\DC2\EOT[\NULy\SOH\SUB? Detailed config (per xDS) with status.\n\
    \ [#next-free-field: 8]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX[\b\DC4\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT\\\STX]-\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT\\\STX]-\n\
    \w\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXa\STX\SUB\SUBj Config status generated by management servers. Will not be present if the\n\
    \ CSDS server is an xDS client.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXa\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXa\SI\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXa\CAN\EM\n\
    \\155\ETX\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOTk\STXlS\SUB\140\ETX Client config status is populated by xDS clients. Will not be present if\n\
    \ the CSDS server is an xDS server. No matter what the client config status\n\
    \ is, xDS clients should always dump the most recent accepted xDS config.\n\
    \\n\
    \ .. attention::\n\
    \   This field is deprecated. Use :ref:`ClientResourceStatus\n\
    \   <envoy_v3_api_enum_admin.v3.ClientResourceStatus>` for per-resource\n\
    \   config status instead.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETXk\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXk\NAK\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXk%&\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\ETXl\ACKR\n\
    \\r\n\
    \\ACK\EOT\SOH\STX\SOH\b\ETX\DC2\ETXl\a\CAN\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\SOH\b\242\232\128K\DC2\ETXl\SUBQ\n\
    \\f\n\
    \\EOT\EOT\SOH\b\NUL\DC2\EOTn\STXx\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\ETXn\b\SYN\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETXo\EOT5\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETXo\EOT \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETXo!0\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETXo34\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETXq\EOT3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\ETXq\EOT\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETXq .\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETXq12\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETXs\EOT/\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ACK\DC2\ETXs\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETXs\RS*\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETXs-.\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETXu\EOT<\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ACK\DC2\ETXu\EOT#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETXu$7\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETXu:;\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETXw\EOT5\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ACK\DC2\ETXw\EOT \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETXw!0\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETXw34\n\
    \7\n\
    \\STX\EOT\STX\DC2\ENQ|\NUL\182\SOH\SOH\SUB* All xds configs for a particular client.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX|\b\DC4\n\
    \\v\n\
    \\ETX\EOT\STX\a\DC2\EOT}\STX~-\n\
    \\DLE\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\EOT}\STX~-\n\
    \\129\STX\n\
    \\EOT\EOT\STX\ETX\NUL\DC2\ACK\132\SOH\STX\169\SOH\ETX\SUB\240\SOH GenericXdsConfig is used to specify the config status and the dump\n\
    \ of any xDS resource identified by their type URL. It is the generalized\n\
    \ version of the now deprecated ListenersConfigDump, ClustersConfigDump etc\n\
    \ [#next-free-field: 10]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\ETX\NUL\SOH\DC2\EOT\132\SOH\n\
    \\SUB\n\
    \\143\SOH\n\
    \\ACK\EOT\STX\ETX\NUL\STX\NUL\DC2\EOT\135\SOH\EOT\CAN\SUB\DEL Type_url represents the fully qualified name of xDS resource type\n\
    \ like envoy.v3.Cluster, envoy.v3.ClusterLoadAssignment etc.\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\ENQ\DC2\EOT\135\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\SOH\DC2\EOT\135\SOH\v\DC3\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\ETX\DC2\EOT\135\SOH\SYN\ETB\n\
    \*\n\
    \\ACK\EOT\STX\ETX\NUL\STX\SOH\DC2\EOT\138\SOH\EOT\DC4\SUB\SUB Name of the xDS resource\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\SOH\ENQ\DC2\EOT\138\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\SOH\SOH\DC2\EOT\138\SOH\v\SI\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\SOH\ETX\DC2\EOT\138\SOH\DC2\DC3\n\
    \\239\SOH\n\
    \\ACK\EOT\STX\ETX\NUL\STX\STX\DC2\EOT\143\SOH\EOT\FS\SUB\222\SOH This is the :ref:`version_info <envoy_v3_api_field_service.discovery.v3.DiscoveryResponse.version_info>`\n\
    \ in the last processed xDS discovery response. If there are only\n\
    \ static bootstrap listeners, this field will be \"\"\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\STX\ENQ\DC2\EOT\143\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\STX\SOH\DC2\EOT\143\SOH\v\ETB\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\STX\ETX\DC2\EOT\143\SOH\SUB\ESC\n\
    \M\n\
    \\ACK\EOT\STX\ETX\NUL\STX\ETX\DC2\EOT\146\SOH\EOT'\SUB= The xDS resource config. Actual content depends on the type\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\ETX\ACK\DC2\EOT\146\SOH\EOT\ETB\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\ETX\SOH\DC2\EOT\146\SOH\CAN\"\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\ETX\ETX\DC2\EOT\146\SOH%&\n\
    \B\n\
    \\ACK\EOT\STX\ETX\NUL\STX\EOT\DC2\EOT\149\SOH\EOT/\SUB2 Timestamp when the xDS resource was last updated\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\EOT\ACK\DC2\EOT\149\SOH\EOT\GS\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\EOT\SOH\DC2\EOT\149\SOH\RS*\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\EOT\ETX\DC2\EOT\149\SOH-.\n\
    \\150\SOH\n\
    \\ACK\EOT\STX\ETX\NUL\STX\ENQ\DC2\EOT\153\SOH\EOT#\SUB\133\SOH Per xDS resource config status. It is generated by management servers.\n\
    \ It will not be present if the CSDS server is an xDS client.\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\ENQ\ACK\DC2\EOT\153\SOH\EOT\DLE\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\ENQ\SOH\DC2\EOT\153\SOH\DC1\RS\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\ENQ\ETX\DC2\EOT\153\SOH!\"\n\
    \G\n\
    \\ACK\EOT\STX\ETX\NUL\STX\ACK\DC2\EOT\156\SOH\EOT4\SUB7 Per xDS resource status from the view of a xDS client\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\ACK\ACK\DC2\EOT\156\SOH\EOT!\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\ACK\SOH\DC2\EOT\156\SOH\"/\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\ACK\ETX\DC2\EOT\156\SOH23\n\
    \\191\STX\n\
    \\ACK\EOT\STX\ETX\NUL\STX\a\DC2\EOT\164\SOH\EOT0\SUB\174\STX Set if the last update failed, cleared after the next successful\n\
    \ update. The *error_state* field contains the rejected version of\n\
    \ this particular resource along with the reason and timestamp. For\n\
    \ successfully updated or acknowledged resource, this field should\n\
    \ be empty.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\a\ACK\DC2\EOT\164\SOH\EOT\US\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\a\SOH\DC2\EOT\164\SOH +\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\a\ETX\DC2\EOT\164\SOH./\n\
    \x\n\
    \\ACK\EOT\STX\ETX\NUL\STX\b\DC2\EOT\168\SOH\EOT \SUBh Is static resource is true if it is specified in the config supplied\n\
    \ through the file at the startup.\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\b\ENQ\DC2\EOT\168\SOH\EOT\b\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\b\SOH\DC2\EOT\168\SOH\t\ESC\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\b\ETX\DC2\EOT\168\SOH\RS\US\n\
    \-\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\172\SOH\STX\US\SUB\US Node for a particular client.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\EOT\172\SOH\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\172\SOH\SYN\SUB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\172\SOH\GS\RS\n\
    \{\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ACK\176\SOH\STX\177\SOHS\SUBk This field is deprecated in favor of generic_xds_configs which is\n\
    \ much simpler and uniform in structure.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\EOT\176\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\EOT\176\SOH\v\ETB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\EOT\176\SOH\CAN\"\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\EOT\176\SOH%&\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\EOT\177\SOH\ACKR\n\
    \\SO\n\
    \\ACK\EOT\STX\STX\SOH\b\ETX\DC2\EOT\177\SOH\a\CAN\n\
    \\DC1\n\
    \\t\EOT\STX\STX\SOH\b\242\232\128K\DC2\EOT\177\SOH\SUBQ\n\
    \\129\SOH\n\
    \\EOT\EOT\STX\STX\STX\DC2\EOT\181\SOH\STX4\SUBs Represents generic xDS config and the exact config structure depends on\n\
    \ the type URL (like Cluster if it is CDS)\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\EOT\181\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\EOT\181\SOH\v\ESC\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\EOT\181\SOH\FS/\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\EOT\181\SOH23\n\
    \\f\n\
    \\STX\EOT\ETX\DC2\ACK\184\SOH\NUL\190\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\184\SOH\b\FS\n\
    \\r\n\
    \\ETX\EOT\ETX\a\DC2\ACK\185\SOH\STX\186\SOH5\n\
    \\DC2\n\
    \\b\EOT\ETX\a\211\136\225\ETX\SOH\DC2\ACK\185\SOH\STX\186\SOH5\n\
    \T\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\189\SOH\STX#\SUBF Client configs for the clients specified in the ClientStatusRequest.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\EOT\189\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\EOT\189\SOH\v\ETB\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\189\SOH\CAN\RS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\189\SOH!\"b\ACKproto3"