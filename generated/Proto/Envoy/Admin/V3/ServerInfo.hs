{- This file was auto-generated from envoy/admin/v3/server_info.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Admin.V3.ServerInfo (
        CommandLineOptions(), CommandLineOptions'DrainStrategy(..),
        CommandLineOptions'DrainStrategy(),
        CommandLineOptions'DrainStrategy'UnrecognizedValue,
        CommandLineOptions'IpVersion(..), CommandLineOptions'IpVersion(),
        CommandLineOptions'IpVersion'UnrecognizedValue,
        CommandLineOptions'Mode(..), CommandLineOptions'Mode(),
        CommandLineOptions'Mode'UnrecognizedValue, ServerInfo(),
        ServerInfo'State(..), ServerInfo'State(),
        ServerInfo'State'UnrecognizedValue
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
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.baseId' @:: Lens' CommandLineOptions Data.Word.Word64@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.useDynamicBaseId' @:: Lens' CommandLineOptions Prelude.Bool@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.baseIdPath' @:: Lens' CommandLineOptions Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.concurrency' @:: Lens' CommandLineOptions Data.Word.Word32@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.configPath' @:: Lens' CommandLineOptions Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.configYaml' @:: Lens' CommandLineOptions Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.allowUnknownStaticFields' @:: Lens' CommandLineOptions Prelude.Bool@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.rejectUnknownDynamicFields' @:: Lens' CommandLineOptions Prelude.Bool@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.ignoreUnknownDynamicFields' @:: Lens' CommandLineOptions Prelude.Bool@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.adminAddressPath' @:: Lens' CommandLineOptions Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.localAddressIpVersion' @:: Lens' CommandLineOptions CommandLineOptions'IpVersion@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.logLevel' @:: Lens' CommandLineOptions Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.componentLogLevel' @:: Lens' CommandLineOptions Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.logFormat' @:: Lens' CommandLineOptions Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.logFormatEscaped' @:: Lens' CommandLineOptions Prelude.Bool@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.logPath' @:: Lens' CommandLineOptions Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.serviceCluster' @:: Lens' CommandLineOptions Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.serviceNode' @:: Lens' CommandLineOptions Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.serviceZone' @:: Lens' CommandLineOptions Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.fileFlushInterval' @:: Lens' CommandLineOptions Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.maybe'fileFlushInterval' @:: Lens' CommandLineOptions (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.drainTime' @:: Lens' CommandLineOptions Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.maybe'drainTime' @:: Lens' CommandLineOptions (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.drainStrategy' @:: Lens' CommandLineOptions CommandLineOptions'DrainStrategy@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.parentShutdownTime' @:: Lens' CommandLineOptions Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.maybe'parentShutdownTime' @:: Lens' CommandLineOptions (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.mode' @:: Lens' CommandLineOptions CommandLineOptions'Mode@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.disableHotRestart' @:: Lens' CommandLineOptions Prelude.Bool@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.enableMutexTracing' @:: Lens' CommandLineOptions Prelude.Bool@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.restartEpoch' @:: Lens' CommandLineOptions Data.Word.Word32@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.cpusetThreads' @:: Lens' CommandLineOptions Prelude.Bool@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.disabledExtensions' @:: Lens' CommandLineOptions [Data.Text.Text]@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.vec'disabledExtensions' @:: Lens' CommandLineOptions (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.bootstrapVersion' @:: Lens' CommandLineOptions Data.Word.Word32@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.enableFineGrainLogging' @:: Lens' CommandLineOptions Prelude.Bool@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.socketPath' @:: Lens' CommandLineOptions Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.socketMode' @:: Lens' CommandLineOptions Data.Word.Word32@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.enableCoreDump' @:: Lens' CommandLineOptions Prelude.Bool@ -}
data CommandLineOptions
  = CommandLineOptions'_constructor {_CommandLineOptions'baseId :: !Data.Word.Word64,
                                     _CommandLineOptions'useDynamicBaseId :: !Prelude.Bool,
                                     _CommandLineOptions'baseIdPath :: !Data.Text.Text,
                                     _CommandLineOptions'concurrency :: !Data.Word.Word32,
                                     _CommandLineOptions'configPath :: !Data.Text.Text,
                                     _CommandLineOptions'configYaml :: !Data.Text.Text,
                                     _CommandLineOptions'allowUnknownStaticFields :: !Prelude.Bool,
                                     _CommandLineOptions'rejectUnknownDynamicFields :: !Prelude.Bool,
                                     _CommandLineOptions'ignoreUnknownDynamicFields :: !Prelude.Bool,
                                     _CommandLineOptions'adminAddressPath :: !Data.Text.Text,
                                     _CommandLineOptions'localAddressIpVersion :: !CommandLineOptions'IpVersion,
                                     _CommandLineOptions'logLevel :: !Data.Text.Text,
                                     _CommandLineOptions'componentLogLevel :: !Data.Text.Text,
                                     _CommandLineOptions'logFormat :: !Data.Text.Text,
                                     _CommandLineOptions'logFormatEscaped :: !Prelude.Bool,
                                     _CommandLineOptions'logPath :: !Data.Text.Text,
                                     _CommandLineOptions'serviceCluster :: !Data.Text.Text,
                                     _CommandLineOptions'serviceNode :: !Data.Text.Text,
                                     _CommandLineOptions'serviceZone :: !Data.Text.Text,
                                     _CommandLineOptions'fileFlushInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                     _CommandLineOptions'drainTime :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                     _CommandLineOptions'drainStrategy :: !CommandLineOptions'DrainStrategy,
                                     _CommandLineOptions'parentShutdownTime :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                     _CommandLineOptions'mode :: !CommandLineOptions'Mode,
                                     _CommandLineOptions'disableHotRestart :: !Prelude.Bool,
                                     _CommandLineOptions'enableMutexTracing :: !Prelude.Bool,
                                     _CommandLineOptions'restartEpoch :: !Data.Word.Word32,
                                     _CommandLineOptions'cpusetThreads :: !Prelude.Bool,
                                     _CommandLineOptions'disabledExtensions :: !(Data.Vector.Vector Data.Text.Text),
                                     _CommandLineOptions'bootstrapVersion :: !Data.Word.Word32,
                                     _CommandLineOptions'enableFineGrainLogging :: !Prelude.Bool,
                                     _CommandLineOptions'socketPath :: !Data.Text.Text,
                                     _CommandLineOptions'socketMode :: !Data.Word.Word32,
                                     _CommandLineOptions'enableCoreDump :: !Prelude.Bool,
                                     _CommandLineOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CommandLineOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CommandLineOptions "baseId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'baseId
           (\ x__ y__ -> x__ {_CommandLineOptions'baseId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "useDynamicBaseId" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'useDynamicBaseId
           (\ x__ y__ -> x__ {_CommandLineOptions'useDynamicBaseId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "baseIdPath" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'baseIdPath
           (\ x__ y__ -> x__ {_CommandLineOptions'baseIdPath = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "concurrency" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'concurrency
           (\ x__ y__ -> x__ {_CommandLineOptions'concurrency = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "configPath" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'configPath
           (\ x__ y__ -> x__ {_CommandLineOptions'configPath = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "configYaml" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'configYaml
           (\ x__ y__ -> x__ {_CommandLineOptions'configYaml = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "allowUnknownStaticFields" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'allowUnknownStaticFields
           (\ x__ y__
              -> x__ {_CommandLineOptions'allowUnknownStaticFields = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "rejectUnknownDynamicFields" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'rejectUnknownDynamicFields
           (\ x__ y__
              -> x__ {_CommandLineOptions'rejectUnknownDynamicFields = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "ignoreUnknownDynamicFields" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'ignoreUnknownDynamicFields
           (\ x__ y__
              -> x__ {_CommandLineOptions'ignoreUnknownDynamicFields = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "adminAddressPath" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'adminAddressPath
           (\ x__ y__ -> x__ {_CommandLineOptions'adminAddressPath = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "localAddressIpVersion" CommandLineOptions'IpVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'localAddressIpVersion
           (\ x__ y__
              -> x__ {_CommandLineOptions'localAddressIpVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "logLevel" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'logLevel
           (\ x__ y__ -> x__ {_CommandLineOptions'logLevel = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "componentLogLevel" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'componentLogLevel
           (\ x__ y__ -> x__ {_CommandLineOptions'componentLogLevel = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "logFormat" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'logFormat
           (\ x__ y__ -> x__ {_CommandLineOptions'logFormat = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "logFormatEscaped" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'logFormatEscaped
           (\ x__ y__ -> x__ {_CommandLineOptions'logFormatEscaped = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "logPath" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'logPath
           (\ x__ y__ -> x__ {_CommandLineOptions'logPath = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "serviceCluster" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'serviceCluster
           (\ x__ y__ -> x__ {_CommandLineOptions'serviceCluster = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "serviceNode" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'serviceNode
           (\ x__ y__ -> x__ {_CommandLineOptions'serviceNode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "serviceZone" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'serviceZone
           (\ x__ y__ -> x__ {_CommandLineOptions'serviceZone = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "fileFlushInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'fileFlushInterval
           (\ x__ y__ -> x__ {_CommandLineOptions'fileFlushInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CommandLineOptions "maybe'fileFlushInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'fileFlushInterval
           (\ x__ y__ -> x__ {_CommandLineOptions'fileFlushInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "drainTime" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'drainTime
           (\ x__ y__ -> x__ {_CommandLineOptions'drainTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CommandLineOptions "maybe'drainTime" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'drainTime
           (\ x__ y__ -> x__ {_CommandLineOptions'drainTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "drainStrategy" CommandLineOptions'DrainStrategy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'drainStrategy
           (\ x__ y__ -> x__ {_CommandLineOptions'drainStrategy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "parentShutdownTime" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'parentShutdownTime
           (\ x__ y__ -> x__ {_CommandLineOptions'parentShutdownTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CommandLineOptions "maybe'parentShutdownTime" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'parentShutdownTime
           (\ x__ y__ -> x__ {_CommandLineOptions'parentShutdownTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "mode" CommandLineOptions'Mode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'mode
           (\ x__ y__ -> x__ {_CommandLineOptions'mode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "disableHotRestart" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'disableHotRestart
           (\ x__ y__ -> x__ {_CommandLineOptions'disableHotRestart = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "enableMutexTracing" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'enableMutexTracing
           (\ x__ y__ -> x__ {_CommandLineOptions'enableMutexTracing = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "restartEpoch" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'restartEpoch
           (\ x__ y__ -> x__ {_CommandLineOptions'restartEpoch = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "cpusetThreads" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'cpusetThreads
           (\ x__ y__ -> x__ {_CommandLineOptions'cpusetThreads = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "disabledExtensions" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'disabledExtensions
           (\ x__ y__ -> x__ {_CommandLineOptions'disabledExtensions = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CommandLineOptions "vec'disabledExtensions" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'disabledExtensions
           (\ x__ y__ -> x__ {_CommandLineOptions'disabledExtensions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "bootstrapVersion" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'bootstrapVersion
           (\ x__ y__ -> x__ {_CommandLineOptions'bootstrapVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "enableFineGrainLogging" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'enableFineGrainLogging
           (\ x__ y__
              -> x__ {_CommandLineOptions'enableFineGrainLogging = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "socketPath" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'socketPath
           (\ x__ y__ -> x__ {_CommandLineOptions'socketPath = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "socketMode" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'socketMode
           (\ x__ y__ -> x__ {_CommandLineOptions'socketMode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommandLineOptions "enableCoreDump" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommandLineOptions'enableCoreDump
           (\ x__ y__ -> x__ {_CommandLineOptions'enableCoreDump = y__}))
        Prelude.id
instance Data.ProtoLens.Message CommandLineOptions where
  messageName _ = Data.Text.pack "envoy.admin.v3.CommandLineOptions"
  packedMessageDescriptor _
    = "\n\
      \\DC2CommandLineOptions\DC2\ETB\n\
      \\abase_id\CAN\SOH \SOH(\EOTR\ACKbaseId\DC2-\n\
      \\DC3use_dynamic_base_id\CAN\US \SOH(\bR\DLEuseDynamicBaseId\DC2 \n\
      \\fbase_id_path\CAN  \SOH(\tR\n\
      \baseIdPath\DC2 \n\
      \\vconcurrency\CAN\STX \SOH(\rR\vconcurrency\DC2\US\n\
      \\vconfig_path\CAN\ETX \SOH(\tR\n\
      \configPath\DC2\US\n\
      \\vconfig_yaml\CAN\EOT \SOH(\tR\n\
      \configYaml\DC2=\n\
      \\ESCallow_unknown_static_fields\CAN\ENQ \SOH(\bR\CANallowUnknownStaticFields\DC2A\n\
      \\GSreject_unknown_dynamic_fields\CAN\SUB \SOH(\bR\SUBrejectUnknownDynamicFields\DC2A\n\
      \\GSignore_unknown_dynamic_fields\CAN\RS \SOH(\bR\SUBignoreUnknownDynamicFields\DC2,\n\
      \\DC2admin_address_path\CAN\ACK \SOH(\tR\DLEadminAddressPath\DC2e\n\
      \\CANlocal_address_ip_version\CAN\a \SOH(\SO2,.envoy.admin.v3.CommandLineOptions.IpVersionR\NAKlocalAddressIpVersion\DC2\ESC\n\
      \\tlog_level\CAN\b \SOH(\tR\blogLevel\DC2.\n\
      \\DC3component_log_level\CAN\t \SOH(\tR\DC1componentLogLevel\DC2\GS\n\
      \\n\
      \log_format\CAN\n\
      \ \SOH(\tR\tlogFormat\DC2,\n\
      \\DC2log_format_escaped\CAN\ESC \SOH(\bR\DLElogFormatEscaped\DC2\EM\n\
      \\blog_path\CAN\v \SOH(\tR\alogPath\DC2'\n\
      \\SIservice_cluster\CAN\r \SOH(\tR\SOserviceCluster\DC2!\n\
      \\fservice_node\CAN\SO \SOH(\tR\vserviceNode\DC2!\n\
      \\fservice_zone\CAN\SI \SOH(\tR\vserviceZone\DC2I\n\
      \\DC3file_flush_interval\CAN\DLE \SOH(\v2\EM.google.protobuf.DurationR\DC1fileFlushInterval\DC28\n\
      \\n\
      \drain_time\CAN\DC1 \SOH(\v2\EM.google.protobuf.DurationR\tdrainTime\DC2W\n\
      \\SOdrain_strategy\CAN! \SOH(\SO20.envoy.admin.v3.CommandLineOptions.DrainStrategyR\rdrainStrategy\DC2K\n\
      \\DC4parent_shutdown_time\CAN\DC2 \SOH(\v2\EM.google.protobuf.DurationR\DC2parentShutdownTime\DC2;\n\
      \\EOTmode\CAN\DC3 \SOH(\SO2'.envoy.admin.v3.CommandLineOptions.ModeR\EOTmode\DC2.\n\
      \\DC3disable_hot_restart\CAN\SYN \SOH(\bR\DC1disableHotRestart\DC20\n\
      \\DC4enable_mutex_tracing\CAN\ETB \SOH(\bR\DC2enableMutexTracing\DC2#\n\
      \\rrestart_epoch\CAN\CAN \SOH(\rR\frestartEpoch\DC2%\n\
      \\SOcpuset_threads\CAN\EM \SOH(\bR\rcpusetThreads\DC2/\n\
      \\DC3disabled_extensions\CAN\FS \ETX(\tR\DC2disabledExtensions\DC2+\n\
      \\DC1bootstrap_version\CAN\GS \SOH(\rR\DLEbootstrapVersion\DC29\n\
      \\EMenable_fine_grain_logging\CAN\" \SOH(\bR\SYNenableFineGrainLogging\DC2\US\n\
      \\vsocket_path\CAN# \SOH(\tR\n\
      \socketPath\DC2\US\n\
      \\vsocket_mode\CAN$ \SOH(\rR\n\
      \socketMode\DC2(\n\
      \\DLEenable_core_dump\CAN% \SOH(\bR\SOenableCoreDump\"\ESC\n\
      \\tIpVersion\DC2\ACK\n\
      \\STXv4\DLE\NUL\DC2\ACK\n\
      \\STXv6\DLE\SOH\"-\n\
      \\EOTMode\DC2\t\n\
      \\ENQServe\DLE\NUL\DC2\f\n\
      \\bValidate\DLE\SOH\DC2\f\n\
      \\bInitOnly\DLE\STX\"+\n\
      \\rDrainStrategy\DC2\v\n\
      \\aGradual\DLE\NUL\DC2\r\n\
      \\tImmediate\DLE\SOH:-\154\197\136\RS(\n\
      \&envoy.admin.v2alpha.CommandLineOptionsJ\EOT\b\f\DLE\rJ\EOT\b\DC4\DLE\NAKJ\EOT\b\NAK\DLE\SYNR\tmax_statsR\DLEmax_obj_name_len"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        baseId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "base_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"baseId")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        useDynamicBaseId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "use_dynamic_base_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"useDynamicBaseId")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        baseIdPath__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "base_id_path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"baseIdPath")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        concurrency__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "concurrency"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"concurrency")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        configPath__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "config_path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"configPath")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        configYaml__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "config_yaml"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"configYaml")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        allowUnknownStaticFields__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allow_unknown_static_fields"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"allowUnknownStaticFields")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        rejectUnknownDynamicFields__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reject_unknown_dynamic_fields"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"rejectUnknownDynamicFields")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        ignoreUnknownDynamicFields__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ignore_unknown_dynamic_fields"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"ignoreUnknownDynamicFields")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        adminAddressPath__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "admin_address_path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"adminAddressPath")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        localAddressIpVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "local_address_ip_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor CommandLineOptions'IpVersion)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"localAddressIpVersion")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        logLevel__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "log_level"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"logLevel")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        componentLogLevel__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "component_log_level"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"componentLogLevel")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        logFormat__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "log_format"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"logFormat")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        logFormatEscaped__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "log_format_escaped"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"logFormatEscaped")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        logPath__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "log_path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"logPath")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        serviceCluster__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service_cluster"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"serviceCluster")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        serviceNode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service_node"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"serviceNode")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        serviceZone__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service_zone"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"serviceZone")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        fileFlushInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "file_flush_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fileFlushInterval")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        drainTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "drain_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'drainTime")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        drainStrategy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "drain_strategy"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor CommandLineOptions'DrainStrategy)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"drainStrategy")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        parentShutdownTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "parent_shutdown_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'parentShutdownTime")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        mode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor CommandLineOptions'Mode)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"mode")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        disableHotRestart__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "disable_hot_restart"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"disableHotRestart")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        enableMutexTracing__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enable_mutex_tracing"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"enableMutexTracing")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        restartEpoch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "restart_epoch"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"restartEpoch")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        cpusetThreads__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cpuset_threads"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"cpusetThreads")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        disabledExtensions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "disabled_extensions"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"disabledExtensions")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        bootstrapVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bootstrap_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bootstrapVersion")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        enableFineGrainLogging__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enable_fine_grain_logging"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"enableFineGrainLogging")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        socketPath__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "socket_path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"socketPath")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        socketMode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "socket_mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"socketMode")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
        enableCoreDump__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enable_core_dump"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"enableCoreDump")) ::
              Data.ProtoLens.FieldDescriptor CommandLineOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, baseId__field_descriptor),
           (Data.ProtoLens.Tag 31, useDynamicBaseId__field_descriptor),
           (Data.ProtoLens.Tag 32, baseIdPath__field_descriptor),
           (Data.ProtoLens.Tag 2, concurrency__field_descriptor),
           (Data.ProtoLens.Tag 3, configPath__field_descriptor),
           (Data.ProtoLens.Tag 4, configYaml__field_descriptor),
           (Data.ProtoLens.Tag 5, allowUnknownStaticFields__field_descriptor),
           (Data.ProtoLens.Tag 26, 
            rejectUnknownDynamicFields__field_descriptor),
           (Data.ProtoLens.Tag 30, 
            ignoreUnknownDynamicFields__field_descriptor),
           (Data.ProtoLens.Tag 6, adminAddressPath__field_descriptor),
           (Data.ProtoLens.Tag 7, localAddressIpVersion__field_descriptor),
           (Data.ProtoLens.Tag 8, logLevel__field_descriptor),
           (Data.ProtoLens.Tag 9, componentLogLevel__field_descriptor),
           (Data.ProtoLens.Tag 10, logFormat__field_descriptor),
           (Data.ProtoLens.Tag 27, logFormatEscaped__field_descriptor),
           (Data.ProtoLens.Tag 11, logPath__field_descriptor),
           (Data.ProtoLens.Tag 13, serviceCluster__field_descriptor),
           (Data.ProtoLens.Tag 14, serviceNode__field_descriptor),
           (Data.ProtoLens.Tag 15, serviceZone__field_descriptor),
           (Data.ProtoLens.Tag 16, fileFlushInterval__field_descriptor),
           (Data.ProtoLens.Tag 17, drainTime__field_descriptor),
           (Data.ProtoLens.Tag 33, drainStrategy__field_descriptor),
           (Data.ProtoLens.Tag 18, parentShutdownTime__field_descriptor),
           (Data.ProtoLens.Tag 19, mode__field_descriptor),
           (Data.ProtoLens.Tag 22, disableHotRestart__field_descriptor),
           (Data.ProtoLens.Tag 23, enableMutexTracing__field_descriptor),
           (Data.ProtoLens.Tag 24, restartEpoch__field_descriptor),
           (Data.ProtoLens.Tag 25, cpusetThreads__field_descriptor),
           (Data.ProtoLens.Tag 28, disabledExtensions__field_descriptor),
           (Data.ProtoLens.Tag 29, bootstrapVersion__field_descriptor),
           (Data.ProtoLens.Tag 34, enableFineGrainLogging__field_descriptor),
           (Data.ProtoLens.Tag 35, socketPath__field_descriptor),
           (Data.ProtoLens.Tag 36, socketMode__field_descriptor),
           (Data.ProtoLens.Tag 37, enableCoreDump__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CommandLineOptions'_unknownFields
        (\ x__ y__ -> x__ {_CommandLineOptions'_unknownFields = y__})
  defMessage
    = CommandLineOptions'_constructor
        {_CommandLineOptions'baseId = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'useDynamicBaseId = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'baseIdPath = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'concurrency = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'configPath = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'configYaml = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'allowUnknownStaticFields = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'rejectUnknownDynamicFields = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'ignoreUnknownDynamicFields = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'adminAddressPath = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'localAddressIpVersion = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'logLevel = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'componentLogLevel = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'logFormat = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'logFormatEscaped = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'logPath = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'serviceCluster = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'serviceNode = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'serviceZone = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'fileFlushInterval = Prelude.Nothing,
         _CommandLineOptions'drainTime = Prelude.Nothing,
         _CommandLineOptions'drainStrategy = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'parentShutdownTime = Prelude.Nothing,
         _CommandLineOptions'mode = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'disableHotRestart = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'enableMutexTracing = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'restartEpoch = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'cpusetThreads = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'disabledExtensions = Data.Vector.Generic.empty,
         _CommandLineOptions'bootstrapVersion = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'enableFineGrainLogging = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'socketPath = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'socketMode = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'enableCoreDump = Data.ProtoLens.fieldDefault,
         _CommandLineOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CommandLineOptions
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser CommandLineOptions
        loop x mutable'disabledExtensions
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'disabledExtensions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'disabledExtensions)
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
                              (Data.ProtoLens.Field.field @"vec'disabledExtensions")
                              frozen'disabledExtensions
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "base_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"baseId") y x)
                                  mutable'disabledExtensions
                        248
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "use_dynamic_base_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"useDynamicBaseId") y x)
                                  mutable'disabledExtensions
                        258
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "base_id_path"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"baseIdPath") y x)
                                  mutable'disabledExtensions
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "concurrency"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"concurrency") y x)
                                  mutable'disabledExtensions
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
                                       "config_path"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"configPath") y x)
                                  mutable'disabledExtensions
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
                                       "config_yaml"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"configYaml") y x)
                                  mutable'disabledExtensions
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "allow_unknown_static_fields"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"allowUnknownStaticFields") y x)
                                  mutable'disabledExtensions
                        208
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "reject_unknown_dynamic_fields"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rejectUnknownDynamicFields") y x)
                                  mutable'disabledExtensions
                        240
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ignore_unknown_dynamic_fields"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"ignoreUnknownDynamicFields") y x)
                                  mutable'disabledExtensions
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
                                       "admin_address_path"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"adminAddressPath") y x)
                                  mutable'disabledExtensions
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "local_address_ip_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"localAddressIpVersion") y x)
                                  mutable'disabledExtensions
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "log_level"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"logLevel") y x)
                                  mutable'disabledExtensions
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "component_log_level"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"componentLogLevel") y x)
                                  mutable'disabledExtensions
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "log_format"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"logFormat") y x)
                                  mutable'disabledExtensions
                        216
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "log_format_escaped"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"logFormatEscaped") y x)
                                  mutable'disabledExtensions
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "log_path"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"logPath") y x)
                                  mutable'disabledExtensions
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "service_cluster"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"serviceCluster") y x)
                                  mutable'disabledExtensions
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "service_node"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"serviceNode") y x)
                                  mutable'disabledExtensions
                        122
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "service_zone"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"serviceZone") y x)
                                  mutable'disabledExtensions
                        130
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "file_flush_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"fileFlushInterval") y x)
                                  mutable'disabledExtensions
                        138
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "drain_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"drainTime") y x)
                                  mutable'disabledExtensions
                        264
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "drain_strategy"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"drainStrategy") y x)
                                  mutable'disabledExtensions
                        146
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "parent_shutdown_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"parentShutdownTime") y x)
                                  mutable'disabledExtensions
                        152
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "mode"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"mode") y x)
                                  mutable'disabledExtensions
                        176
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "disable_hot_restart"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"disableHotRestart") y x)
                                  mutable'disabledExtensions
                        184
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "enable_mutex_tracing"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"enableMutexTracing") y x)
                                  mutable'disabledExtensions
                        192
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "restart_epoch"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"restartEpoch") y x)
                                  mutable'disabledExtensions
                        200
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "cpuset_threads"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cpusetThreads") y x)
                                  mutable'disabledExtensions
                        226
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "disabled_extensions"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'disabledExtensions y)
                                loop x v
                        232
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "bootstrap_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"bootstrapVersion") y x)
                                  mutable'disabledExtensions
                        272
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "enable_fine_grain_logging"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"enableFineGrainLogging") y x)
                                  mutable'disabledExtensions
                        282
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "socket_path"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"socketPath") y x)
                                  mutable'disabledExtensions
                        288
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "socket_mode"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"socketMode") y x)
                                  mutable'disabledExtensions
                        296
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "enable_core_dump"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"enableCoreDump") y x)
                                  mutable'disabledExtensions
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'disabledExtensions
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'disabledExtensions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'disabledExtensions)
          "CommandLineOptions"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"baseId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"useDynamicBaseId") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 248)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt
                            (\ b -> if b then 1 else 0)
                            _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"baseIdPath") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 258)
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
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"concurrency") _x
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
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"configPath") _x
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
                                 = Lens.Family2.view (Data.ProtoLens.Field.field @"configYaml") _x
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
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        Data.Text.Encoding.encodeUtf8
                                        _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"allowUnknownStaticFields") _x
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
                                           (Data.ProtoLens.Field.field
                                              @"rejectUnknownDynamicFields")
                                           _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 208)
                                           ((Prelude..)
                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (\ b -> if b then 1 else 0)
                                              _v))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field
                                                 @"ignoreUnknownDynamicFields")
                                              _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 240)
                                              ((Prelude..)
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (\ b -> if b then 1 else 0)
                                                 _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"adminAddressPath") _x
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
                                                            (Data.ProtoLens.Encoding.Bytes.putBytes
                                                               bs))
                                                    Data.Text.Encoding.encodeUtf8
                                                    _v))
                                        ((Data.Monoid.<>)
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field
                                                       @"localAddressIpVersion")
                                                    _x
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
                                              (let
                                                 _v
                                                   = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field @"logLevel") _x
                                               in
                                                 if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                                       ((Prelude..)
                                                          (\ bs
                                                             -> (Data.Monoid.<>)
                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                     (Prelude.fromIntegral
                                                                        (Data.ByteString.length
                                                                           bs)))
                                                                  (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                     bs))
                                                          Data.Text.Encoding.encodeUtf8
                                                          _v))
                                              ((Data.Monoid.<>)
                                                 (let
                                                    _v
                                                      = Lens.Family2.view
                                                          (Data.ProtoLens.Field.field
                                                             @"componentLogLevel")
                                                          _x
                                                  in
                                                    if (Prelude.==)
                                                         _v Data.ProtoLens.fieldDefault then
                                                        Data.Monoid.mempty
                                                    else
                                                        (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             74)
                                                          ((Prelude..)
                                                             (\ bs
                                                                -> (Data.Monoid.<>)
                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                        (Prelude.fromIntegral
                                                                           (Data.ByteString.length
                                                                              bs)))
                                                                     (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                        bs))
                                                             Data.Text.Encoding.encodeUtf8
                                                             _v))
                                                 ((Data.Monoid.<>)
                                                    (let
                                                       _v
                                                         = Lens.Family2.view
                                                             (Data.ProtoLens.Field.field
                                                                @"logFormat")
                                                             _x
                                                     in
                                                       if (Prelude.==)
                                                            _v Data.ProtoLens.fieldDefault then
                                                           Data.Monoid.mempty
                                                       else
                                                           (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                82)
                                                             ((Prelude..)
                                                                (\ bs
                                                                   -> (Data.Monoid.<>)
                                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                           (Prelude.fromIntegral
                                                                              (Data.ByteString.length
                                                                                 bs)))
                                                                        (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                           bs))
                                                                Data.Text.Encoding.encodeUtf8
                                                                _v))
                                                    ((Data.Monoid.<>)
                                                       (let
                                                          _v
                                                            = Lens.Family2.view
                                                                (Data.ProtoLens.Field.field
                                                                   @"logFormatEscaped")
                                                                _x
                                                        in
                                                          if (Prelude.==)
                                                               _v Data.ProtoLens.fieldDefault then
                                                              Data.Monoid.mempty
                                                          else
                                                              (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   216)
                                                                ((Prelude..)
                                                                   Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (\ b -> if b then 1 else 0)
                                                                   _v))
                                                       ((Data.Monoid.<>)
                                                          (let
                                                             _v
                                                               = Lens.Family2.view
                                                                   (Data.ProtoLens.Field.field
                                                                      @"logPath")
                                                                   _x
                                                           in
                                                             if (Prelude.==)
                                                                  _v
                                                                  Data.ProtoLens.fieldDefault then
                                                                 Data.Monoid.mempty
                                                             else
                                                                 (Data.Monoid.<>)
                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      90)
                                                                   ((Prelude..)
                                                                      (\ bs
                                                                         -> (Data.Monoid.<>)
                                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                 (Prelude.fromIntegral
                                                                                    (Data.ByteString.length
                                                                                       bs)))
                                                                              (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                 bs))
                                                                      Data.Text.Encoding.encodeUtf8
                                                                      _v))
                                                          ((Data.Monoid.<>)
                                                             (let
                                                                _v
                                                                  = Lens.Family2.view
                                                                      (Data.ProtoLens.Field.field
                                                                         @"serviceCluster")
                                                                      _x
                                                              in
                                                                if (Prelude.==)
                                                                     _v
                                                                     Data.ProtoLens.fieldDefault then
                                                                    Data.Monoid.mempty
                                                                else
                                                                    (Data.Monoid.<>)
                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         106)
                                                                      ((Prelude..)
                                                                         (\ bs
                                                                            -> (Data.Monoid.<>)
                                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                    (Prelude.fromIntegral
                                                                                       (Data.ByteString.length
                                                                                          bs)))
                                                                                 (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                    bs))
                                                                         Data.Text.Encoding.encodeUtf8
                                                                         _v))
                                                             ((Data.Monoid.<>)
                                                                (let
                                                                   _v
                                                                     = Lens.Family2.view
                                                                         (Data.ProtoLens.Field.field
                                                                            @"serviceNode")
                                                                         _x
                                                                 in
                                                                   if (Prelude.==)
                                                                        _v
                                                                        Data.ProtoLens.fieldDefault then
                                                                       Data.Monoid.mempty
                                                                   else
                                                                       (Data.Monoid.<>)
                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                            114)
                                                                         ((Prelude..)
                                                                            (\ bs
                                                                               -> (Data.Monoid.<>)
                                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                       (Prelude.fromIntegral
                                                                                          (Data.ByteString.length
                                                                                             bs)))
                                                                                    (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                       bs))
                                                                            Data.Text.Encoding.encodeUtf8
                                                                            _v))
                                                                ((Data.Monoid.<>)
                                                                   (let
                                                                      _v
                                                                        = Lens.Family2.view
                                                                            (Data.ProtoLens.Field.field
                                                                               @"serviceZone")
                                                                            _x
                                                                    in
                                                                      if (Prelude.==)
                                                                           _v
                                                                           Data.ProtoLens.fieldDefault then
                                                                          Data.Monoid.mempty
                                                                      else
                                                                          (Data.Monoid.<>)
                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                               122)
                                                                            ((Prelude..)
                                                                               (\ bs
                                                                                  -> (Data.Monoid.<>)
                                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                          (Prelude.fromIntegral
                                                                                             (Data.ByteString.length
                                                                                                bs)))
                                                                                       (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                          bs))
                                                                               Data.Text.Encoding.encodeUtf8
                                                                               _v))
                                                                   ((Data.Monoid.<>)
                                                                      (case
                                                                           Lens.Family2.view
                                                                             (Data.ProtoLens.Field.field
                                                                                @"maybe'fileFlushInterval")
                                                                             _x
                                                                       of
                                                                         Prelude.Nothing
                                                                           -> Data.Monoid.mempty
                                                                         (Prelude.Just _v)
                                                                           -> (Data.Monoid.<>)
                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                   130)
                                                                                ((Prelude..)
                                                                                   (\ bs
                                                                                      -> (Data.Monoid.<>)
                                                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                              (Prelude.fromIntegral
                                                                                                 (Data.ByteString.length
                                                                                                    bs)))
                                                                                           (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                              bs))
                                                                                   Data.ProtoLens.encodeMessage
                                                                                   _v))
                                                                      ((Data.Monoid.<>)
                                                                         (case
                                                                              Lens.Family2.view
                                                                                (Data.ProtoLens.Field.field
                                                                                   @"maybe'drainTime")
                                                                                _x
                                                                          of
                                                                            Prelude.Nothing
                                                                              -> Data.Monoid.mempty
                                                                            (Prelude.Just _v)
                                                                              -> (Data.Monoid.<>)
                                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                      138)
                                                                                   ((Prelude..)
                                                                                      (\ bs
                                                                                         -> (Data.Monoid.<>)
                                                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                 (Prelude.fromIntegral
                                                                                                    (Data.ByteString.length
                                                                                                       bs)))
                                                                                              (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                 bs))
                                                                                      Data.ProtoLens.encodeMessage
                                                                                      _v))
                                                                         ((Data.Monoid.<>)
                                                                            (let
                                                                               _v
                                                                                 = Lens.Family2.view
                                                                                     (Data.ProtoLens.Field.field
                                                                                        @"drainStrategy")
                                                                                     _x
                                                                             in
                                                                               if (Prelude.==)
                                                                                    _v
                                                                                    Data.ProtoLens.fieldDefault then
                                                                                   Data.Monoid.mempty
                                                                               else
                                                                                   (Data.Monoid.<>)
                                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                        264)
                                                                                     ((Prelude..)
                                                                                        ((Prelude..)
                                                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                           Prelude.fromIntegral)
                                                                                        Prelude.fromEnum
                                                                                        _v))
                                                                            ((Data.Monoid.<>)
                                                                               (case
                                                                                    Lens.Family2.view
                                                                                      (Data.ProtoLens.Field.field
                                                                                         @"maybe'parentShutdownTime")
                                                                                      _x
                                                                                of
                                                                                  Prelude.Nothing
                                                                                    -> Data.Monoid.mempty
                                                                                  (Prelude.Just _v)
                                                                                    -> (Data.Monoid.<>)
                                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                            146)
                                                                                         ((Prelude..)
                                                                                            (\ bs
                                                                                               -> (Data.Monoid.<>)
                                                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                       (Prelude.fromIntegral
                                                                                                          (Data.ByteString.length
                                                                                                             bs)))
                                                                                                    (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                       bs))
                                                                                            Data.ProtoLens.encodeMessage
                                                                                            _v))
                                                                               ((Data.Monoid.<>)
                                                                                  (let
                                                                                     _v
                                                                                       = Lens.Family2.view
                                                                                           (Data.ProtoLens.Field.field
                                                                                              @"mode")
                                                                                           _x
                                                                                   in
                                                                                     if (Prelude.==)
                                                                                          _v
                                                                                          Data.ProtoLens.fieldDefault then
                                                                                         Data.Monoid.mempty
                                                                                     else
                                                                                         (Data.Monoid.<>)
                                                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                              152)
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
                                                                                              (Data.ProtoLens.Field.field
                                                                                                 @"disableHotRestart")
                                                                                              _x
                                                                                      in
                                                                                        if (Prelude.==)
                                                                                             _v
                                                                                             Data.ProtoLens.fieldDefault then
                                                                                            Data.Monoid.mempty
                                                                                        else
                                                                                            (Data.Monoid.<>)
                                                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                 176)
                                                                                              ((Prelude..)
                                                                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                 (\ b
                                                                                                    -> if b then
                                                                                                           1
                                                                                                       else
                                                                                                           0)
                                                                                                 _v))
                                                                                     ((Data.Monoid.<>)
                                                                                        (let
                                                                                           _v
                                                                                             = Lens.Family2.view
                                                                                                 (Data.ProtoLens.Field.field
                                                                                                    @"enableMutexTracing")
                                                                                                 _x
                                                                                         in
                                                                                           if (Prelude.==)
                                                                                                _v
                                                                                                Data.ProtoLens.fieldDefault then
                                                                                               Data.Monoid.mempty
                                                                                           else
                                                                                               (Data.Monoid.<>)
                                                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                    184)
                                                                                                 ((Prelude..)
                                                                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                    (\ b
                                                                                                       -> if b then
                                                                                                              1
                                                                                                          else
                                                                                                              0)
                                                                                                    _v))
                                                                                        ((Data.Monoid.<>)
                                                                                           (let
                                                                                              _v
                                                                                                = Lens.Family2.view
                                                                                                    (Data.ProtoLens.Field.field
                                                                                                       @"restartEpoch")
                                                                                                    _x
                                                                                            in
                                                                                              if (Prelude.==)
                                                                                                   _v
                                                                                                   Data.ProtoLens.fieldDefault then
                                                                                                  Data.Monoid.mempty
                                                                                              else
                                                                                                  (Data.Monoid.<>)
                                                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                       192)
                                                                                                    ((Prelude..)
                                                                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                       Prelude.fromIntegral
                                                                                                       _v))
                                                                                           ((Data.Monoid.<>)
                                                                                              (let
                                                                                                 _v
                                                                                                   = Lens.Family2.view
                                                                                                       (Data.ProtoLens.Field.field
                                                                                                          @"cpusetThreads")
                                                                                                       _x
                                                                                               in
                                                                                                 if (Prelude.==)
                                                                                                      _v
                                                                                                      Data.ProtoLens.fieldDefault then
                                                                                                     Data.Monoid.mempty
                                                                                                 else
                                                                                                     (Data.Monoid.<>)
                                                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                          200)
                                                                                                       ((Prelude..)
                                                                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                          (\ b
                                                                                                             -> if b then
                                                                                                                    1
                                                                                                                else
                                                                                                                    0)
                                                                                                          _v))
                                                                                              ((Data.Monoid.<>)
                                                                                                 (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                                                    (\ _v
                                                                                                       -> (Data.Monoid.<>)
                                                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                               226)
                                                                                                            ((Prelude..)
                                                                                                               (\ bs
                                                                                                                  -> (Data.Monoid.<>)
                                                                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                          (Prelude.fromIntegral
                                                                                                                             (Data.ByteString.length
                                                                                                                                bs)))
                                                                                                                       (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                          bs))
                                                                                                               Data.Text.Encoding.encodeUtf8
                                                                                                               _v))
                                                                                                    (Lens.Family2.view
                                                                                                       (Data.ProtoLens.Field.field
                                                                                                          @"vec'disabledExtensions")
                                                                                                       _x))
                                                                                                 ((Data.Monoid.<>)
                                                                                                    (let
                                                                                                       _v
                                                                                                         = Lens.Family2.view
                                                                                                             (Data.ProtoLens.Field.field
                                                                                                                @"bootstrapVersion")
                                                                                                             _x
                                                                                                     in
                                                                                                       if (Prelude.==)
                                                                                                            _v
                                                                                                            Data.ProtoLens.fieldDefault then
                                                                                                           Data.Monoid.mempty
                                                                                                       else
                                                                                                           (Data.Monoid.<>)
                                                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                232)
                                                                                                             ((Prelude..)
                                                                                                                Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                Prelude.fromIntegral
                                                                                                                _v))
                                                                                                    ((Data.Monoid.<>)
                                                                                                       (let
                                                                                                          _v
                                                                                                            = Lens.Family2.view
                                                                                                                (Data.ProtoLens.Field.field
                                                                                                                   @"enableFineGrainLogging")
                                                                                                                _x
                                                                                                        in
                                                                                                          if (Prelude.==)
                                                                                                               _v
                                                                                                               Data.ProtoLens.fieldDefault then
                                                                                                              Data.Monoid.mempty
                                                                                                          else
                                                                                                              (Data.Monoid.<>)
                                                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                   272)
                                                                                                                ((Prelude..)
                                                                                                                   Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                   (\ b
                                                                                                                      -> if b then
                                                                                                                             1
                                                                                                                         else
                                                                                                                             0)
                                                                                                                   _v))
                                                                                                       ((Data.Monoid.<>)
                                                                                                          (let
                                                                                                             _v
                                                                                                               = Lens.Family2.view
                                                                                                                   (Data.ProtoLens.Field.field
                                                                                                                      @"socketPath")
                                                                                                                   _x
                                                                                                           in
                                                                                                             if (Prelude.==)
                                                                                                                  _v
                                                                                                                  Data.ProtoLens.fieldDefault then
                                                                                                                 Data.Monoid.mempty
                                                                                                             else
                                                                                                                 (Data.Monoid.<>)
                                                                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                      282)
                                                                                                                   ((Prelude..)
                                                                                                                      (\ bs
                                                                                                                         -> (Data.Monoid.<>)
                                                                                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                 (Prelude.fromIntegral
                                                                                                                                    (Data.ByteString.length
                                                                                                                                       bs)))
                                                                                                                              (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                 bs))
                                                                                                                      Data.Text.Encoding.encodeUtf8
                                                                                                                      _v))
                                                                                                          ((Data.Monoid.<>)
                                                                                                             (let
                                                                                                                _v
                                                                                                                  = Lens.Family2.view
                                                                                                                      (Data.ProtoLens.Field.field
                                                                                                                         @"socketMode")
                                                                                                                      _x
                                                                                                              in
                                                                                                                if (Prelude.==)
                                                                                                                     _v
                                                                                                                     Data.ProtoLens.fieldDefault then
                                                                                                                    Data.Monoid.mempty
                                                                                                                else
                                                                                                                    (Data.Monoid.<>)
                                                                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                         288)
                                                                                                                      ((Prelude..)
                                                                                                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                         Prelude.fromIntegral
                                                                                                                         _v))
                                                                                                             ((Data.Monoid.<>)
                                                                                                                (let
                                                                                                                   _v
                                                                                                                     = Lens.Family2.view
                                                                                                                         (Data.ProtoLens.Field.field
                                                                                                                            @"enableCoreDump")
                                                                                                                         _x
                                                                                                                 in
                                                                                                                   if (Prelude.==)
                                                                                                                        _v
                                                                                                                        Data.ProtoLens.fieldDefault then
                                                                                                                       Data.Monoid.mempty
                                                                                                                   else
                                                                                                                       (Data.Monoid.<>)
                                                                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                            296)
                                                                                                                         ((Prelude..)
                                                                                                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                            (\ b
                                                                                                                               -> if b then
                                                                                                                                      1
                                                                                                                                  else
                                                                                                                                      0)
                                                                                                                            _v))
                                                                                                                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                                                                   (Lens.Family2.view
                                                                                                                      Data.ProtoLens.unknownFields
                                                                                                                      _x)))))))))))))))))))))))))))))))))))
