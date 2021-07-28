{- This file was auto-generated from envoy/admin/v3/server_info.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Admin.V3.ServerInfo_Fields where
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
adminAddressPath ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "adminAddressPath" a) =>
  Lens.Family2.LensLike' f s a
adminAddressPath = Data.ProtoLens.Field.field @"adminAddressPath"
allowUnknownStaticFields ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allowUnknownStaticFields" a) =>
  Lens.Family2.LensLike' f s a
allowUnknownStaticFields
  = Data.ProtoLens.Field.field @"allowUnknownStaticFields"
baseId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "baseId" a) =>
  Lens.Family2.LensLike' f s a
baseId = Data.ProtoLens.Field.field @"baseId"
baseIdPath ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "baseIdPath" a) =>
  Lens.Family2.LensLike' f s a
baseIdPath = Data.ProtoLens.Field.field @"baseIdPath"
bootstrapVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bootstrapVersion" a) =>
  Lens.Family2.LensLike' f s a
bootstrapVersion = Data.ProtoLens.Field.field @"bootstrapVersion"
commandLineOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "commandLineOptions" a) =>
  Lens.Family2.LensLike' f s a
commandLineOptions
  = Data.ProtoLens.Field.field @"commandLineOptions"
componentLogLevel ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "componentLogLevel" a) =>
  Lens.Family2.LensLike' f s a
componentLogLevel = Data.ProtoLens.Field.field @"componentLogLevel"
concurrency ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "concurrency" a) =>
  Lens.Family2.LensLike' f s a
concurrency = Data.ProtoLens.Field.field @"concurrency"
configPath ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "configPath" a) =>
  Lens.Family2.LensLike' f s a
configPath = Data.ProtoLens.Field.field @"configPath"
configYaml ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "configYaml" a) =>
  Lens.Family2.LensLike' f s a
configYaml = Data.ProtoLens.Field.field @"configYaml"
cpusetThreads ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cpusetThreads" a) =>
  Lens.Family2.LensLike' f s a
cpusetThreads = Data.ProtoLens.Field.field @"cpusetThreads"
disableHotRestart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "disableHotRestart" a) =>
  Lens.Family2.LensLike' f s a
disableHotRestart = Data.ProtoLens.Field.field @"disableHotRestart"
disabledExtensions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "disabledExtensions" a) =>
  Lens.Family2.LensLike' f s a
disabledExtensions
  = Data.ProtoLens.Field.field @"disabledExtensions"
drainStrategy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "drainStrategy" a) =>
  Lens.Family2.LensLike' f s a
drainStrategy = Data.ProtoLens.Field.field @"drainStrategy"
drainTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "drainTime" a) =>
  Lens.Family2.LensLike' f s a
drainTime = Data.ProtoLens.Field.field @"drainTime"
enableCoreDump ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "enableCoreDump" a) =>
  Lens.Family2.LensLike' f s a
enableCoreDump = Data.ProtoLens.Field.field @"enableCoreDump"
enableFineGrainLogging ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "enableFineGrainLogging" a) =>
  Lens.Family2.LensLike' f s a
enableFineGrainLogging
  = Data.ProtoLens.Field.field @"enableFineGrainLogging"
enableMutexTracing ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "enableMutexTracing" a) =>
  Lens.Family2.LensLike' f s a
enableMutexTracing
  = Data.ProtoLens.Field.field @"enableMutexTracing"
fileFlushInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fileFlushInterval" a) =>
  Lens.Family2.LensLike' f s a
fileFlushInterval = Data.ProtoLens.Field.field @"fileFlushInterval"
hotRestartVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hotRestartVersion" a) =>
  Lens.Family2.LensLike' f s a
hotRestartVersion = Data.ProtoLens.Field.field @"hotRestartVersion"
ignoreUnknownDynamicFields ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ignoreUnknownDynamicFields" a) =>
  Lens.Family2.LensLike' f s a
ignoreUnknownDynamicFields
  = Data.ProtoLens.Field.field @"ignoreUnknownDynamicFields"
localAddressIpVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "localAddressIpVersion" a) =>
  Lens.Family2.LensLike' f s a
localAddressIpVersion
  = Data.ProtoLens.Field.field @"localAddressIpVersion"
logFormat ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "logFormat" a) =>
  Lens.Family2.LensLike' f s a
logFormat = Data.ProtoLens.Field.field @"logFormat"
logFormatEscaped ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "logFormatEscaped" a) =>
  Lens.Family2.LensLike' f s a