instance Control.DeepSeq.NFData CommandLineOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CommandLineOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CommandLineOptions'baseId x__)
                (Control.DeepSeq.deepseq
                   (_CommandLineOptions'useDynamicBaseId x__)
                   (Control.DeepSeq.deepseq
                      (_CommandLineOptions'baseIdPath x__)
                      (Control.DeepSeq.deepseq
                         (_CommandLineOptions'concurrency x__)
                         (Control.DeepSeq.deepseq
                            (_CommandLineOptions'configPath x__)
                            (Control.DeepSeq.deepseq
                               (_CommandLineOptions'configYaml x__)
                               (Control.DeepSeq.deepseq
                                  (_CommandLineOptions'allowUnknownStaticFields x__)
                                  (Control.DeepSeq.deepseq
                                     (_CommandLineOptions'rejectUnknownDynamicFields x__)
                                     (Control.DeepSeq.deepseq
                                        (_CommandLineOptions'ignoreUnknownDynamicFields x__)
                                        (Control.DeepSeq.deepseq
                                           (_CommandLineOptions'adminAddressPath x__)
                                           (Control.DeepSeq.deepseq
                                              (_CommandLineOptions'localAddressIpVersion x__)
                                              (Control.DeepSeq.deepseq
                                                 (_CommandLineOptions'logLevel x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_CommandLineOptions'componentLogLevel x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_CommandLineOptions'logFormat x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_CommandLineOptions'logFormatEscaped x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_CommandLineOptions'logPath x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_CommandLineOptions'serviceCluster
                                                                   x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_CommandLineOptions'serviceNode
                                                                      x__)
                                                                   (Control.DeepSeq.deepseq
                                                                      (_CommandLineOptions'serviceZone
                                                                         x__)
                                                                      (Control.DeepSeq.deepseq
                                                                         (_CommandLineOptions'fileFlushInterval
                                                                            x__)
                                                                         (Control.DeepSeq.deepseq
                                                                            (_CommandLineOptions'drainTime
                                                                               x__)
                                                                            (Control.DeepSeq.deepseq
                                                                               (_CommandLineOptions'drainStrategy
                                                                                  x__)
                                                                               (Control.DeepSeq.deepseq
                                                                                  (_CommandLineOptions'parentShutdownTime
                                                                                     x__)
                                                                                  (Control.DeepSeq.deepseq
                                                                                     (_CommandLineOptions'mode
                                                                                        x__)
                                                                                     (Control.DeepSeq.deepseq
                                                                                        (_CommandLineOptions'disableHotRestart
                                                                                           x__)
                                                                                        (Control.DeepSeq.deepseq
                                                                                           (_CommandLineOptions'enableMutexTracing
                                                                                              x__)
                                                                                           (Control.DeepSeq.deepseq
                                                                                              (_CommandLineOptions'restartEpoch
                                                                                                 x__)
                                                                                              (Control.DeepSeq.deepseq
                                                                                                 (_CommandLineOptions'cpusetThreads
                                                                                                    x__)
                                                                                                 (Control.DeepSeq.deepseq
                                                                                                    (_CommandLineOptions'disabledExtensions
                                                                                                       x__)
                                                                                                    (Control.DeepSeq.deepseq
                                                                                                       (_CommandLineOptions'bootstrapVersion
                                                                                                          x__)
                                                                                                       (Control.DeepSeq.deepseq
                                                                                                          (_CommandLineOptions'enableFineGrainLogging
                                                                                                             x__)
                                                                                                          (Control.DeepSeq.deepseq
                                                                                                             (_CommandLineOptions'socketPath
                                                                                                                x__)
                                                                                                             (Control.DeepSeq.deepseq
                                                                                                                (_CommandLineOptions'socketMode
                                                                                                                   x__)
                                                                                                                (Control.DeepSeq.deepseq
                                                                                                                   (_CommandLineOptions'enableCoreDump
                                                                                                                      x__)
                                                                                                                   ()))))))))))))))))))))))))))))))))))
newtype CommandLineOptions'DrainStrategy'UnrecognizedValue
  = CommandLineOptions'DrainStrategy'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data CommandLineOptions'DrainStrategy
  = CommandLineOptions'Gradual |
    CommandLineOptions'Immediate |
    CommandLineOptions'DrainStrategy'Unrecognized !CommandLineOptions'DrainStrategy'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum CommandLineOptions'DrainStrategy where
  maybeToEnum 0 = Prelude.Just CommandLineOptions'Gradual
  maybeToEnum 1 = Prelude.Just CommandLineOptions'Immediate
  maybeToEnum k
    = Prelude.Just
        (CommandLineOptions'DrainStrategy'Unrecognized
           (CommandLineOptions'DrainStrategy'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum CommandLineOptions'Gradual = "Gradual"
  showEnum CommandLineOptions'Immediate = "Immediate"
  showEnum
    (CommandLineOptions'DrainStrategy'Unrecognized (CommandLineOptions'DrainStrategy'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "Gradual"
    = Prelude.Just CommandLineOptions'Gradual
    | (Prelude.==) k "Immediate"
    = Prelude.Just CommandLineOptions'Immediate
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded CommandLineOptions'DrainStrategy where
  minBound = CommandLineOptions'Gradual
  maxBound = CommandLineOptions'Immediate
instance Prelude.Enum CommandLineOptions'DrainStrategy where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum DrainStrategy: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum CommandLineOptions'Gradual = 0
  fromEnum CommandLineOptions'Immediate = 1
  fromEnum
    (CommandLineOptions'DrainStrategy'Unrecognized (CommandLineOptions'DrainStrategy'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ CommandLineOptions'Immediate
    = Prelude.error
        "CommandLineOptions'DrainStrategy.succ: bad argument CommandLineOptions'Immediate. This value would be out of bounds."
  succ CommandLineOptions'Gradual = CommandLineOptions'Immediate
  succ (CommandLineOptions'DrainStrategy'Unrecognized _)
    = Prelude.error
        "CommandLineOptions'DrainStrategy.succ: bad argument: unrecognized value"
  pred CommandLineOptions'Gradual
    = Prelude.error
        "CommandLineOptions'DrainStrategy.pred: bad argument CommandLineOptions'Gradual. This value would be out of bounds."
  pred CommandLineOptions'Immediate = CommandLineOptions'Gradual
  pred (CommandLineOptions'DrainStrategy'Unrecognized _)
    = Prelude.error
        "CommandLineOptions'DrainStrategy.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault CommandLineOptions'DrainStrategy where
  fieldDefault = CommandLineOptions'Gradual
instance Control.DeepSeq.NFData CommandLineOptions'DrainStrategy where
  rnf x__ = Prelude.seq x__ ()
newtype CommandLineOptions'IpVersion'UnrecognizedValue
  = CommandLineOptions'IpVersion'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data CommandLineOptions'IpVersion
  = CommandLineOptions'V4 |
    CommandLineOptions'V6 |
    CommandLineOptions'IpVersion'Unrecognized !CommandLineOptions'IpVersion'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum CommandLineOptions'IpVersion where
  maybeToEnum 0 = Prelude.Just CommandLineOptions'V4
  maybeToEnum 1 = Prelude.Just CommandLineOptions'V6
  maybeToEnum k
    = Prelude.Just
        (CommandLineOptions'IpVersion'Unrecognized
           (CommandLineOptions'IpVersion'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum CommandLineOptions'V4 = "v4"
  showEnum CommandLineOptions'V6 = "v6"
  showEnum
    (CommandLineOptions'IpVersion'Unrecognized (CommandLineOptions'IpVersion'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "v4" = Prelude.Just CommandLineOptions'V4
    | (Prelude.==) k "v6" = Prelude.Just CommandLineOptions'V6
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded CommandLineOptions'IpVersion where
  minBound = CommandLineOptions'V4
  maxBound = CommandLineOptions'V6
instance Prelude.Enum CommandLineOptions'IpVersion where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum IpVersion: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum CommandLineOptions'V4 = 0
  fromEnum CommandLineOptions'V6 = 1
  fromEnum
    (CommandLineOptions'IpVersion'Unrecognized (CommandLineOptions'IpVersion'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ CommandLineOptions'V6
    = Prelude.error
        "CommandLineOptions'IpVersion.succ: bad argument CommandLineOptions'V6. This value would be out of bounds."
  succ CommandLineOptions'V4 = CommandLineOptions'V6
  succ (CommandLineOptions'IpVersion'Unrecognized _)
    = Prelude.error
        "CommandLineOptions'IpVersion.succ: bad argument: unrecognized value"
  pred CommandLineOptions'V4
    = Prelude.error
        "CommandLineOptions'IpVersion.pred: bad argument CommandLineOptions'V4. This value would be out of bounds."
  pred CommandLineOptions'V6 = CommandLineOptions'V4
  pred (CommandLineOptions'IpVersion'Unrecognized _)
    = Prelude.error
        "CommandLineOptions'IpVersion.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault CommandLineOptions'IpVersion where
  fieldDefault = CommandLineOptions'V4
instance Control.DeepSeq.NFData CommandLineOptions'IpVersion where
  rnf x__ = Prelude.seq x__ ()
newtype CommandLineOptions'Mode'UnrecognizedValue
  = CommandLineOptions'Mode'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data CommandLineOptions'Mode
  = CommandLineOptions'Serve |
    CommandLineOptions'Validate |
    CommandLineOptions'InitOnly |
    CommandLineOptions'Mode'Unrecognized !CommandLineOptions'Mode'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum CommandLineOptions'Mode where
  maybeToEnum 0 = Prelude.Just CommandLineOptions'Serve
  maybeToEnum 1 = Prelude.Just CommandLineOptions'Validate
  maybeToEnum 2 = Prelude.Just CommandLineOptions'InitOnly
  maybeToEnum k
    = Prelude.Just
        (CommandLineOptions'Mode'Unrecognized
           (CommandLineOptions'Mode'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum CommandLineOptions'Serve = "Serve"
  showEnum CommandLineOptions'Validate = "Validate"
  showEnum CommandLineOptions'InitOnly = "InitOnly"
  showEnum
    (CommandLineOptions'Mode'Unrecognized (CommandLineOptions'Mode'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "Serve" = Prelude.Just CommandLineOptions'Serve
    | (Prelude.==) k "Validate"
    = Prelude.Just CommandLineOptions'Validate
    | (Prelude.==) k "InitOnly"
    = Prelude.Just CommandLineOptions'InitOnly
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded CommandLineOptions'Mode where
  minBound = CommandLineOptions'Serve
  maxBound = CommandLineOptions'InitOnly
instance Prelude.Enum CommandLineOptions'Mode where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Mode: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum CommandLineOptions'Serve = 0
  fromEnum CommandLineOptions'Validate = 1
  fromEnum CommandLineOptions'InitOnly = 2
  fromEnum
    (CommandLineOptions'Mode'Unrecognized (CommandLineOptions'Mode'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ CommandLineOptions'InitOnly
    = Prelude.error
        "CommandLineOptions'Mode.succ: bad argument CommandLineOptions'InitOnly. This value would be out of bounds."
  succ CommandLineOptions'Serve = CommandLineOptions'Validate
  succ CommandLineOptions'Validate = CommandLineOptions'InitOnly
  succ (CommandLineOptions'Mode'Unrecognized _)
    = Prelude.error
        "CommandLineOptions'Mode.succ: bad argument: unrecognized value"
  pred CommandLineOptions'Serve
    = Prelude.error
        "CommandLineOptions'Mode.pred: bad argument CommandLineOptions'Serve. This value would be out of bounds."
  pred CommandLineOptions'Validate = CommandLineOptions'Serve
  pred CommandLineOptions'InitOnly = CommandLineOptions'Validate
  pred (CommandLineOptions'Mode'Unrecognized _)
    = Prelude.error
        "CommandLineOptions'Mode.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault CommandLineOptions'Mode where
  fieldDefault = CommandLineOptions'Serve
instance Control.DeepSeq.NFData CommandLineOptions'Mode where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.version' @:: Lens' ServerInfo Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.state' @:: Lens' ServerInfo ServerInfo'State@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.uptimeCurrentEpoch' @:: Lens' ServerInfo Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.maybe'uptimeCurrentEpoch' @:: Lens' ServerInfo (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.uptimeAllEpochs' @:: Lens' ServerInfo Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.maybe'uptimeAllEpochs' @:: Lens' ServerInfo (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.hotRestartVersion' @:: Lens' ServerInfo Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.commandLineOptions' @:: Lens' ServerInfo CommandLineOptions@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.maybe'commandLineOptions' @:: Lens' ServerInfo (Prelude.Maybe CommandLineOptions)@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.node' @:: Lens' ServerInfo Proto.Envoy.Config.Core.V3.Base.Node@
         * 'Proto.Envoy.Admin.V3.ServerInfo_Fields.maybe'node' @:: Lens' ServerInfo (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node)@ -}
data ServerInfo
  = ServerInfo'_constructor {_ServerInfo'version :: !Data.Text.Text,
                             _ServerInfo'state :: !ServerInfo'State,
                             _ServerInfo'uptimeCurrentEpoch :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                             _ServerInfo'uptimeAllEpochs :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                             _ServerInfo'hotRestartVersion :: !Data.Text.Text,
                             _ServerInfo'commandLineOptions :: !(Prelude.Maybe CommandLineOptions),
                             _ServerInfo'node :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node),
                             _ServerInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ServerInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ServerInfo "version" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ServerInfo'version (\ x__ y__ -> x__ {_ServerInfo'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ServerInfo "state" ServerInfo'State where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ServerInfo'state (\ x__ y__ -> x__ {_ServerInfo'state = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ServerInfo "uptimeCurrentEpoch" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ServerInfo'uptimeCurrentEpoch
           (\ x__ y__ -> x__ {_ServerInfo'uptimeCurrentEpoch = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ServerInfo "maybe'uptimeCurrentEpoch" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ServerInfo'uptimeCurrentEpoch
           (\ x__ y__ -> x__ {_ServerInfo'uptimeCurrentEpoch = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ServerInfo "uptimeAllEpochs" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ServerInfo'uptimeAllEpochs
           (\ x__ y__ -> x__ {_ServerInfo'uptimeAllEpochs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ServerInfo "maybe'uptimeAllEpochs" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ServerInfo'uptimeAllEpochs
           (\ x__ y__ -> x__ {_ServerInfo'uptimeAllEpochs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ServerInfo "hotRestartVersion" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ServerInfo'hotRestartVersion
           (\ x__ y__ -> x__ {_ServerInfo'hotRestartVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ServerInfo "commandLineOptions" CommandLineOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ServerInfo'commandLineOptions
           (\ x__ y__ -> x__ {_ServerInfo'commandLineOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ServerInfo "maybe'commandLineOptions" (Prelude.Maybe CommandLineOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ServerInfo'commandLineOptions
           (\ x__ y__ -> x__ {_ServerInfo'commandLineOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ServerInfo "node" Proto.Envoy.Config.Core.V3.Base.Node where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ServerInfo'node (\ x__ y__ -> x__ {_ServerInfo'node = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ServerInfo "maybe'node" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ServerInfo'node (\ x__ y__ -> x__ {_ServerInfo'node = y__}))
        Prelude.id
instance Data.ProtoLens.Message ServerInfo where
  messageName _ = Data.Text.pack "envoy.admin.v3.ServerInfo"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \ServerInfo\DC2\CAN\n\
      \\aversion\CAN\SOH \SOH(\tR\aversion\DC26\n\
      \\ENQstate\CAN\STX \SOH(\SO2 .envoy.admin.v3.ServerInfo.StateR\ENQstate\DC2K\n\
      \\DC4uptime_current_epoch\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\DC2uptimeCurrentEpoch\DC2E\n\
      \\DC1uptime_all_epochs\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\SIuptimeAllEpochs\DC2.\n\
      \\DC3hot_restart_version\CAN\ENQ \SOH(\tR\DC1hotRestartVersion\DC2T\n\
      \\DC4command_line_options\CAN\ACK \SOH(\v2\".envoy.admin.v3.CommandLineOptionsR\DC2commandLineOptions\DC2.\n\
      \\EOTnode\CAN\a \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnode\"G\n\
      \\ENQState\DC2\b\n\
      \\EOTLIVE\DLE\NUL\DC2\f\n\
      \\bDRAINING\DLE\SOH\DC2\DC4\n\
      \\DLEPRE_INITIALIZING\DLE\STX\DC2\DLE\n\
      \\fINITIALIZING\DLE\ETX:%\154\197\136\RS \n\
      \\RSenvoy.admin.v2alpha.ServerInfo"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor ServerInfo
        state__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ServerInfo'State)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"state")) ::
              Data.ProtoLens.FieldDescriptor ServerInfo
        uptimeCurrentEpoch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uptime_current_epoch"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'uptimeCurrentEpoch")) ::
              Data.ProtoLens.FieldDescriptor ServerInfo
        uptimeAllEpochs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uptime_all_epochs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'uptimeAllEpochs")) ::
              Data.ProtoLens.FieldDescriptor ServerInfo
        hotRestartVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hot_restart_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"hotRestartVersion")) ::
              Data.ProtoLens.FieldDescriptor ServerInfo
        commandLineOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "command_line_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CommandLineOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commandLineOptions")) ::
              Data.ProtoLens.FieldDescriptor ServerInfo
        node__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "node"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.Node)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'node")) ::
              Data.ProtoLens.FieldDescriptor ServerInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, version__field_descriptor),
           (Data.ProtoLens.Tag 2, state__field_descriptor),
           (Data.ProtoLens.Tag 3, uptimeCurrentEpoch__field_descriptor),
           (Data.ProtoLens.Tag 4, uptimeAllEpochs__field_descriptor),
           (Data.ProtoLens.Tag 5, hotRestartVersion__field_descriptor),
           (Data.ProtoLens.Tag 6, commandLineOptions__field_descriptor),
           (Data.ProtoLens.Tag 7, node__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ServerInfo'_unknownFields
        (\ x__ y__ -> x__ {_ServerInfo'_unknownFields = y__})
  defMessage
    = ServerInfo'_constructor
        {_ServerInfo'version = Data.ProtoLens.fieldDefault,
         _ServerInfo'state = Data.ProtoLens.fieldDefault,
         _ServerInfo'uptimeCurrentEpoch = Prelude.Nothing,
         _ServerInfo'uptimeAllEpochs = Prelude.Nothing,
         _ServerInfo'hotRestartVersion = Data.ProtoLens.fieldDefault,
         _ServerInfo'commandLineOptions = Prelude.Nothing,
         _ServerInfo'node = Prelude.Nothing,
         _ServerInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ServerInfo -> Data.ProtoLens.Encoding.Bytes.Parser ServerInfo
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
                                       "version"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "state"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"state") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "uptime_current_epoch"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"uptimeCurrentEpoch") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "uptime_all_epochs"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"uptimeAllEpochs") y x)
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
                                       "hot_restart_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"hotRestartVersion") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "command_line_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"commandLineOptions") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "node"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"node") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ServerInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"version") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"state") _x
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
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'uptimeCurrentEpoch") _x
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
                             (Data.ProtoLens.Field.field @"maybe'uptimeAllEpochs") _x
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
                                  (Data.ProtoLens.Field.field @"hotRestartVersion") _x
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
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'commandLineOptions") _x
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
                               (case
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'node") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage
                                            _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData ServerInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ServerInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ServerInfo'version x__)
                (Control.DeepSeq.deepseq
                   (_ServerInfo'state x__)
                   (Control.DeepSeq.deepseq
                      (_ServerInfo'uptimeCurrentEpoch x__)
                      (Control.DeepSeq.deepseq
                         (_ServerInfo'uptimeAllEpochs x__)
                         (Control.DeepSeq.deepseq
                            (_ServerInfo'hotRestartVersion x__)
                            (Control.DeepSeq.deepseq
                               (_ServerInfo'commandLineOptions x__)
                               (Control.DeepSeq.deepseq (_ServerInfo'node x__) ())))))))
newtype ServerInfo'State'UnrecognizedValue
  = ServerInfo'State'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ServerInfo'State
  = ServerInfo'LIVE |
    ServerInfo'DRAINING |
    ServerInfo'PRE_INITIALIZING |
    ServerInfo'INITIALIZING |
    ServerInfo'State'Unrecognized !ServerInfo'State'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ServerInfo'State where
  maybeToEnum 0 = Prelude.Just ServerInfo'LIVE
  maybeToEnum 1 = Prelude.Just ServerInfo'DRAINING
  maybeToEnum 2 = Prelude.Just ServerInfo'PRE_INITIALIZING
  maybeToEnum 3 = Prelude.Just ServerInfo'INITIALIZING
  maybeToEnum k
    = Prelude.Just
        (ServerInfo'State'Unrecognized
           (ServerInfo'State'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum ServerInfo'LIVE = "LIVE"
  showEnum ServerInfo'DRAINING = "DRAINING"
  showEnum ServerInfo'PRE_INITIALIZING = "PRE_INITIALIZING"
  showEnum ServerInfo'INITIALIZING = "INITIALIZING"
  showEnum
    (ServerInfo'State'Unrecognized (ServerInfo'State'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "LIVE" = Prelude.Just ServerInfo'LIVE
    | (Prelude.==) k "DRAINING" = Prelude.Just ServerInfo'DRAINING
    | (Prelude.==) k "PRE_INITIALIZING"
    = Prelude.Just ServerInfo'PRE_INITIALIZING
    | (Prelude.==) k "INITIALIZING"
    = Prelude.Just ServerInfo'INITIALIZING
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ServerInfo'State where
  minBound = ServerInfo'LIVE
  maxBound = ServerInfo'INITIALIZING
instance Prelude.Enum ServerInfo'State where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum State: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum ServerInfo'LIVE = 0
  fromEnum ServerInfo'DRAINING = 1
  fromEnum ServerInfo'PRE_INITIALIZING = 2
  fromEnum ServerInfo'INITIALIZING = 3
  fromEnum
    (ServerInfo'State'Unrecognized (ServerInfo'State'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ ServerInfo'INITIALIZING
    = Prelude.error
        "ServerInfo'State.succ: bad argument ServerInfo'INITIALIZING. This value would be out of bounds."
  succ ServerInfo'LIVE = ServerInfo'DRAINING
  succ ServerInfo'DRAINING = ServerInfo'PRE_INITIALIZING
  succ ServerInfo'PRE_INITIALIZING = ServerInfo'INITIALIZING
  succ (ServerInfo'State'Unrecognized _)
    = Prelude.error
        "ServerInfo'State.succ: bad argument: unrecognized value"
  pred ServerInfo'LIVE
    = Prelude.error
        "ServerInfo'State.pred: bad argument ServerInfo'LIVE. This value would be out of bounds."
  pred ServerInfo'DRAINING = ServerInfo'LIVE
  pred ServerInfo'PRE_INITIALIZING = ServerInfo'DRAINING
  pred ServerInfo'INITIALIZING = ServerInfo'PRE_INITIALIZING
  pred (ServerInfo'State'Unrecognized _)
    = Prelude.error
        "ServerInfo'State.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ServerInfo'State where
  fieldDefault = ServerInfo'LIVE
instance Control.DeepSeq.NFData ServerInfo'State where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \ envoy/admin/v3/server_info.proto\DC2\SOenvoy.admin.v3\SUB\USenvoy/config/core/v3/base.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"\152\EOT\n\
    \\n\
    \ServerInfo\DC2\CAN\n\
    \\aversion\CAN\SOH \SOH(\tR\aversion\DC26\n\
    \\ENQstate\CAN\STX \SOH(\SO2 .envoy.admin.v3.ServerInfo.StateR\ENQstate\DC2K\n\
    \\DC4uptime_current_epoch\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\DC2uptimeCurrentEpoch\DC2E\n\
    \\DC1uptime_all_epochs\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\SIuptimeAllEpochs\DC2.\n\
    \\DC3hot_restart_version\CAN\ENQ \SOH(\tR\DC1hotRestartVersion\DC2T\n\
    \\DC4command_line_options\CAN\ACK \SOH(\v2\".envoy.admin.v3.CommandLineOptionsR\DC2commandLineOptions\DC2.\n\
    \\EOTnode\CAN\a \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnode\"G\n\
    \\ENQState\DC2\b\n\
    \\EOTLIVE\DLE\NUL\DC2\f\n\
    \\bDRAINING\DLE\SOH\DC2\DC4\n\
    \\DLEPRE_INITIALIZING\DLE\STX\DC2\DLE\n\
    \\fINITIALIZING\DLE\ETX:%\154\197\136\RS \n\
    \\RSenvoy.admin.v2alpha.ServerInfo\"\210\SO\n\
    \\DC2CommandLineOptions\DC2\ETB\n\
    \\abase_id\CAN\SOH \SOH(\EOTR\ACKbaseId\DC2-\n\
    \\DC3use_dynamic_base_id\CAN\US \SOH(\bR\DLEuseDynamicBaseId\DC2 \n\
    \\fbase_id_path\CAN  \SOH(\tR\n\
    \baseIdPath\DC2 \n\
    \\vconcurrency\CAN\STX \SOH(\rR\vconcurrency\DC2\US\n\
    \\vconfig_path\CAN\ETX \SOH(\tR\n\
    \configPath\DC2\US\n\
    \\vconfig_yaml\CAN\EOT \SOH(\tR\n\
    \configYaml\DC2=\n\
    \\ESCallow_unknown_static_fields\CAN\ENQ \SOH(\bR\CANallowUnknownStaticFields\DC2A\n\
    \\GSreject_unknown_dynamic_fields\CAN\SUB \SOH(\bR\SUBrejectUnknownDynamicFields\DC2A\n\
    \\GSignore_unknown_dynamic_fields\CAN\RS \SOH(\bR\SUBignoreUnknownDynamicFields\DC2,\n\
    \\DC2admin_address_path\CAN\ACK \SOH(\tR\DLEadminAddressPath\DC2e\n\
    \\CANlocal_address_ip_version\CAN\a \SOH(\SO2,.envoy.admin.v3.CommandLineOptions.IpVersionR\NAKlocalAddressIpVersion\DC2\ESC\n\
    \\tlog_level\CAN\b \SOH(\tR\blogLevel\DC2.\n\
    \\DC3component_log_level\CAN\t \SOH(\tR\DC1componentLogLevel\DC2\GS\n\
    \\n\
    \log_format\CAN\n\
    \ \SOH(\tR\tlogFormat\DC2,\n\
    \\DC2log_format_escaped\CAN\ESC \SOH(\bR\DLElogFormatEscaped\DC2\EM\n\
    \\blog_path\CAN\v \SOH(\tR\alogPath\DC2'\n\
    \\SIservice_cluster\CAN\r \SOH(\tR\SOserviceCluster\DC2!\n\
    \\fservice_node\CAN\SO \SOH(\tR\vserviceNode\DC2!\n\
    \\fservice_zone\CAN\SI \SOH(\tR\vserviceZone\DC2I\n\
    \\DC3file_flush_interval\CAN\DLE \SOH(\v2\EM.google.protobuf.DurationR\DC1fileFlushInterval\DC28\n\
    \\n\
    \drain_time\CAN\DC1 \SOH(\v2\EM.google.protobuf.DurationR\tdrainTime\DC2W\n\
    \\SOdrain_strategy\CAN! \SOH(\SO20.envoy.admin.v3.CommandLineOptions.DrainStrategyR\rdrainStrategy\DC2K\n\
    \\DC4parent_shutdown_time\CAN\DC2 \SOH(\v2\EM.google.protobuf.DurationR\DC2parentShutdownTime\DC2;\n\
    \\EOTmode\CAN\DC3 \SOH(\SO2'.envoy.admin.v3.CommandLineOptions.ModeR\EOTmode\DC2.\n\
    \\DC3disable_hot_restart\CAN\SYN \SOH(\bR\DC1disableHotRestart\DC20\n\
    \\DC4enable_mutex_tracing\CAN\ETB \SOH(\bR\DC2enableMutexTracing\DC2#\n\
    \\rrestart_epoch\CAN\CAN \SOH(\rR\frestartEpoch\DC2%\n\
    \\SOcpuset_threads\CAN\EM \SOH(\bR\rcpusetThreads\DC2/\n\
    \\DC3disabled_extensions\CAN\FS \ETX(\tR\DC2disabledExtensions\DC2+\n\
    \\DC1bootstrap_version\CAN\GS \SOH(\rR\DLEbootstrapVersion\DC29\n\
    \\EMenable_fine_grain_logging\CAN\" \SOH(\bR\SYNenableFineGrainLogging\DC2\US\n\
    \\vsocket_path\CAN# \SOH(\tR\n\
    \socketPath\DC2\US\n\
    \\vsocket_mode\CAN$ \SOH(\rR\n\
    \socketMode\DC2(\n\
    \\DLEenable_core_dump\CAN% \SOH(\bR\SOenableCoreDump\"\ESC\n\
    \\tIpVersion\DC2\ACK\n\
    \\STXv4\DLE\NUL\DC2\ACK\n\
    \\STXv6\DLE\SOH\"-\n\
    \\EOTMode\DC2\t\n\
    \\ENQServe\DLE\NUL\DC2\f\n\
    \\bValidate\DLE\SOH\DC2\f\n\
    \\bInitOnly\DLE\STX\"+\n\
    \\rDrainStrategy\DC2\v\n\
    \\aGradual\DLE\NUL\DC2\r\n\
    \\tImmediate\DLE\SOH:-\154\197\136\RS(\n\
    \&envoy.admin.v2alpha.CommandLineOptionsJ\EOT\b\f\DLE\rJ\EOT\b\DC4\DLE\NAKJ\EOT\b\NAK\DLE\SYNR\tmax_statsR\DLEmax_obj_name_lenB9\n\
    \\FSio.envoyproxy.envoy.admin.v3B\SIServerInfoProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\251/\n\
    \\a\DC2\ENQ\NUL\NUL\194\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\ETB\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL5\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NUL5\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL0\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL0\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\r\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SO\NULF\n\
    \\186\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\NAK\NUL:\SOH\SUB\138\SOH Proto representation of the value returned by /server_info, containing\n\
    \ server version/server status information.\n\
    \ [#next-free-field: 8]\n\
    \2! [#protodoc-title: Server State]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\NAK\b\DC2\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\SYN\STX`\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\SYN\STX`\n\
    \\f\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT\CAN\STX$\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX\CAN\a\f\n\
    \4\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX\SUB\EOT\r\SUB% Server is live and serving traffic.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX\SUB\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX\SUB\v\f\n\
    \\\\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX\GS\EOT\DC1\SUBM Server is draining listeners in response to external health checks failing.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX\GS\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX\GS\SI\DLE\n\
    \M\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETX \EOT\EM\SUB> Server has not yet completed cluster manager initialization.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX \EOT\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETX \ETB\CAN\n\
    \\\\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\ETX\DC2\ETX#\EOT\NAK\SUBM Server is running the cluster manager initialization callbacks (e.g., RDS).\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\SOH\DC2\ETX#\EOT\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\STX\DC2\ETX#\DC3\DC4\n\
    \\RS\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX'\STX\NAK\SUB\DC1 Server version.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX'\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX'\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX'\DC3\DC4\n\
    \#\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX*\STX\DC2\SUB\SYN State of the server.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX*\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX*\b\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX*\DLE\DC1\n\
    \6\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX-\STX4\SUB) Uptime since current epoch was started.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX-\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX-\ESC/\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX-23\n\
    \9\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX0\STX1\SUB, Uptime since the start of the first epoch.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX0\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX0\ESC,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX0/0\n\
    \#\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX3\STX!\SUB\SYN Hot restart version.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX3\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX3\t\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX3\US \n\
    \I\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX6\STX.\SUB< Command line options the server is currently running with.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX6\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX6\NAK)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX6,-\n\
    \6\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX9\STX\US\SUB) Populated node identity of this server.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETX9\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX9\SYN\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX9\GS\RS\n\
    \%\n\
    \\STX\EOT\SOH\DC2\ENQ=\NUL\194\SOH\SOH\SUB\CAN [#next-free-field: 38]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX=\b\SUB\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT>\STX?/\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT>\STX?/\n\
    \\f\n\
    \\EOT\EOT\SOH\EOT\NUL\DC2\EOTA\STXD\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\EOT\NUL\SOH\DC2\ETXA\a\DLE\n\
    \\r\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\NUL\DC2\ETXB\EOT\v\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\NUL\SOH\DC2\ETXB\EOT\ACK\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\NUL\STX\DC2\ETXB\t\n\
    \\n\
    \\r\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\SOH\DC2\ETXC\EOT\v\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\SOH\SOH\DC2\ETXC\EOT\ACK\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\SOH\STX\DC2\ETXC\t\n\
    \\n\
    \\f\n\
    \\EOT\EOT\SOH\EOT\SOH\DC2\EOTF\STXO\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\EOT\SOH\SOH\DC2\ETXF\a\v\n\
    \B\n\
    \\ACK\EOT\SOH\EOT\SOH\STX\NUL\DC2\ETXH\EOT\SO\SUB3 Validate configs and then serve traffic normally.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\SOH\STX\NUL\SOH\DC2\ETXH\EOT\t\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\SOH\STX\NUL\STX\DC2\ETXH\f\r\n\
    \+\n\
    \\ACK\EOT\SOH\EOT\SOH\STX\SOH\DC2\ETXK\EOT\DC1\SUB\FS Validate configs and exit.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\SOH\STX\SOH\SOH\DC2\ETXK\EOT\f\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\SOH\STX\SOH\STX\DC2\ETXK\SI\DLE\n\
    \l\n\
    \\ACK\EOT\SOH\EOT\SOH\STX\STX\DC2\ETXN\EOT\DC1\SUB] Completely load and initialize the config, and then exit without running the listener loop.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\SOH\STX\STX\SOH\DC2\ETXN\EOT\f\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\SOH\STX\STX\STX\DC2\ETXN\SI\DLE\n\
    \\f\n\
    \\EOT\EOT\SOH\EOT\STX\DC2\EOTQ\STXW\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\EOT\STX\SOH\DC2\ETXQ\a\DC4\n\
    \V\n\
    \\ACK\EOT\SOH\EOT\STX\STX\NUL\DC2\ETXS\EOT\DLE\SUBG Gradually discourage connections over the course of the drain period.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\STX\STX\NUL\SOH\DC2\ETXS\EOT\v\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\STX\STX\NUL\STX\DC2\ETXS\SO\SI\n\
    \S\n\
    \\ACK\EOT\SOH\EOT\STX\STX\SOH\DC2\ETXV\EOT\DC2\SUBD Discourage all connections for the duration of the drain sequence.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\STX\STX\SOH\SOH\DC2\ETXV\EOT\r\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\STX\STX\SOH\STX\DC2\ETXV\DLE\DC1\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\t\DC2\ETXY\STX\SYN\n\
    \\v\n\
    \\EOT\EOT\SOH\t\NUL\DC2\ETXY\v\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\NUL\SOH\DC2\ETXY\v\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\NUL\STX\DC2\ETXY\v\r\n\
    \\v\n\
    \\EOT\EOT\SOH\t\SOH\DC2\ETXY\SI\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\SOH\SOH\DC2\ETXY\SI\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\SOH\STX\DC2\ETXY\SI\DC1\n\
    \\v\n\
    \\EOT\EOT\SOH\t\STX\DC2\ETXY\DC3\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\STX\SOH\DC2\ETXY\DC3\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\STX\STX\DC2\ETXY\DC3\NAK\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\n\
    \\DC2\ETX[\STX+\n\
    \\v\n\
    \\EOT\EOT\SOH\n\
    \\NUL\DC2\ETX[\v\SYN\n\
    \\v\n\
    \\EOT\EOT\SOH\n\
    \\SOH\DC2\ETX[\CAN*\n\
    \3\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX^\STX\NAK\SUB& See :option:`--base-id` for details.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX^\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX^\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX^\DC3\DC4\n\
    \?\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXa\STX \SUB2 See :option:`--use-dynamic-base-id` for details.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETXa\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXa\a\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXa\GS\US\n\
    \8\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETXd\STX\ESC\SUB+ See :option:`--base-id-path` for details.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETXd\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETXd\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETXd\CAN\SUB\n\
    \7\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETXg\STX\EM\SUB* See :option:`--concurrency` for details.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETXg\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETXg\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETXg\ETB\CAN\n\
    \7\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETXj\STX\EM\SUB* See :option:`--config-path` for details.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETXj\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETXj\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETXj\ETB\CAN\n\
    \7\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETXm\STX\EM\SUB* See :option:`--config-yaml` for details.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ENQ\DC2\ETXm\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETXm\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETXm\ETB\CAN\n\
    \G\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETXp\STX'\SUB: See :option:`--allow-unknown-static-fields` for details.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ENQ\DC2\ETXp\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETXp\a\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETXp%&\n\
    \I\n\
    \\EOT\EOT\SOH\STX\a\DC2\ETXs\STX*\SUB< See :option:`--reject-unknown-dynamic-fields` for details.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ENQ\DC2\ETXs\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\ETXs\a$\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\ETXs')\n\
    \I\n\
    \\EOT\EOT\SOH\STX\b\DC2\ETXv\STX*\SUB< See :option:`--ignore-unknown-dynamic-fields` for details.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ENQ\DC2\ETXv\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\SOH\DC2\ETXv\a$\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ETX\DC2\ETXv')\n\
    \>\n\
    \\EOT\EOT\SOH\STX\t\DC2\ETXy\STX \SUB1 See :option:`--admin-address-path` for details.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\ENQ\DC2\ETXy\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\SOH\DC2\ETXy\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\ETX\DC2\ETXy\RS\US\n\
    \D\n\
    \\EOT\EOT\SOH\STX\n\
    \\DC2\ETX|\STX)\SUB7 See :option:`--local-address-ip-version` for details.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ACK\DC2\ETX|\STX\v\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\n\
    \\SOH\DC2\ETX|\f$\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ETX\DC2\ETX|'(\n\
    \5\n\
    \\EOT\EOT\SOH\STX\v\DC2\ETX\DEL\STX\ETB\SUB( See :option:`--log-level` for details.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\v\ENQ\DC2\ETX\DEL\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\v\SOH\DC2\ETX\DEL\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\v\ETX\DC2\ETX\DEL\NAK\SYN\n\
    \@\n\
    \\EOT\EOT\SOH\STX\f\DC2\EOT\130\SOH\STX!\SUB2 See :option:`--component-log-level` for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\f\ENQ\DC2\EOT\130\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\f\SOH\DC2\EOT\130\SOH\t\FS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\f\ETX\DC2\EOT\130\SOH\US \n\
    \7\n\
    \\EOT\EOT\SOH\STX\r\DC2\EOT\133\SOH\STX\EM\SUB) See :option:`--log-format` for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\r\ENQ\DC2\EOT\133\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\r\SOH\DC2\EOT\133\SOH\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\r\ETX\DC2\EOT\133\SOH\SYN\CAN\n\
    \?\n\
    \\EOT\EOT\SOH\STX\SO\DC2\EOT\136\SOH\STX\US\SUB1 See :option:`--log-format-escaped` for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SO\ENQ\DC2\EOT\136\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SO\SOH\DC2\EOT\136\SOH\a\EM\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SO\ETX\DC2\EOT\136\SOH\FS\RS\n\
    \5\n\
    \\EOT\EOT\SOH\STX\SI\DC2\EOT\139\SOH\STX\ETB\SUB' See :option:`--log-path` for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SI\ENQ\DC2\EOT\139\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SI\SOH\DC2\EOT\139\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SI\ETX\DC2\EOT\139\SOH\DC4\SYN\n\
    \<\n\
    \\EOT\EOT\SOH\STX\DLE\DC2\EOT\142\SOH\STX\RS\SUB. See :option:`--service-cluster` for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DLE\ENQ\DC2\EOT\142\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DLE\SOH\DC2\EOT\142\SOH\t\CAN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DLE\ETX\DC2\EOT\142\SOH\ESC\GS\n\
    \9\n\
    \\EOT\EOT\SOH\STX\DC1\DC2\EOT\145\SOH\STX\ESC\SUB+ See :option:`--service-node` for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC1\ENQ\DC2\EOT\145\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC1\SOH\DC2\EOT\145\SOH\t\NAK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC1\ETX\DC2\EOT\145\SOH\CAN\SUB\n\
    \9\n\
    \\EOT\EOT\SOH\STX\DC2\DC2\EOT\148\SOH\STX\ESC\SUB+ See :option:`--service-zone` for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC2\ENQ\DC2\EOT\148\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC2\SOH\DC2\EOT\148\SOH\t\NAK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC2\ETX\DC2\EOT\148\SOH\CAN\SUB\n\
    \E\n\
    \\EOT\EOT\SOH\STX\DC3\DC2\EOT\151\SOH\STX4\SUB7 See :option:`--file-flush-interval-msec` for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC3\ACK\DC2\EOT\151\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC3\SOH\DC2\EOT\151\SOH\ESC.\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC3\ETX\DC2\EOT\151\SOH13\n\
    \9\n\
    \\EOT\EOT\SOH\STX\DC4\DC2\EOT\154\SOH\STX+\SUB+ See :option:`--drain-time-s` for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC4\ACK\DC2\EOT\154\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC4\SOH\DC2\EOT\154\SOH\ESC%\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC4\ETX\DC2\EOT\154\SOH(*\n\
    \;\n\
    \\EOT\EOT\SOH\STX\NAK\DC2\EOT\157\SOH\STX$\SUB- See :option:`--drain-strategy` for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NAK\ACK\DC2\EOT\157\SOH\STX\SI\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NAK\SOH\DC2\EOT\157\SOH\DLE\RS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NAK\ETX\DC2\EOT\157\SOH!#\n\
    \C\n\
    \\EOT\EOT\SOH\STX\SYN\DC2\EOT\160\SOH\STX5\SUB5 See :option:`--parent-shutdown-time-s` for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SYN\ACK\DC2\EOT\160\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SYN\SOH\DC2\EOT\160\SOH\ESC/\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SYN\ETX\DC2\EOT\160\SOH24\n\
    \1\n\
    \\EOT\EOT\SOH\STX\ETB\DC2\EOT\163\SOH\STX\DC1\SUB# See :option:`--mode` for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETB\ACK\DC2\EOT\163\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETB\SOH\DC2\EOT\163\SOH\a\v\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETB\ETX\DC2\EOT\163\SOH\SO\DLE\n\
    \@\n\
    \\EOT\EOT\SOH\STX\CAN\DC2\EOT\166\SOH\STX \SUB2 See :option:`--disable-hot-restart` for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\CAN\ENQ\DC2\EOT\166\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\CAN\SOH\DC2\EOT\166\SOH\a\SUB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\CAN\ETX\DC2\EOT\166\SOH\GS\US\n\
    \A\n\
    \\EOT\EOT\SOH\STX\EM\DC2\EOT\169\SOH\STX!\SUB3 See :option:`--enable-mutex-tracing` for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EM\ENQ\DC2\EOT\169\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EM\SOH\DC2\EOT\169\SOH\a\ESC\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EM\ETX\DC2\EOT\169\SOH\RS \n\
    \:\n\
    \\EOT\EOT\SOH\STX\SUB\DC2\EOT\172\SOH\STX\FS\SUB, See :option:`--restart-epoch` for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SUB\ENQ\DC2\EOT\172\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SUB\SOH\DC2\EOT\172\SOH\t\SYN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SUB\ETX\DC2\EOT\172\SOH\EM\ESC\n\
    \;\n\
    \\EOT\EOT\SOH\STX\ESC\DC2\EOT\175\SOH\STX\ESC\SUB- See :option:`--cpuset-threads` for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ESC\ENQ\DC2\EOT\175\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ESC\SOH\DC2\EOT\175\SOH\a\NAK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ESC\ETX\DC2\EOT\175\SOH\CAN\SUB\n\
    \?\n\
    \\EOT\EOT\SOH\STX\FS\DC2\EOT\178\SOH\STX+\SUB1 See :option:`--disable-extensions` for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\FS\EOT\DC2\EOT\178\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\FS\ENQ\DC2\EOT\178\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\FS\SOH\DC2\EOT\178\SOH\DC2%\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\FS\ETX\DC2\EOT\178\SOH(*\n\
    \>\n\
    \\EOT\EOT\SOH\STX\GS\DC2\EOT\181\SOH\STX \SUB0 See :option:`--bootstrap-version` for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\GS\ENQ\DC2\EOT\181\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\GS\SOH\DC2\EOT\181\SOH\t\SUB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\GS\ETX\DC2\EOT\181\SOH\GS\US\n\
    \F\n\
    \\EOT\EOT\SOH\STX\RS\DC2\EOT\184\SOH\STX&\SUB8 See :option:`--enable-fine-grain-logging` for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\RS\ENQ\DC2\EOT\184\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\RS\SOH\DC2\EOT\184\SOH\a \n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\RS\ETX\DC2\EOT\184\SOH#%\n\
    \8\n\
    \\EOT\EOT\SOH\STX\US\DC2\EOT\187\SOH\STX\SUB\SUB* See :option:`--socket-path` for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\US\ENQ\DC2\EOT\187\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\US\SOH\DC2\EOT\187\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\US\ETX\DC2\EOT\187\SOH\ETB\EM\n\
    \8\n\
    \\EOT\EOT\SOH\STX \DC2\EOT\190\SOH\STX\SUB\SUB* See :option:`--socket-mode` for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX \ENQ\DC2\EOT\190\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX \SOH\DC2\EOT\190\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX \ETX\DC2\EOT\190\SOH\ETB\EM\n\
    \=\n\
    \\EOT\EOT\SOH\STX!\DC2\EOT\193\SOH\STX\GS\SUB/ See :option:`--enable-core-dump` for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX!\ENQ\DC2\EOT\193\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX!\SOH\DC2\EOT\193\SOH\a\ETB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX!\ETX\DC2\EOT\193\SOH\SUB\FSb\ACKproto3"