logFormatEscaped = Data.ProtoLens.Field.field @"logFormatEscaped"
logLevel ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "logLevel" a) =>
  Lens.Family2.LensLike' f s a
logLevel = Data.ProtoLens.Field.field @"logLevel"
logPath ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "logPath" a) =>
  Lens.Family2.LensLike' f s a
logPath = Data.ProtoLens.Field.field @"logPath"
maybe'commandLineOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'commandLineOptions" a) =>
  Lens.Family2.LensLike' f s a
maybe'commandLineOptions
  = Data.ProtoLens.Field.field @"maybe'commandLineOptions"
maybe'drainTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'drainTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'drainTime = Data.ProtoLens.Field.field @"maybe'drainTime"
maybe'fileFlushInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fileFlushInterval" a) =>
  Lens.Family2.LensLike' f s a
maybe'fileFlushInterval
  = Data.ProtoLens.Field.field @"maybe'fileFlushInterval"
maybe'node ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'node" a) =>
  Lens.Family2.LensLike' f s a
maybe'node = Data.ProtoLens.Field.field @"maybe'node"
maybe'parentShutdownTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'parentShutdownTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'parentShutdownTime
  = Data.ProtoLens.Field.field @"maybe'parentShutdownTime"
maybe'uptimeAllEpochs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'uptimeAllEpochs" a) =>
  Lens.Family2.LensLike' f s a
maybe'uptimeAllEpochs
  = Data.ProtoLens.Field.field @"maybe'uptimeAllEpochs"
maybe'uptimeCurrentEpoch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'uptimeCurrentEpoch" a) =>
  Lens.Family2.LensLike' f s a
maybe'uptimeCurrentEpoch
  = Data.ProtoLens.Field.field @"maybe'uptimeCurrentEpoch"
mode ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mode" a) =>
  Lens.Family2.LensLike' f s a
mode = Data.ProtoLens.Field.field @"mode"
node ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "node" a) =>
  Lens.Family2.LensLike' f s a
node = Data.ProtoLens.Field.field @"node"
parentShutdownTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "parentShutdownTime" a) =>
  Lens.Family2.LensLike' f s a
parentShutdownTime
  = Data.ProtoLens.Field.field @"parentShutdownTime"
rejectUnknownDynamicFields ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rejectUnknownDynamicFields" a) =>
  Lens.Family2.LensLike' f s a
rejectUnknownDynamicFields
  = Data.ProtoLens.Field.field @"rejectUnknownDynamicFields"
restartEpoch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "restartEpoch" a) =>
  Lens.Family2.LensLike' f s a
restartEpoch = Data.ProtoLens.Field.field @"restartEpoch"
serviceCluster ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "serviceCluster" a) =>
  Lens.Family2.LensLike' f s a
serviceCluster = Data.ProtoLens.Field.field @"serviceCluster"
serviceNode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "serviceNode" a) =>
  Lens.Family2.LensLike' f s a
serviceNode = Data.ProtoLens.Field.field @"serviceNode"
serviceZone ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "serviceZone" a) =>
  Lens.Family2.LensLike' f s a
serviceZone = Data.ProtoLens.Field.field @"serviceZone"
socketMode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "socketMode" a) =>
  Lens.Family2.LensLike' f s a
socketMode = Data.ProtoLens.Field.field @"socketMode"
socketPath ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "socketPath" a) =>
  Lens.Family2.LensLike' f s a
socketPath = Data.ProtoLens.Field.field @"socketPath"
state ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "state" a) =>
  Lens.Family2.LensLike' f s a
state = Data.ProtoLens.Field.field @"state"
uptimeAllEpochs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "uptimeAllEpochs" a) =>
  Lens.Family2.LensLike' f s a
uptimeAllEpochs = Data.ProtoLens.Field.field @"uptimeAllEpochs"
uptimeCurrentEpoch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "uptimeCurrentEpoch" a) =>
  Lens.Family2.LensLike' f s a
uptimeCurrentEpoch
  = Data.ProtoLens.Field.field @"uptimeCurrentEpoch"
useDynamicBaseId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "useDynamicBaseId" a) =>
  Lens.Family2.LensLike' f s a
useDynamicBaseId = Data.ProtoLens.Field.field @"useDynamicBaseId"
vec'disabledExtensions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'disabledExtensions" a) =>
  Lens.Family2.LensLike' f s a
vec'disabledExtensions
  = Data.ProtoLens.Field.field @"vec'disabledExtensions"
version ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "version" a) =>
  Lens.Family2.LensLike' f s a
version = Data.ProtoLens.Field.field @"version"