{- This file was auto-generated from envoy/config/bootstrap/v3/bootstrap.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Bootstrap.V3.Bootstrap (
        Admin(), Bootstrap(), Bootstrap'StatsFlush(..),
        _Bootstrap'StatsFlushOnAdmin,
        Bootstrap'CertificateProviderInstancesEntry(),
        Bootstrap'DynamicResources(), Bootstrap'StaticResources(),
        ClusterManager(), ClusterManager'OutlierDetection(), FatalAction(),
        LayeredRuntime(), Runtime(), RuntimeLayer(),
        RuntimeLayer'LayerSpecifier(..), _RuntimeLayer'StaticLayer,
        _RuntimeLayer'DiskLayer', _RuntimeLayer'AdminLayer',
        _RuntimeLayer'RtdsLayer', RuntimeLayer'AdminLayer(),
        RuntimeLayer'DiskLayer(), RuntimeLayer'RtdsLayer(), Watchdog(),
        Watchdog'WatchdogAction(),
        Watchdog'WatchdogAction'WatchdogEvent(..),
        Watchdog'WatchdogAction'WatchdogEvent(),
        Watchdog'WatchdogAction'WatchdogEvent'UnrecognizedValue,
        Watchdogs()
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
import qualified Proto.Envoy.Config.Accesslog.V3.Accesslog
import qualified Proto.Envoy.Config.Cluster.V3.Cluster
import qualified Proto.Envoy.Config.Core.V3.Address
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Config.Core.V3.ConfigSource
import qualified Proto.Envoy.Config.Core.V3.EventServiceConfig
import qualified Proto.Envoy.Config.Core.V3.Extension
import qualified Proto.Envoy.Config.Core.V3.Resolver
import qualified Proto.Envoy.Config.Core.V3.SocketOption
import qualified Proto.Envoy.Config.Listener.V3.Listener
import qualified Proto.Envoy.Config.Metrics.V3.Stats
import qualified Proto.Envoy.Config.Overload.V3.Overload
import qualified Proto.Envoy.Config.Trace.V3.HttpTracer
import qualified Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret
import qualified Proto.Envoy.Type.V3.Percent
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Struct
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Security
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.accessLog' @:: Lens' Admin [Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog]@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.vec'accessLog' @:: Lens' Admin (Data.Vector.Vector Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.accessLogPath' @:: Lens' Admin Data.Text.Text@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.profilePath' @:: Lens' Admin Data.Text.Text@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.address' @:: Lens' Admin Proto.Envoy.Config.Core.V3.Address.Address@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'address' @:: Lens' Admin (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.socketOptions' @:: Lens' Admin [Proto.Envoy.Config.Core.V3.SocketOption.SocketOption]@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.vec'socketOptions' @:: Lens' Admin (Data.Vector.Vector Proto.Envoy.Config.Core.V3.SocketOption.SocketOption)@ -}
data Admin
  = Admin'_constructor {_Admin'accessLog :: !(Data.Vector.Vector Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog),
                        _Admin'accessLogPath :: !Data.Text.Text,
                        _Admin'profilePath :: !Data.Text.Text,
                        _Admin'address :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address),
                        _Admin'socketOptions :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.SocketOption.SocketOption),
                        _Admin'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Admin where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Admin "accessLog" [Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Admin'accessLog (\ x__ y__ -> x__ {_Admin'accessLog = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Admin "vec'accessLog" (Data.Vector.Vector Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Admin'accessLog (\ x__ y__ -> x__ {_Admin'accessLog = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Admin "accessLogPath" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Admin'accessLogPath
           (\ x__ y__ -> x__ {_Admin'accessLogPath = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Admin "profilePath" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Admin'profilePath (\ x__ y__ -> x__ {_Admin'profilePath = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Admin "address" Proto.Envoy.Config.Core.V3.Address.Address where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Admin'address (\ x__ y__ -> x__ {_Admin'address = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Admin "maybe'address" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Admin'address (\ x__ y__ -> x__ {_Admin'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Admin "socketOptions" [Proto.Envoy.Config.Core.V3.SocketOption.SocketOption] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Admin'socketOptions
           (\ x__ y__ -> x__ {_Admin'socketOptions = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Admin "vec'socketOptions" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.SocketOption.SocketOption) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Admin'socketOptions
           (\ x__ y__ -> x__ {_Admin'socketOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Message Admin where
  messageName _ = Data.Text.pack "envoy.config.bootstrap.v3.Admin"
  packedMessageDescriptor _
    = "\n\
      \\ENQAdmin\DC2C\n\
      \\n\
      \access_log\CAN\ENQ \ETX(\v2$.envoy.config.accesslog.v3.AccessLogR\taccessLog\DC23\n\
      \\SIaccess_log_path\CAN\SOH \SOH(\tR\raccessLogPathB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2!\n\
      \\fprofile_path\CAN\STX \SOH(\tR\vprofilePath\DC27\n\
      \\aaddress\CAN\ETX \SOH(\v2\GS.envoy.config.core.v3.AddressR\aaddress\DC2I\n\
      \\SOsocket_options\CAN\EOT \ETX(\v2\".envoy.config.core.v3.SocketOptionR\rsocketOptions:&\154\197\136\RS!\n\
      \\USenvoy.config.bootstrap.v2.Admin"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        accessLog__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "access_log"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"accessLog")) ::
              Data.ProtoLens.FieldDescriptor Admin
        accessLogPath__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "access_log_path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"accessLogPath")) ::
              Data.ProtoLens.FieldDescriptor Admin
        profilePath__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "profile_path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"profilePath")) ::
              Data.ProtoLens.FieldDescriptor Admin
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.Address)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'address")) ::
              Data.ProtoLens.FieldDescriptor Admin
        socketOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "socket_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.SocketOption.SocketOption)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"socketOptions")) ::
              Data.ProtoLens.FieldDescriptor Admin
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 5, accessLog__field_descriptor),
           (Data.ProtoLens.Tag 1, accessLogPath__field_descriptor),
           (Data.ProtoLens.Tag 2, profilePath__field_descriptor),
           (Data.ProtoLens.Tag 3, address__field_descriptor),
           (Data.ProtoLens.Tag 4, socketOptions__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Admin'_unknownFields
        (\ x__ y__ -> x__ {_Admin'_unknownFields = y__})
  defMessage
    = Admin'_constructor
        {_Admin'accessLog = Data.Vector.Generic.empty,
         _Admin'accessLogPath = Data.ProtoLens.fieldDefault,
         _Admin'profilePath = Data.ProtoLens.fieldDefault,
         _Admin'address = Prelude.Nothing,
         _Admin'socketOptions = Data.Vector.Generic.empty,
         _Admin'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Admin
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.SocketOption.SocketOption
                -> Data.ProtoLens.Encoding.Bytes.Parser Admin
        loop x mutable'accessLog mutable'socketOptions
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'accessLog <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'accessLog)
                      frozen'socketOptions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'socketOptions)
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
                              (Data.ProtoLens.Field.field @"vec'accessLog")
                              frozen'accessLog
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'socketOptions")
                                 frozen'socketOptions
                                 x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "access_log"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'accessLog y)
                                loop x v mutable'socketOptions
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
                                       "access_log_path"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"accessLogPath") y x)
                                  mutable'accessLog
                                  mutable'socketOptions
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
                                       "profile_path"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"profilePath") y x)
                                  mutable'accessLog
                                  mutable'socketOptions
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
                                  mutable'accessLog
                                  mutable'socketOptions
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "socket_options"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'socketOptions y)
                                loop x mutable'accessLog v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'accessLog
                                  mutable'socketOptions
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'accessLog <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              mutable'socketOptions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'accessLog mutable'socketOptions)
          "Admin"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
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
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'accessLog") _x))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"accessLogPath") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"profilePath") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'address") _x
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
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.ProtoLens.encodeMessage
                                       _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'socketOptions") _x))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData Admin where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Admin'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Admin'accessLog x__)
                (Control.DeepSeq.deepseq
                   (_Admin'accessLogPath x__)
                   (Control.DeepSeq.deepseq
                      (_Admin'profilePath x__)
                      (Control.DeepSeq.deepseq
                         (_Admin'address x__)
                         (Control.DeepSeq.deepseq (_Admin'socketOptions x__) ())))))
{- | Fields :
     
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.node' @:: Lens' Bootstrap Proto.Envoy.Config.Core.V3.Base.Node@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'node' @:: Lens' Bootstrap (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.nodeContextParams' @:: Lens' Bootstrap [Data.Text.Text]@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.vec'nodeContextParams' @:: Lens' Bootstrap (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.staticResources' @:: Lens' Bootstrap Bootstrap'StaticResources@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'staticResources' @:: Lens' Bootstrap (Prelude.Maybe Bootstrap'StaticResources)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.dynamicResources' @:: Lens' Bootstrap Bootstrap'DynamicResources@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'dynamicResources' @:: Lens' Bootstrap (Prelude.Maybe Bootstrap'DynamicResources)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.clusterManager' @:: Lens' Bootstrap ClusterManager@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'clusterManager' @:: Lens' Bootstrap (Prelude.Maybe ClusterManager)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.hdsConfig' @:: Lens' Bootstrap Proto.Envoy.Config.Core.V3.ConfigSource.ApiConfigSource@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'hdsConfig' @:: Lens' Bootstrap (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ApiConfigSource)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.flagsPath' @:: Lens' Bootstrap Data.Text.Text@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.statsSinks' @:: Lens' Bootstrap [Proto.Envoy.Config.Metrics.V3.Stats.StatsSink]@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.vec'statsSinks' @:: Lens' Bootstrap (Data.Vector.Vector Proto.Envoy.Config.Metrics.V3.Stats.StatsSink)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.statsConfig' @:: Lens' Bootstrap Proto.Envoy.Config.Metrics.V3.Stats.StatsConfig@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'statsConfig' @:: Lens' Bootstrap (Prelude.Maybe Proto.Envoy.Config.Metrics.V3.Stats.StatsConfig)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.statsFlushInterval' @:: Lens' Bootstrap Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'statsFlushInterval' @:: Lens' Bootstrap (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.watchdog' @:: Lens' Bootstrap Watchdog@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'watchdog' @:: Lens' Bootstrap (Prelude.Maybe Watchdog)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.watchdogs' @:: Lens' Bootstrap Watchdogs@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'watchdogs' @:: Lens' Bootstrap (Prelude.Maybe Watchdogs)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.tracing' @:: Lens' Bootstrap Proto.Envoy.Config.Trace.V3.HttpTracer.Tracing@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'tracing' @:: Lens' Bootstrap (Prelude.Maybe Proto.Envoy.Config.Trace.V3.HttpTracer.Tracing)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.layeredRuntime' @:: Lens' Bootstrap LayeredRuntime@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'layeredRuntime' @:: Lens' Bootstrap (Prelude.Maybe LayeredRuntime)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.admin' @:: Lens' Bootstrap Admin@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'admin' @:: Lens' Bootstrap (Prelude.Maybe Admin)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.overloadManager' @:: Lens' Bootstrap Proto.Envoy.Config.Overload.V3.Overload.OverloadManager@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'overloadManager' @:: Lens' Bootstrap (Prelude.Maybe Proto.Envoy.Config.Overload.V3.Overload.OverloadManager)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.enableDispatcherStats' @:: Lens' Bootstrap Prelude.Bool@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.headerPrefix' @:: Lens' Bootstrap Data.Text.Text@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.statsServerVersionOverride' @:: Lens' Bootstrap Proto.Google.Protobuf.Wrappers.UInt64Value@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'statsServerVersionOverride' @:: Lens' Bootstrap (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.useTcpForDnsLookups' @:: Lens' Bootstrap Prelude.Bool@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.dnsResolutionConfig' @:: Lens' Bootstrap Proto.Envoy.Config.Core.V3.Resolver.DnsResolutionConfig@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'dnsResolutionConfig' @:: Lens' Bootstrap (Prelude.Maybe Proto.Envoy.Config.Core.V3.Resolver.DnsResolutionConfig)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.bootstrapExtensions' @:: Lens' Bootstrap [Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig]@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.vec'bootstrapExtensions' @:: Lens' Bootstrap (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.fatalActions' @:: Lens' Bootstrap [FatalAction]@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.vec'fatalActions' @:: Lens' Bootstrap (Data.Vector.Vector FatalAction)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.configSources' @:: Lens' Bootstrap [Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource]@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.vec'configSources' @:: Lens' Bootstrap (Data.Vector.Vector Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.defaultConfigSource' @:: Lens' Bootstrap Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'defaultConfigSource' @:: Lens' Bootstrap (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.defaultSocketInterface' @:: Lens' Bootstrap Data.Text.Text@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.certificateProviderInstances' @:: Lens' Bootstrap (Data.Map.Map Data.Text.Text Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'statsFlush' @:: Lens' Bootstrap (Prelude.Maybe Bootstrap'StatsFlush)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'statsFlushOnAdmin' @:: Lens' Bootstrap (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.statsFlushOnAdmin' @:: Lens' Bootstrap Prelude.Bool@ -}
data Bootstrap
  = Bootstrap'_constructor {_Bootstrap'node :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node),
                            _Bootstrap'nodeContextParams :: !(Data.Vector.Vector Data.Text.Text),
                            _Bootstrap'staticResources :: !(Prelude.Maybe Bootstrap'StaticResources),
                            _Bootstrap'dynamicResources :: !(Prelude.Maybe Bootstrap'DynamicResources),
                            _Bootstrap'clusterManager :: !(Prelude.Maybe ClusterManager),
                            _Bootstrap'hdsConfig :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ApiConfigSource),
                            _Bootstrap'flagsPath :: !Data.Text.Text,
                            _Bootstrap'statsSinks :: !(Data.Vector.Vector Proto.Envoy.Config.Metrics.V3.Stats.StatsSink),
                            _Bootstrap'statsConfig :: !(Prelude.Maybe Proto.Envoy.Config.Metrics.V3.Stats.StatsConfig),
                            _Bootstrap'statsFlushInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                            _Bootstrap'watchdog :: !(Prelude.Maybe Watchdog),
                            _Bootstrap'watchdogs :: !(Prelude.Maybe Watchdogs),
                            _Bootstrap'tracing :: !(Prelude.Maybe Proto.Envoy.Config.Trace.V3.HttpTracer.Tracing),
                            _Bootstrap'layeredRuntime :: !(Prelude.Maybe LayeredRuntime),
                            _Bootstrap'admin :: !(Prelude.Maybe Admin),
                            _Bootstrap'overloadManager :: !(Prelude.Maybe Proto.Envoy.Config.Overload.V3.Overload.OverloadManager),
                            _Bootstrap'enableDispatcherStats :: !Prelude.Bool,
                            _Bootstrap'headerPrefix :: !Data.Text.Text,
                            _Bootstrap'statsServerVersionOverride :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value),
                            _Bootstrap'useTcpForDnsLookups :: !Prelude.Bool,
                            _Bootstrap'dnsResolutionConfig :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Resolver.DnsResolutionConfig),
                            _Bootstrap'bootstrapExtensions :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig),
                            _Bootstrap'fatalActions :: !(Data.Vector.Vector FatalAction),
                            _Bootstrap'configSources :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource),
                            _Bootstrap'defaultConfigSource :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource),
                            _Bootstrap'defaultSocketInterface :: !Data.Text.Text,
                            _Bootstrap'certificateProviderInstances :: !(Data.Map.Map Data.Text.Text Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig),
                            _Bootstrap'statsFlush :: !(Prelude.Maybe Bootstrap'StatsFlush),
                            _Bootstrap'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Bootstrap where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Bootstrap'StatsFlush
  = Bootstrap'StatsFlushOnAdmin !Prelude.Bool
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Bootstrap "node" Proto.Envoy.Config.Core.V3.Base.Node where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'node (\ x__ y__ -> x__ {_Bootstrap'node = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Bootstrap "maybe'node" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'node (\ x__ y__ -> x__ {_Bootstrap'node = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "nodeContextParams" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'nodeContextParams
           (\ x__ y__ -> x__ {_Bootstrap'nodeContextParams = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Bootstrap "vec'nodeContextParams" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'nodeContextParams
           (\ x__ y__ -> x__ {_Bootstrap'nodeContextParams = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "staticResources" Bootstrap'StaticResources where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'staticResources
           (\ x__ y__ -> x__ {_Bootstrap'staticResources = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Bootstrap "maybe'staticResources" (Prelude.Maybe Bootstrap'StaticResources) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'staticResources
           (\ x__ y__ -> x__ {_Bootstrap'staticResources = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "dynamicResources" Bootstrap'DynamicResources where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'dynamicResources
           (\ x__ y__ -> x__ {_Bootstrap'dynamicResources = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Bootstrap "maybe'dynamicResources" (Prelude.Maybe Bootstrap'DynamicResources) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'dynamicResources
           (\ x__ y__ -> x__ {_Bootstrap'dynamicResources = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "clusterManager" ClusterManager where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'clusterManager
           (\ x__ y__ -> x__ {_Bootstrap'clusterManager = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Bootstrap "maybe'clusterManager" (Prelude.Maybe ClusterManager) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'clusterManager
           (\ x__ y__ -> x__ {_Bootstrap'clusterManager = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "hdsConfig" Proto.Envoy.Config.Core.V3.ConfigSource.ApiConfigSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'hdsConfig
           (\ x__ y__ -> x__ {_Bootstrap'hdsConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Bootstrap "maybe'hdsConfig" (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ApiConfigSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'hdsConfig
           (\ x__ y__ -> x__ {_Bootstrap'hdsConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "flagsPath" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'flagsPath
           (\ x__ y__ -> x__ {_Bootstrap'flagsPath = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "statsSinks" [Proto.Envoy.Config.Metrics.V3.Stats.StatsSink] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'statsSinks
           (\ x__ y__ -> x__ {_Bootstrap'statsSinks = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Bootstrap "vec'statsSinks" (Data.Vector.Vector Proto.Envoy.Config.Metrics.V3.Stats.StatsSink) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'statsSinks
           (\ x__ y__ -> x__ {_Bootstrap'statsSinks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "statsConfig" Proto.Envoy.Config.Metrics.V3.Stats.StatsConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'statsConfig
           (\ x__ y__ -> x__ {_Bootstrap'statsConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Bootstrap "maybe'statsConfig" (Prelude.Maybe Proto.Envoy.Config.Metrics.V3.Stats.StatsConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'statsConfig
           (\ x__ y__ -> x__ {_Bootstrap'statsConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "statsFlushInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'statsFlushInterval
           (\ x__ y__ -> x__ {_Bootstrap'statsFlushInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Bootstrap "maybe'statsFlushInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'statsFlushInterval
           (\ x__ y__ -> x__ {_Bootstrap'statsFlushInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "watchdog" Watchdog where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'watchdog (\ x__ y__ -> x__ {_Bootstrap'watchdog = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Bootstrap "maybe'watchdog" (Prelude.Maybe Watchdog) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'watchdog (\ x__ y__ -> x__ {_Bootstrap'watchdog = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "watchdogs" Watchdogs where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'watchdogs
           (\ x__ y__ -> x__ {_Bootstrap'watchdogs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Bootstrap "maybe'watchdogs" (Prelude.Maybe Watchdogs) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'watchdogs
           (\ x__ y__ -> x__ {_Bootstrap'watchdogs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "tracing" Proto.Envoy.Config.Trace.V3.HttpTracer.Tracing where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'tracing (\ x__ y__ -> x__ {_Bootstrap'tracing = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Bootstrap "maybe'tracing" (Prelude.Maybe Proto.Envoy.Config.Trace.V3.HttpTracer.Tracing) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'tracing (\ x__ y__ -> x__ {_Bootstrap'tracing = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "layeredRuntime" LayeredRuntime where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'layeredRuntime
           (\ x__ y__ -> x__ {_Bootstrap'layeredRuntime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Bootstrap "maybe'layeredRuntime" (Prelude.Maybe LayeredRuntime) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'layeredRuntime
           (\ x__ y__ -> x__ {_Bootstrap'layeredRuntime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "admin" Admin where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'admin (\ x__ y__ -> x__ {_Bootstrap'admin = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Bootstrap "maybe'admin" (Prelude.Maybe Admin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'admin (\ x__ y__ -> x__ {_Bootstrap'admin = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "overloadManager" Proto.Envoy.Config.Overload.V3.Overload.OverloadManager where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'overloadManager
           (\ x__ y__ -> x__ {_Bootstrap'overloadManager = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Bootstrap "maybe'overloadManager" (Prelude.Maybe Proto.Envoy.Config.Overload.V3.Overload.OverloadManager) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'overloadManager
           (\ x__ y__ -> x__ {_Bootstrap'overloadManager = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "enableDispatcherStats" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'enableDispatcherStats
           (\ x__ y__ -> x__ {_Bootstrap'enableDispatcherStats = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "headerPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'headerPrefix
           (\ x__ y__ -> x__ {_Bootstrap'headerPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "statsServerVersionOverride" Proto.Google.Protobuf.Wrappers.UInt64Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'statsServerVersionOverride
           (\ x__ y__ -> x__ {_Bootstrap'statsServerVersionOverride = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Bootstrap "maybe'statsServerVersionOverride" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'statsServerVersionOverride
           (\ x__ y__ -> x__ {_Bootstrap'statsServerVersionOverride = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "useTcpForDnsLookups" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'useTcpForDnsLookups
           (\ x__ y__ -> x__ {_Bootstrap'useTcpForDnsLookups = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "dnsResolutionConfig" Proto.Envoy.Config.Core.V3.Resolver.DnsResolutionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'dnsResolutionConfig
           (\ x__ y__ -> x__ {_Bootstrap'dnsResolutionConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Bootstrap "maybe'dnsResolutionConfig" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Resolver.DnsResolutionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'dnsResolutionConfig
           (\ x__ y__ -> x__ {_Bootstrap'dnsResolutionConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "bootstrapExtensions" [Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'bootstrapExtensions
           (\ x__ y__ -> x__ {_Bootstrap'bootstrapExtensions = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Bootstrap "vec'bootstrapExtensions" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'bootstrapExtensions
           (\ x__ y__ -> x__ {_Bootstrap'bootstrapExtensions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "fatalActions" [FatalAction] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'fatalActions
           (\ x__ y__ -> x__ {_Bootstrap'fatalActions = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Bootstrap "vec'fatalActions" (Data.Vector.Vector FatalAction) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'fatalActions
           (\ x__ y__ -> x__ {_Bootstrap'fatalActions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "configSources" [Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'configSources
           (\ x__ y__ -> x__ {_Bootstrap'configSources = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Bootstrap "vec'configSources" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'configSources
           (\ x__ y__ -> x__ {_Bootstrap'configSources = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "defaultConfigSource" Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'defaultConfigSource
           (\ x__ y__ -> x__ {_Bootstrap'defaultConfigSource = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Bootstrap "maybe'defaultConfigSource" (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'defaultConfigSource
           (\ x__ y__ -> x__ {_Bootstrap'defaultConfigSource = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "defaultSocketInterface" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'defaultSocketInterface
           (\ x__ y__ -> x__ {_Bootstrap'defaultSocketInterface = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "certificateProviderInstances" (Data.Map.Map Data.Text.Text Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'certificateProviderInstances
           (\ x__ y__ -> x__ {_Bootstrap'certificateProviderInstances = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "maybe'statsFlush" (Prelude.Maybe Bootstrap'StatsFlush) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'statsFlush
           (\ x__ y__ -> x__ {_Bootstrap'statsFlush = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap "maybe'statsFlushOnAdmin" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'statsFlush
           (\ x__ y__ -> x__ {_Bootstrap'statsFlush = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Bootstrap'StatsFlushOnAdmin x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Bootstrap'StatsFlushOnAdmin y__))
instance Data.ProtoLens.Field.HasField Bootstrap "statsFlushOnAdmin" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'statsFlush
           (\ x__ y__ -> x__ {_Bootstrap'statsFlush = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Bootstrap'StatsFlushOnAdmin x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Bootstrap'StatsFlushOnAdmin y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message Bootstrap where
  messageName _
    = Data.Text.pack "envoy.config.bootstrap.v3.Bootstrap"
  packedMessageDescriptor _
    = "\n\
      \\tBootstrap\DC2.\n\
      \\EOTnode\CAN\SOH \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnode\DC2.\n\
      \\DC3node_context_params\CAN\SUB \ETX(\tR\DC1nodeContextParams\DC2_\n\
      \\DLEstatic_resources\CAN\STX \SOH(\v24.envoy.config.bootstrap.v3.Bootstrap.StaticResourcesR\SIstaticResources\DC2b\n\
      \\DC1dynamic_resources\CAN\ETX \SOH(\v25.envoy.config.bootstrap.v3.Bootstrap.DynamicResourcesR\DLEdynamicResources\DC2R\n\
      \\SIcluster_manager\CAN\EOT \SOH(\v2).envoy.config.bootstrap.v3.ClusterManagerR\SOclusterManager\DC2D\n\
      \\n\
      \hds_config\CAN\SO \SOH(\v2%.envoy.config.core.v3.ApiConfigSourceR\thdsConfig\DC2\GS\n\
      \\n\
      \flags_path\CAN\ENQ \SOH(\tR\tflagsPath\DC2C\n\
      \\vstats_sinks\CAN\ACK \ETX(\v2\".envoy.config.metrics.v3.StatsSinkR\n\
      \statsSinks\DC2G\n\
      \\fstats_config\CAN\r \SOH(\v2$.envoy.config.metrics.v3.StatsConfigR\vstatsConfig\DC2q\n\
      \\DC4stats_flush_interval\CAN\a \SOH(\v2\EM.google.protobuf.DurationR\DC2statsFlushIntervalB$\250B\SO\170\SOH\v\SUB\ETX\b\172\STX2\EOT\DLE\192\132=\242\152\254\143\ENQ\r\DC2\vstats_flush\DC2:\n\
      \\DC4stats_flush_on_admin\CAN\GS \SOH(\bH\NULR\DC1statsFlushOnAdminB\a\250B\EOTj\STX\b\SOH\DC2L\n\
      \\bwatchdog\CAN\b \SOH(\v2#.envoy.config.bootstrap.v3.WatchdogR\bwatchdogB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2B\n\
      \\twatchdogs\CAN\ESC \SOH(\v2$.envoy.config.bootstrap.v3.WatchdogsR\twatchdogs\DC2E\n\
      \\atracing\CAN\t \SOH(\v2\RS.envoy.config.trace.v3.TracingR\atracingB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2R\n\
      \\SIlayered_runtime\CAN\DC1 \SOH(\v2).envoy.config.bootstrap.v3.LayeredRuntimeR\SOlayeredRuntime\DC26\n\
      \\ENQadmin\CAN\f \SOH(\v2 .envoy.config.bootstrap.v3.AdminR\ENQadmin\DC2d\n\
      \\DLEoverload_manager\CAN\SI \SOH(\v2).envoy.config.overload.v3.OverloadManagerR\SIoverloadManagerB\SO\138\147\183*\STX\b\SOH\138\147\183*\STX\DLE\SOH\DC26\n\
      \\ETBenable_dispatcher_stats\CAN\DLE \SOH(\bR\NAKenableDispatcherStats\DC2#\n\
      \\rheader_prefix\CAN\DC2 \SOH(\tR\fheaderPrefix\DC2_\n\
      \\GSstats_server_version_override\CAN\DC3 \SOH(\v2\FS.google.protobuf.UInt64ValueR\SUBstatsServerVersionOverride\DC2A\n\
      \\ETBuse_tcp_for_dns_lookups\CAN\DC4 \SOH(\bR\DC3useTcpForDnsLookupsB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2]\n\
      \\NAKdns_resolution_config\CAN\RS \SOH(\v2).envoy.config.core.v3.DnsResolutionConfigR\DC3dnsResolutionConfig\DC2]\n\
      \\DC4bootstrap_extensions\CAN\NAK \ETX(\v2*.envoy.config.core.v3.TypedExtensionConfigR\DC3bootstrapExtensions\DC2K\n\
      \\rfatal_actions\CAN\FS \ETX(\v2&.envoy.config.bootstrap.v3.FatalActionR\ffatalActions\DC2I\n\
      \\SOconfig_sources\CAN\SYN \ETX(\v2\".envoy.config.core.v3.ConfigSourceR\rconfigSources\DC2V\n\
      \\NAKdefault_config_source\CAN\ETB \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\DC3defaultConfigSource\DC28\n\
      \\CANdefault_socket_interface\CAN\CAN \SOH(\tR\SYNdefaultSocketInterface\DC2\140\SOH\n\
      \\RScertificate_provider_instances\CAN\EM \ETX(\v2F.envoy.config.bootstrap.v3.Bootstrap.CertificateProviderInstancesEntryR\FScertificateProviderInstances\SUB\154\STX\n\
      \\SIStaticResources\DC2@\n\
      \\tlisteners\CAN\SOH \ETX(\v2\".envoy.config.listener.v3.ListenerR\tlisteners\DC2<\n\
      \\bclusters\CAN\STX \ETX(\v2 .envoy.config.cluster.v3.ClusterR\bclusters\DC2K\n\
      \\asecrets\CAN\ETX \ETX(\v21.envoy.extensions.transport_sockets.tls.v3.SecretR\asecrets::\154\197\136\RS5\n\
      \3envoy.config.bootstrap.v2.Bootstrap.StaticResources\SUB\137\ETX\n\
      \\DLEDynamicResources\DC2A\n\
      \\n\
      \lds_config\CAN\SOH \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\tldsConfig\DC22\n\
      \\NAKlds_resources_locator\CAN\ENQ \SOH(\tR\DC3ldsResourcesLocator\DC2A\n\
      \\n\
      \cds_config\CAN\STX \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\tcdsConfig\DC22\n\
      \\NAKcds_resources_locator\CAN\ACK \SOH(\tR\DC3cdsResourcesLocator\DC2D\n\
      \\n\
      \ads_config\CAN\ETX \SOH(\v2%.envoy.config.core.v3.ApiConfigSourceR\tadsConfig:;\154\197\136\RS6\n\
      \4envoy.config.bootstrap.v2.Bootstrap.DynamicResourcesJ\EOT\b\EOT\DLE\ENQ\SUB{\n\
      \!CertificateProviderInstancesEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2@\n\
      \\ENQvalue\CAN\STX \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\ENQvalue:\STX8\SOHB\r\n\
      \\vstats_flush:*\154\197\136\RS%\n\
      \#envoy.config.bootstrap.v2.BootstrapJ\EOT\b\n\
      \\DLE\vJ\EOT\b\v\DLE\fR\aruntime"
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
              Data.ProtoLens.FieldDescriptor Bootstrap
        nodeContextParams__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "node_context_params"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"nodeContextParams")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
        staticResources__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "static_resources"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Bootstrap'StaticResources)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'staticResources")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
        dynamicResources__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dynamic_resources"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Bootstrap'DynamicResources)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dynamicResources")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
        clusterManager__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster_manager"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ClusterManager)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'clusterManager")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
        hdsConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hds_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.ConfigSource.ApiConfigSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'hdsConfig")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
        flagsPath__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags_path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"flagsPath")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
        statsSinks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stats_sinks"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Metrics.V3.Stats.StatsSink)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"statsSinks")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
        statsConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stats_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Metrics.V3.Stats.StatsConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'statsConfig")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
        statsFlushInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stats_flush_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'statsFlushInterval")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
        watchdog__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "watchdog"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Watchdog)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'watchdog")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
        watchdogs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "watchdogs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Watchdogs)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'watchdogs")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
        tracing__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tracing"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Trace.V3.HttpTracer.Tracing)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tracing")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
        layeredRuntime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "layered_runtime"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor LayeredRuntime)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'layeredRuntime")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
        admin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "admin"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Admin)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'admin")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
        overloadManager__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "overload_manager"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Overload.V3.Overload.OverloadManager)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'overloadManager")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
        enableDispatcherStats__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enable_dispatcher_stats"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"enableDispatcherStats")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
        headerPrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"headerPrefix")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
        statsServerVersionOverride__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stats_server_version_override"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt64Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'statsServerVersionOverride")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
        useTcpForDnsLookups__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "use_tcp_for_dns_lookups"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"useTcpForDnsLookups")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
        dnsResolutionConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dns_resolution_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Resolver.DnsResolutionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dnsResolutionConfig")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
        bootstrapExtensions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bootstrap_extensions"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"bootstrapExtensions")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
        fatalActions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fatal_actions"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FatalAction)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"fatalActions")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
        configSources__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "config_sources"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"configSources")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
        defaultConfigSource__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "default_config_source"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'defaultConfigSource")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
        defaultSocketInterface__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "default_socket_interface"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"defaultSocketInterface")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
        certificateProviderInstances__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "certificate_provider_instances"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Bootstrap'CertificateProviderInstancesEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"certificateProviderInstances")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
        statsFlushOnAdmin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stats_flush_on_admin"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'statsFlushOnAdmin")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, node__field_descriptor),
           (Data.ProtoLens.Tag 26, nodeContextParams__field_descriptor),
           (Data.ProtoLens.Tag 2, staticResources__field_descriptor),
           (Data.ProtoLens.Tag 3, dynamicResources__field_descriptor),
           (Data.ProtoLens.Tag 4, clusterManager__field_descriptor),
           (Data.ProtoLens.Tag 14, hdsConfig__field_descriptor),
           (Data.ProtoLens.Tag 5, flagsPath__field_descriptor),
           (Data.ProtoLens.Tag 6, statsSinks__field_descriptor),
           (Data.ProtoLens.Tag 13, statsConfig__field_descriptor),
           (Data.ProtoLens.Tag 7, statsFlushInterval__field_descriptor),
           (Data.ProtoLens.Tag 8, watchdog__field_descriptor),
           (Data.ProtoLens.Tag 27, watchdogs__field_descriptor),
           (Data.ProtoLens.Tag 9, tracing__field_descriptor),
           (Data.ProtoLens.Tag 17, layeredRuntime__field_descriptor),
           (Data.ProtoLens.Tag 12, admin__field_descriptor),
           (Data.ProtoLens.Tag 15, overloadManager__field_descriptor),
           (Data.ProtoLens.Tag 16, enableDispatcherStats__field_descriptor),
           (Data.ProtoLens.Tag 18, headerPrefix__field_descriptor),
           (Data.ProtoLens.Tag 19, 
            statsServerVersionOverride__field_descriptor),
           (Data.ProtoLens.Tag 20, useTcpForDnsLookups__field_descriptor),
           (Data.ProtoLens.Tag 30, dnsResolutionConfig__field_descriptor),
           (Data.ProtoLens.Tag 21, bootstrapExtensions__field_descriptor),
           (Data.ProtoLens.Tag 28, fatalActions__field_descriptor),
           (Data.ProtoLens.Tag 22, configSources__field_descriptor),
           (Data.ProtoLens.Tag 23, defaultConfigSource__field_descriptor),
           (Data.ProtoLens.Tag 24, defaultSocketInterface__field_descriptor),
           (Data.ProtoLens.Tag 25, 
            certificateProviderInstances__field_descriptor),
           (Data.ProtoLens.Tag 29, statsFlushOnAdmin__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Bootstrap'_unknownFields
        (\ x__ y__ -> x__ {_Bootstrap'_unknownFields = y__})
  defMessage
    = Bootstrap'_constructor
        {_Bootstrap'node = Prelude.Nothing,
         _Bootstrap'nodeContextParams = Data.Vector.Generic.empty,
         _Bootstrap'staticResources = Prelude.Nothing,
         _Bootstrap'dynamicResources = Prelude.Nothing,
         _Bootstrap'clusterManager = Prelude.Nothing,
         _Bootstrap'hdsConfig = Prelude.Nothing,
         _Bootstrap'flagsPath = Data.ProtoLens.fieldDefault,
         _Bootstrap'statsSinks = Data.Vector.Generic.empty,
         _Bootstrap'statsConfig = Prelude.Nothing,
         _Bootstrap'statsFlushInterval = Prelude.Nothing,
         _Bootstrap'watchdog = Prelude.Nothing,
         _Bootstrap'watchdogs = Prelude.Nothing,
         _Bootstrap'tracing = Prelude.Nothing,
         _Bootstrap'layeredRuntime = Prelude.Nothing,
         _Bootstrap'admin = Prelude.Nothing,
         _Bootstrap'overloadManager = Prelude.Nothing,
         _Bootstrap'enableDispatcherStats = Data.ProtoLens.fieldDefault,
         _Bootstrap'headerPrefix = Data.ProtoLens.fieldDefault,
         _Bootstrap'statsServerVersionOverride = Prelude.Nothing,
         _Bootstrap'useTcpForDnsLookups = Data.ProtoLens.fieldDefault,
         _Bootstrap'dnsResolutionConfig = Prelude.Nothing,
         _Bootstrap'bootstrapExtensions = Data.Vector.Generic.empty,
         _Bootstrap'fatalActions = Data.Vector.Generic.empty,
         _Bootstrap'configSources = Data.Vector.Generic.empty,
         _Bootstrap'defaultConfigSource = Prelude.Nothing,
         _Bootstrap'defaultSocketInterface = Data.ProtoLens.fieldDefault,
         _Bootstrap'certificateProviderInstances = Data.Map.empty,
         _Bootstrap'statsFlush = Prelude.Nothing,
         _Bootstrap'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Bootstrap
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld FatalAction
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                      -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Metrics.V3.Stats.StatsSink
                         -> Data.ProtoLens.Encoding.Bytes.Parser Bootstrap
        loop
          x
          mutable'bootstrapExtensions
          mutable'configSources
          mutable'fatalActions
          mutable'nodeContextParams
          mutable'statsSinks
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'bootstrapExtensions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'bootstrapExtensions)
                      frozen'configSources <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'configSources)
                      frozen'fatalActions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'fatalActions)
                      frozen'nodeContextParams <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                       mutable'nodeContextParams)
                      frozen'statsSinks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'statsSinks)
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
                              (Data.ProtoLens.Field.field @"vec'bootstrapExtensions")
                              frozen'bootstrapExtensions
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'configSources")
                                 frozen'configSources
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'fatalActions")
                                    frozen'fatalActions
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'nodeContextParams")
                                       frozen'nodeContextParams
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"vec'statsSinks")
                                          frozen'statsSinks
                                          x))))))
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
                                  mutable'bootstrapExtensions
                                  mutable'configSources
                                  mutable'fatalActions
                                  mutable'nodeContextParams
                                  mutable'statsSinks
                        210
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "node_context_params"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'nodeContextParams y)
                                loop
                                  x
                                  mutable'bootstrapExtensions
                                  mutable'configSources
                                  mutable'fatalActions
                                  v
                                  mutable'statsSinks
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "static_resources"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"staticResources") y x)
                                  mutable'bootstrapExtensions
                                  mutable'configSources
                                  mutable'fatalActions
                                  mutable'nodeContextParams
                                  mutable'statsSinks
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "dynamic_resources"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dynamicResources") y x)
                                  mutable'bootstrapExtensions
                                  mutable'configSources
                                  mutable'fatalActions
                                  mutable'nodeContextParams
                                  mutable'statsSinks
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cluster_manager"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"clusterManager") y x)
                                  mutable'bootstrapExtensions
                                  mutable'configSources
                                  mutable'fatalActions
                                  mutable'nodeContextParams
                                  mutable'statsSinks
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "hds_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"hdsConfig") y x)
                                  mutable'bootstrapExtensions
                                  mutable'configSources
                                  mutable'fatalActions
                                  mutable'nodeContextParams
                                  mutable'statsSinks
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
                                       "flags_path"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"flagsPath") y x)
                                  mutable'bootstrapExtensions
                                  mutable'configSources
                                  mutable'fatalActions
                                  mutable'nodeContextParams
                                  mutable'statsSinks
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "stats_sinks"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'statsSinks y)
                                loop
                                  x
                                  mutable'bootstrapExtensions
                                  mutable'configSources
                                  mutable'fatalActions
                                  mutable'nodeContextParams
                                  v
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "stats_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"statsConfig") y x)
                                  mutable'bootstrapExtensions
                                  mutable'configSources
                                  mutable'fatalActions
                                  mutable'nodeContextParams
                                  mutable'statsSinks
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "stats_flush_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"statsFlushInterval") y x)
                                  mutable'bootstrapExtensions
                                  mutable'configSources
                                  mutable'fatalActions
                                  mutable'nodeContextParams
                                  mutable'statsSinks
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "watchdog"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"watchdog") y x)
                                  mutable'bootstrapExtensions
                                  mutable'configSources
                                  mutable'fatalActions
                                  mutable'nodeContextParams
                                  mutable'statsSinks
                        218
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "watchdogs"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"watchdogs") y x)
                                  mutable'bootstrapExtensions
                                  mutable'configSources
                                  mutable'fatalActions
                                  mutable'nodeContextParams
                                  mutable'statsSinks
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tracing"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tracing") y x)
                                  mutable'bootstrapExtensions
                                  mutable'configSources
                                  mutable'fatalActions
                                  mutable'nodeContextParams
                                  mutable'statsSinks
                        138
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "layered_runtime"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"layeredRuntime") y x)
                                  mutable'bootstrapExtensions
                                  mutable'configSources
                                  mutable'fatalActions
                                  mutable'nodeContextParams
                                  mutable'statsSinks
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "admin"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"admin") y x)
                                  mutable'bootstrapExtensions
                                  mutable'configSources
                                  mutable'fatalActions
                                  mutable'nodeContextParams
                                  mutable'statsSinks
                        122
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "overload_manager"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"overloadManager") y x)
                                  mutable'bootstrapExtensions
                                  mutable'configSources
                                  mutable'fatalActions
                                  mutable'nodeContextParams
                                  mutable'statsSinks
                        128
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "enable_dispatcher_stats"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"enableDispatcherStats") y x)
                                  mutable'bootstrapExtensions
                                  mutable'configSources
                                  mutable'fatalActions
                                  mutable'nodeContextParams
                                  mutable'statsSinks
                        146
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "header_prefix"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"headerPrefix") y x)
                                  mutable'bootstrapExtensions
                                  mutable'configSources
                                  mutable'fatalActions
                                  mutable'nodeContextParams
                                  mutable'statsSinks
                        154
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "stats_server_version_override"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"statsServerVersionOverride") y x)
                                  mutable'bootstrapExtensions
                                  mutable'configSources
                                  mutable'fatalActions
                                  mutable'nodeContextParams
                                  mutable'statsSinks
                        160
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "use_tcp_for_dns_lookups"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"useTcpForDnsLookups") y x)
                                  mutable'bootstrapExtensions
                                  mutable'configSources
                                  mutable'fatalActions
                                  mutable'nodeContextParams
                                  mutable'statsSinks
                        242
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "dns_resolution_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dnsResolutionConfig") y x)
                                  mutable'bootstrapExtensions
                                  mutable'configSources
                                  mutable'fatalActions
                                  mutable'nodeContextParams
                                  mutable'statsSinks
                        170
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "bootstrap_extensions"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'bootstrapExtensions y)
                                loop
                                  x
                                  v
                                  mutable'configSources
                                  mutable'fatalActions
                                  mutable'nodeContextParams
                                  mutable'statsSinks
                        226
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "fatal_actions"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'fatalActions y)
                                loop
                                  x
                                  mutable'bootstrapExtensions
                                  mutable'configSources
                                  v
                                  mutable'nodeContextParams
                                  mutable'statsSinks
                        178
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "config_sources"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'configSources y)
                                loop
                                  x
                                  mutable'bootstrapExtensions
                                  v
                                  mutable'fatalActions
                                  mutable'nodeContextParams
                                  mutable'statsSinks
                        186
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "default_config_source"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"defaultConfigSource") y x)
                                  mutable'bootstrapExtensions
                                  mutable'configSources
                                  mutable'fatalActions
                                  mutable'nodeContextParams
                                  mutable'statsSinks
                        194
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "default_socket_interface"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"defaultSocketInterface") y x)
                                  mutable'bootstrapExtensions
                                  mutable'configSources
                                  mutable'fatalActions
                                  mutable'nodeContextParams
                                  mutable'statsSinks
                        202
                          -> do !(entry :: Bootstrap'CertificateProviderInstancesEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                             (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                                 Data.ProtoLens.Encoding.Bytes.isolate
                                                                                                   (Prelude.fromIntegral
                                                                                                      len)
                                                                                                   Data.ProtoLens.parseMessage)
                                                                                             "certificate_provider_instances"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"certificateProviderInstances")
                                        (\ !t -> Data.Map.insert key value t)
                                        x)
                                     mutable'bootstrapExtensions
                                     mutable'configSources
                                     mutable'fatalActions
                                     mutable'nodeContextParams
                                     mutable'statsSinks)
                        232
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "stats_flush_on_admin"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"statsFlushOnAdmin") y x)
                                  mutable'bootstrapExtensions
                                  mutable'configSources
                                  mutable'fatalActions
                                  mutable'nodeContextParams
                                  mutable'statsSinks
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'bootstrapExtensions
                                  mutable'configSources
                                  mutable'fatalActions
                                  mutable'nodeContextParams
                                  mutable'statsSinks
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'bootstrapExtensions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              mutable'configSources <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              mutable'fatalActions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              mutable'nodeContextParams <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             Data.ProtoLens.Encoding.Growing.new
              mutable'statsSinks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'bootstrapExtensions
                mutable'configSources
                mutable'fatalActions
                mutable'nodeContextParams
                mutable'statsSinks)
          "Bootstrap"
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
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 210)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.Text.Encoding.encodeUtf8
                              _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'nodeContextParams") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'staticResources") _x
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
                             (Data.ProtoLens.Field.field @"maybe'dynamicResources") _x
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
                                (Data.ProtoLens.Field.field @"maybe'clusterManager") _x
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
                                   (Data.ProtoLens.Field.field @"maybe'hdsConfig") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 114)
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
                                    = Lens.Family2.view (Data.ProtoLens.Field.field @"flagsPath") _x
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
                                                      (Prelude.fromIntegral
                                                         (Data.ByteString.length bs)))
                                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                           Data.Text.Encoding.encodeUtf8
                                           _v))
                               ((Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                     (\ _v
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
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"vec'statsSinks") _x))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'statsConfig") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 106)
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
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field
                                                  @"maybe'statsFlushInterval")
                                               _x
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
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage
                                                     _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field @"maybe'watchdog") _x
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
                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                   bs))
                                                        Data.ProtoLens.encodeMessage
                                                        _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field @"maybe'watchdogs")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           218)
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
                                                           @"maybe'tracing")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
                                                      -> (Data.Monoid.<>)
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
                                                              Data.ProtoLens.encodeMessage
                                                              _v))
                                                 ((Data.Monoid.<>)
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'layeredRuntime")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
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
                                                       (case
                                                            Lens.Family2.view
                                                              (Data.ProtoLens.Field.field
                                                                 @"maybe'admin")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    98)
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
                                                                    @"maybe'overloadManager")
                                                                 _x
                                                           of
                                                             Prelude.Nothing -> Data.Monoid.mempty
                                                             (Prelude.Just _v)
                                                               -> (Data.Monoid.<>)
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
                                                                       Data.ProtoLens.encodeMessage
                                                                       _v))
                                                          ((Data.Monoid.<>)
                                                             (let
                                                                _v
                                                                  = Lens.Family2.view
                                                                      (Data.ProtoLens.Field.field
                                                                         @"enableDispatcherStats")
                                                                      _x
                                                              in
                                                                if (Prelude.==)
                                                                     _v
                                                                     Data.ProtoLens.fieldDefault then
                                                                    Data.Monoid.mempty
                                                                else
                                                                    (Data.Monoid.<>)
                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         128)
                                                                      ((Prelude..)
                                                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         (\ b -> if b then 1 else 0)
                                                                         _v))
                                                             ((Data.Monoid.<>)
                                                                (let
                                                                   _v
                                                                     = Lens.Family2.view
                                                                         (Data.ProtoLens.Field.field
                                                                            @"headerPrefix")
                                                                         _x
                                                                 in
                                                                   if (Prelude.==)
                                                                        _v
                                                                        Data.ProtoLens.fieldDefault then
                                                                       Data.Monoid.mempty
                                                                   else
                                                                       (Data.Monoid.<>)
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
                                                                            Data.Text.Encoding.encodeUtf8
                                                                            _v))
                                                                ((Data.Monoid.<>)
                                                                   (case
                                                                        Lens.Family2.view
                                                                          (Data.ProtoLens.Field.field
                                                                             @"maybe'statsServerVersionOverride")
                                                                          _x
                                                                    of
                                                                      Prelude.Nothing
                                                                        -> Data.Monoid.mempty
                                                                      (Prelude.Just _v)
                                                                        -> (Data.Monoid.<>)
                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                154)
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
                                                                                  @"useTcpForDnsLookups")
                                                                               _x
                                                                       in
                                                                         if (Prelude.==)
                                                                              _v
                                                                              Data.ProtoLens.fieldDefault then
                                                                             Data.Monoid.mempty
                                                                         else
                                                                             (Data.Monoid.<>)
                                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                  160)
                                                                               ((Prelude..)
                                                                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                  (\ b
                                                                                     -> if b then
                                                                                            1
                                                                                        else
                                                                                            0)
                                                                                  _v))
                                                                      ((Data.Monoid.<>)
                                                                         (case
                                                                              Lens.Family2.view
                                                                                (Data.ProtoLens.Field.field
                                                                                   @"maybe'dnsResolutionConfig")
                                                                                _x
                                                                          of
                                                                            Prelude.Nothing
                                                                              -> Data.Monoid.mempty
                                                                            (Prelude.Just _v)
                                                                              -> (Data.Monoid.<>)
                                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                      242)
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
                                                                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                               (\ _v
                                                                                  -> (Data.Monoid.<>)
                                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                          170)
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
                                                                               (Lens.Family2.view
                                                                                  (Data.ProtoLens.Field.field
                                                                                     @"vec'bootstrapExtensions")
                                                                                  _x))
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
                                                                                             Data.ProtoLens.encodeMessage
                                                                                             _v))
                                                                                  (Lens.Family2.view
                                                                                     (Data.ProtoLens.Field.field
                                                                                        @"vec'fatalActions")
                                                                                     _x))
                                                                               ((Data.Monoid.<>)
                                                                                  (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                                     (\ _v
                                                                                        -> (Data.Monoid.<>)
                                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                178)
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
                                                                                     (Lens.Family2.view
                                                                                        (Data.ProtoLens.Field.field
                                                                                           @"vec'configSources")
                                                                                        _x))
                                                                                  ((Data.Monoid.<>)
                                                                                     (case
                                                                                          Lens.Family2.view
                                                                                            (Data.ProtoLens.Field.field
                                                                                               @"maybe'defaultConfigSource")
                                                                                            _x
                                                                                      of
                                                                                        Prelude.Nothing
                                                                                          -> Data.Monoid.mempty
                                                                                        (Prelude.Just _v)
                                                                                          -> (Data.Monoid.<>)
                                                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                  186)
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
                                                                                                    @"defaultSocketInterface")
                                                                                                 _x
                                                                                         in
                                                                                           if (Prelude.==)
                                                                                                _v
                                                                                                Data.ProtoLens.fieldDefault then
                                                                                               Data.Monoid.mempty
                                                                                           else
                                                                                               (Data.Monoid.<>)
                                                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                    194)
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
                                                                                           (Data.Monoid.mconcat
                                                                                              (Prelude.map
                                                                                                 (\ _v
                                                                                                    -> (Data.Monoid.<>)
                                                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                            202)
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
                                                                                                            (Lens.Family2.set
                                                                                                               (Data.ProtoLens.Field.field
                                                                                                                  @"key")
                                                                                                               (Prelude.fst
                                                                                                                  _v)
                                                                                                               (Lens.Family2.set
                                                                                                                  (Data.ProtoLens.Field.field
                                                                                                                     @"value")
                                                                                                                  (Prelude.snd
                                                                                                                     _v)
                                                                                                                  (Data.ProtoLens.defMessage ::
                                                                                                                     Bootstrap'CertificateProviderInstancesEntry)))))
                                                                                                 (Data.Map.toList
                                                                                                    (Lens.Family2.view
                                                                                                       (Data.ProtoLens.Field.field
                                                                                                          @"certificateProviderInstances")
                                                                                                       _x))))
                                                                                           ((Data.Monoid.<>)
                                                                                              (case
                                                                                                   Lens.Family2.view
                                                                                                     (Data.ProtoLens.Field.field
                                                                                                        @"maybe'statsFlush")
                                                                                                     _x
                                                                                               of
                                                                                                 Prelude.Nothing
                                                                                                   -> Data.Monoid.mempty
                                                                                                 (Prelude.Just (Bootstrap'StatsFlushOnAdmin v))
                                                                                                   -> (Data.Monoid.<>)
                                                                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                           232)
                                                                                                        ((Prelude..)
                                                                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                           (\ b
                                                                                                              -> if b then
                                                                                                                     1
                                                                                                                 else
                                                                                                                     0)
                                                                                                           v))
                                                                                              (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                                                 (Lens.Family2.view
                                                                                                    Data.ProtoLens.unknownFields
                                                                                                    _x)))))))))))))))))))))))))))))
instance Control.DeepSeq.NFData Bootstrap where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Bootstrap'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Bootstrap'node x__)
                (Control.DeepSeq.deepseq
                   (_Bootstrap'nodeContextParams x__)
                   (Control.DeepSeq.deepseq
                      (_Bootstrap'staticResources x__)
                      (Control.DeepSeq.deepseq
                         (_Bootstrap'dynamicResources x__)
                         (Control.DeepSeq.deepseq
                            (_Bootstrap'clusterManager x__)
                            (Control.DeepSeq.deepseq
                               (_Bootstrap'hdsConfig x__)
                               (Control.DeepSeq.deepseq
                                  (_Bootstrap'flagsPath x__)
                                  (Control.DeepSeq.deepseq
                                     (_Bootstrap'statsSinks x__)
                                     (Control.DeepSeq.deepseq
                                        (_Bootstrap'statsConfig x__)
                                        (Control.DeepSeq.deepseq
                                           (_Bootstrap'statsFlushInterval x__)
                                           (Control.DeepSeq.deepseq
                                              (_Bootstrap'watchdog x__)
                                              (Control.DeepSeq.deepseq
                                                 (_Bootstrap'watchdogs x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_Bootstrap'tracing x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_Bootstrap'layeredRuntime x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_Bootstrap'admin x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_Bootstrap'overloadManager x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_Bootstrap'enableDispatcherStats
                                                                   x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_Bootstrap'headerPrefix x__)
                                                                   (Control.DeepSeq.deepseq
                                                                      (_Bootstrap'statsServerVersionOverride
                                                                         x__)
                                                                      (Control.DeepSeq.deepseq
                                                                         (_Bootstrap'useTcpForDnsLookups
                                                                            x__)
                                                                         (Control.DeepSeq.deepseq
                                                                            (_Bootstrap'dnsResolutionConfig
                                                                               x__)
                                                                            (Control.DeepSeq.deepseq
                                                                               (_Bootstrap'bootstrapExtensions
                                                                                  x__)
                                                                               (Control.DeepSeq.deepseq
                                                                                  (_Bootstrap'fatalActions
                                                                                     x__)
                                                                                  (Control.DeepSeq.deepseq
                                                                                     (_Bootstrap'configSources
                                                                                        x__)
                                                                                     (Control.DeepSeq.deepseq
                                                                                        (_Bootstrap'defaultConfigSource
                                                                                           x__)
                                                                                        (Control.DeepSeq.deepseq
                                                                                           (_Bootstrap'defaultSocketInterface
                                                                                              x__)
                                                                                           (Control.DeepSeq.deepseq
                                                                                              (_Bootstrap'certificateProviderInstances
                                                                                                 x__)
                                                                                              (Control.DeepSeq.deepseq
                                                                                                 (_Bootstrap'statsFlush
                                                                                                    x__)
                                                                                                 ()))))))))))))))))))))))))))))
instance Control.DeepSeq.NFData Bootstrap'StatsFlush where
  rnf (Bootstrap'StatsFlushOnAdmin x__) = Control.DeepSeq.rnf x__
_Bootstrap'StatsFlushOnAdmin ::
  Data.ProtoLens.Prism.Prism' Bootstrap'StatsFlush Prelude.Bool
_Bootstrap'StatsFlushOnAdmin
  = Data.ProtoLens.Prism.prism'
      Bootstrap'StatsFlushOnAdmin
      (\ p__
         -> case p__ of {
              (Bootstrap'StatsFlushOnAdmin p__val) -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.key' @:: Lens' Bootstrap'CertificateProviderInstancesEntry Data.Text.Text@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.value' @:: Lens' Bootstrap'CertificateProviderInstancesEntry Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'value' @:: Lens' Bootstrap'CertificateProviderInstancesEntry (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)@ -}
data Bootstrap'CertificateProviderInstancesEntry
  = Bootstrap'CertificateProviderInstancesEntry'_constructor {_Bootstrap'CertificateProviderInstancesEntry'key :: !Data.Text.Text,
                                                              _Bootstrap'CertificateProviderInstancesEntry'value :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig),
                                                              _Bootstrap'CertificateProviderInstancesEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Bootstrap'CertificateProviderInstancesEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Bootstrap'CertificateProviderInstancesEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'CertificateProviderInstancesEntry'key
           (\ x__ y__
              -> x__ {_Bootstrap'CertificateProviderInstancesEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap'CertificateProviderInstancesEntry "value" Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'CertificateProviderInstancesEntry'value
           (\ x__ y__
              -> x__ {_Bootstrap'CertificateProviderInstancesEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Bootstrap'CertificateProviderInstancesEntry "maybe'value" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'CertificateProviderInstancesEntry'value
           (\ x__ y__
              -> x__ {_Bootstrap'CertificateProviderInstancesEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Bootstrap'CertificateProviderInstancesEntry where
  messageName _
    = Data.Text.pack
        "envoy.config.bootstrap.v3.Bootstrap.CertificateProviderInstancesEntry"
  packedMessageDescriptor _
    = "\n\
      \!CertificateProviderInstancesEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2@\n\
      \\ENQvalue\CAN\STX \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap'CertificateProviderInstancesEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap'CertificateProviderInstancesEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Bootstrap'CertificateProviderInstancesEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_Bootstrap'CertificateProviderInstancesEntry'_unknownFields = y__})
  defMessage
    = Bootstrap'CertificateProviderInstancesEntry'_constructor
        {_Bootstrap'CertificateProviderInstancesEntry'key = Data.ProtoLens.fieldDefault,
         _Bootstrap'CertificateProviderInstancesEntry'value = Prelude.Nothing,
         _Bootstrap'CertificateProviderInstancesEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Bootstrap'CertificateProviderInstancesEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser Bootstrap'CertificateProviderInstancesEntry
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
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
          (do loop Data.ProtoLens.defMessage)
          "CertificateProviderInstancesEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
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
instance Control.DeepSeq.NFData Bootstrap'CertificateProviderInstancesEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Bootstrap'CertificateProviderInstancesEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Bootstrap'CertificateProviderInstancesEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_Bootstrap'CertificateProviderInstancesEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.ldsConfig' @:: Lens' Bootstrap'DynamicResources Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'ldsConfig' @:: Lens' Bootstrap'DynamicResources (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.ldsResourcesLocator' @:: Lens' Bootstrap'DynamicResources Data.Text.Text@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.cdsConfig' @:: Lens' Bootstrap'DynamicResources Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'cdsConfig' @:: Lens' Bootstrap'DynamicResources (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.cdsResourcesLocator' @:: Lens' Bootstrap'DynamicResources Data.Text.Text@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.adsConfig' @:: Lens' Bootstrap'DynamicResources Proto.Envoy.Config.Core.V3.ConfigSource.ApiConfigSource@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'adsConfig' @:: Lens' Bootstrap'DynamicResources (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ApiConfigSource)@ -}
data Bootstrap'DynamicResources
  = Bootstrap'DynamicResources'_constructor {_Bootstrap'DynamicResources'ldsConfig :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource),
                                             _Bootstrap'DynamicResources'ldsResourcesLocator :: !Data.Text.Text,
                                             _Bootstrap'DynamicResources'cdsConfig :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource),
                                             _Bootstrap'DynamicResources'cdsResourcesLocator :: !Data.Text.Text,
                                             _Bootstrap'DynamicResources'adsConfig :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ApiConfigSource),
                                             _Bootstrap'DynamicResources'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Bootstrap'DynamicResources where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Bootstrap'DynamicResources "ldsConfig" Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'DynamicResources'ldsConfig
           (\ x__ y__ -> x__ {_Bootstrap'DynamicResources'ldsConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Bootstrap'DynamicResources "maybe'ldsConfig" (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'DynamicResources'ldsConfig
           (\ x__ y__ -> x__ {_Bootstrap'DynamicResources'ldsConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap'DynamicResources "ldsResourcesLocator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'DynamicResources'ldsResourcesLocator
           (\ x__ y__
              -> x__ {_Bootstrap'DynamicResources'ldsResourcesLocator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap'DynamicResources "cdsConfig" Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'DynamicResources'cdsConfig
           (\ x__ y__ -> x__ {_Bootstrap'DynamicResources'cdsConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Bootstrap'DynamicResources "maybe'cdsConfig" (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'DynamicResources'cdsConfig
           (\ x__ y__ -> x__ {_Bootstrap'DynamicResources'cdsConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap'DynamicResources "cdsResourcesLocator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'DynamicResources'cdsResourcesLocator
           (\ x__ y__
              -> x__ {_Bootstrap'DynamicResources'cdsResourcesLocator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap'DynamicResources "adsConfig" Proto.Envoy.Config.Core.V3.ConfigSource.ApiConfigSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'DynamicResources'adsConfig
           (\ x__ y__ -> x__ {_Bootstrap'DynamicResources'adsConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Bootstrap'DynamicResources "maybe'adsConfig" (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ApiConfigSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'DynamicResources'adsConfig
           (\ x__ y__ -> x__ {_Bootstrap'DynamicResources'adsConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message Bootstrap'DynamicResources where
  messageName _
    = Data.Text.pack
        "envoy.config.bootstrap.v3.Bootstrap.DynamicResources"
  packedMessageDescriptor _
    = "\n\
      \\DLEDynamicResources\DC2A\n\
      \\n\
      \lds_config\CAN\SOH \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\tldsConfig\DC22\n\
      \\NAKlds_resources_locator\CAN\ENQ \SOH(\tR\DC3ldsResourcesLocator\DC2A\n\
      \\n\
      \cds_config\CAN\STX \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\tcdsConfig\DC22\n\
      \\NAKcds_resources_locator\CAN\ACK \SOH(\tR\DC3cdsResourcesLocator\DC2D\n\
      \\n\
      \ads_config\CAN\ETX \SOH(\v2%.envoy.config.core.v3.ApiConfigSourceR\tadsConfig:;\154\197\136\RS6\n\
      \4envoy.config.bootstrap.v2.Bootstrap.DynamicResourcesJ\EOT\b\EOT\DLE\ENQ"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ldsConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lds_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ldsConfig")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap'DynamicResources
        ldsResourcesLocator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lds_resources_locator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"ldsResourcesLocator")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap'DynamicResources
        cdsConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cds_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cdsConfig")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap'DynamicResources
        cdsResourcesLocator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cds_resources_locator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"cdsResourcesLocator")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap'DynamicResources
        adsConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ads_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.ConfigSource.ApiConfigSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'adsConfig")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap'DynamicResources
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, ldsConfig__field_descriptor),
           (Data.ProtoLens.Tag 5, ldsResourcesLocator__field_descriptor),
           (Data.ProtoLens.Tag 2, cdsConfig__field_descriptor),
           (Data.ProtoLens.Tag 6, cdsResourcesLocator__field_descriptor),
           (Data.ProtoLens.Tag 3, adsConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Bootstrap'DynamicResources'_unknownFields
        (\ x__ y__
           -> x__ {_Bootstrap'DynamicResources'_unknownFields = y__})
  defMessage
    = Bootstrap'DynamicResources'_constructor
        {_Bootstrap'DynamicResources'ldsConfig = Prelude.Nothing,
         _Bootstrap'DynamicResources'ldsResourcesLocator = Data.ProtoLens.fieldDefault,
         _Bootstrap'DynamicResources'cdsConfig = Prelude.Nothing,
         _Bootstrap'DynamicResources'cdsResourcesLocator = Data.ProtoLens.fieldDefault,
         _Bootstrap'DynamicResources'adsConfig = Prelude.Nothing,
         _Bootstrap'DynamicResources'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Bootstrap'DynamicResources
          -> Data.ProtoLens.Encoding.Bytes.Parser Bootstrap'DynamicResources
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
                                       "lds_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ldsConfig") y x)
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
                                       "lds_resources_locator"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"ldsResourcesLocator") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cds_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"cdsConfig") y x)
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
                                       "cds_resources_locator"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cdsResourcesLocator") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "ads_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"adsConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DynamicResources"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'ldsConfig") _x
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
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"ldsResourcesLocator") _x
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
                          (Data.ProtoLens.Field.field @"maybe'cdsConfig") _x
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
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"cdsResourcesLocator") _x
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
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8
                                  _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'adsConfig") _x
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
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData Bootstrap'DynamicResources where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Bootstrap'DynamicResources'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Bootstrap'DynamicResources'ldsConfig x__)
                (Control.DeepSeq.deepseq
                   (_Bootstrap'DynamicResources'ldsResourcesLocator x__)
                   (Control.DeepSeq.deepseq
                      (_Bootstrap'DynamicResources'cdsConfig x__)
                      (Control.DeepSeq.deepseq
                         (_Bootstrap'DynamicResources'cdsResourcesLocator x__)
                         (Control.DeepSeq.deepseq
                            (_Bootstrap'DynamicResources'adsConfig x__) ())))))
{- | Fields :
     
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.listeners' @:: Lens' Bootstrap'StaticResources [Proto.Envoy.Config.Listener.V3.Listener.Listener]@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.vec'listeners' @:: Lens' Bootstrap'StaticResources (Data.Vector.Vector Proto.Envoy.Config.Listener.V3.Listener.Listener)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.clusters' @:: Lens' Bootstrap'StaticResources [Proto.Envoy.Config.Cluster.V3.Cluster.Cluster]@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.vec'clusters' @:: Lens' Bootstrap'StaticResources (Data.Vector.Vector Proto.Envoy.Config.Cluster.V3.Cluster.Cluster)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.secrets' @:: Lens' Bootstrap'StaticResources [Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.Secret]@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.vec'secrets' @:: Lens' Bootstrap'StaticResources (Data.Vector.Vector Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.Secret)@ -}
data Bootstrap'StaticResources
  = Bootstrap'StaticResources'_constructor {_Bootstrap'StaticResources'listeners :: !(Data.Vector.Vector Proto.Envoy.Config.Listener.V3.Listener.Listener),
                                            _Bootstrap'StaticResources'clusters :: !(Data.Vector.Vector Proto.Envoy.Config.Cluster.V3.Cluster.Cluster),
                                            _Bootstrap'StaticResources'secrets :: !(Data.Vector.Vector Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.Secret),
                                            _Bootstrap'StaticResources'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Bootstrap'StaticResources where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Bootstrap'StaticResources "listeners" [Proto.Envoy.Config.Listener.V3.Listener.Listener] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'StaticResources'listeners
           (\ x__ y__ -> x__ {_Bootstrap'StaticResources'listeners = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Bootstrap'StaticResources "vec'listeners" (Data.Vector.Vector Proto.Envoy.Config.Listener.V3.Listener.Listener) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'StaticResources'listeners
           (\ x__ y__ -> x__ {_Bootstrap'StaticResources'listeners = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap'StaticResources "clusters" [Proto.Envoy.Config.Cluster.V3.Cluster.Cluster] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'StaticResources'clusters
           (\ x__ y__ -> x__ {_Bootstrap'StaticResources'clusters = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Bootstrap'StaticResources "vec'clusters" (Data.Vector.Vector Proto.Envoy.Config.Cluster.V3.Cluster.Cluster) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'StaticResources'clusters
           (\ x__ y__ -> x__ {_Bootstrap'StaticResources'clusters = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bootstrap'StaticResources "secrets" [Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.Secret] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'StaticResources'secrets
           (\ x__ y__ -> x__ {_Bootstrap'StaticResources'secrets = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Bootstrap'StaticResources "vec'secrets" (Data.Vector.Vector Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.Secret) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bootstrap'StaticResources'secrets
           (\ x__ y__ -> x__ {_Bootstrap'StaticResources'secrets = y__}))
        Prelude.id
instance Data.ProtoLens.Message Bootstrap'StaticResources where
  messageName _
    = Data.Text.pack
        "envoy.config.bootstrap.v3.Bootstrap.StaticResources"
  packedMessageDescriptor _
    = "\n\
      \\SIStaticResources\DC2@\n\
      \\tlisteners\CAN\SOH \ETX(\v2\".envoy.config.listener.v3.ListenerR\tlisteners\DC2<\n\
      \\bclusters\CAN\STX \ETX(\v2 .envoy.config.cluster.v3.ClusterR\bclusters\DC2K\n\
      \\asecrets\CAN\ETX \ETX(\v21.envoy.extensions.transport_sockets.tls.v3.SecretR\asecrets::\154\197\136\RS5\n\
      \3envoy.config.bootstrap.v2.Bootstrap.StaticResources"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        listeners__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "listeners"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Listener.V3.Listener.Listener)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"listeners")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap'StaticResources
        clusters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "clusters"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Cluster.V3.Cluster.Cluster)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"clusters")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap'StaticResources
        secrets__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "secrets"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.Secret)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"secrets")) ::
              Data.ProtoLens.FieldDescriptor Bootstrap'StaticResources
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, listeners__field_descriptor),
           (Data.ProtoLens.Tag 2, clusters__field_descriptor),
           (Data.ProtoLens.Tag 3, secrets__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Bootstrap'StaticResources'_unknownFields
        (\ x__ y__
           -> x__ {_Bootstrap'StaticResources'_unknownFields = y__})
  defMessage
    = Bootstrap'StaticResources'_constructor
        {_Bootstrap'StaticResources'listeners = Data.Vector.Generic.empty,
         _Bootstrap'StaticResources'clusters = Data.Vector.Generic.empty,
         _Bootstrap'StaticResources'secrets = Data.Vector.Generic.empty,
         _Bootstrap'StaticResources'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Bootstrap'StaticResources
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Cluster.V3.Cluster.Cluster
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Listener.V3.Listener.Listener
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.Secret
                   -> Data.ProtoLens.Encoding.Bytes.Parser Bootstrap'StaticResources
        loop x mutable'clusters mutable'listeners mutable'secrets
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'clusters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'clusters)
                      frozen'listeners <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'listeners)
                      frozen'secrets <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'secrets)
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
                              (Data.ProtoLens.Field.field @"vec'clusters")
                              frozen'clusters
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'listeners")
                                 frozen'listeners
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'secrets") frozen'secrets x))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "listeners"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'listeners y)
                                loop x mutable'clusters v mutable'secrets
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "clusters"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'clusters y)
                                loop x v mutable'listeners mutable'secrets
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "secrets"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'secrets y)
                                loop x mutable'clusters mutable'listeners v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'clusters
                                  mutable'listeners
                                  mutable'secrets
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'clusters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              mutable'listeners <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              mutable'secrets <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'clusters
                mutable'listeners
                mutable'secrets)
          "StaticResources"
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
                   (Data.ProtoLens.Field.field @"vec'listeners") _x))
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
                      (Data.ProtoLens.Field.field @"vec'clusters") _x))
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
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'secrets") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Bootstrap'StaticResources where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Bootstrap'StaticResources'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Bootstrap'StaticResources'listeners x__)
                (Control.DeepSeq.deepseq
                   (_Bootstrap'StaticResources'clusters x__)
                   (Control.DeepSeq.deepseq
                      (_Bootstrap'StaticResources'secrets x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.localClusterName' @:: Lens' ClusterManager Data.Text.Text@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.outlierDetection' @:: Lens' ClusterManager ClusterManager'OutlierDetection@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'outlierDetection' @:: Lens' ClusterManager (Prelude.Maybe ClusterManager'OutlierDetection)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.upstreamBindConfig' @:: Lens' ClusterManager Proto.Envoy.Config.Core.V3.Address.BindConfig@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'upstreamBindConfig' @:: Lens' ClusterManager (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.BindConfig)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.loadStatsConfig' @:: Lens' ClusterManager Proto.Envoy.Config.Core.V3.ConfigSource.ApiConfigSource@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'loadStatsConfig' @:: Lens' ClusterManager (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ApiConfigSource)@ -}
data ClusterManager
  = ClusterManager'_constructor {_ClusterManager'localClusterName :: !Data.Text.Text,
                                 _ClusterManager'outlierDetection :: !(Prelude.Maybe ClusterManager'OutlierDetection),
                                 _ClusterManager'upstreamBindConfig :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.BindConfig),
                                 _ClusterManager'loadStatsConfig :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ApiConfigSource),
                                 _ClusterManager'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClusterManager where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClusterManager "localClusterName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterManager'localClusterName
           (\ x__ y__ -> x__ {_ClusterManager'localClusterName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterManager "outlierDetection" ClusterManager'OutlierDetection where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterManager'outlierDetection
           (\ x__ y__ -> x__ {_ClusterManager'outlierDetection = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClusterManager "maybe'outlierDetection" (Prelude.Maybe ClusterManager'OutlierDetection) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterManager'outlierDetection
           (\ x__ y__ -> x__ {_ClusterManager'outlierDetection = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterManager "upstreamBindConfig" Proto.Envoy.Config.Core.V3.Address.BindConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterManager'upstreamBindConfig
           (\ x__ y__ -> x__ {_ClusterManager'upstreamBindConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClusterManager "maybe'upstreamBindConfig" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.BindConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterManager'upstreamBindConfig
           (\ x__ y__ -> x__ {_ClusterManager'upstreamBindConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterManager "loadStatsConfig" Proto.Envoy.Config.Core.V3.ConfigSource.ApiConfigSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterManager'loadStatsConfig
           (\ x__ y__ -> x__ {_ClusterManager'loadStatsConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClusterManager "maybe'loadStatsConfig" (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ApiConfigSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterManager'loadStatsConfig
           (\ x__ y__ -> x__ {_ClusterManager'loadStatsConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClusterManager where
  messageName _
    = Data.Text.pack "envoy.config.bootstrap.v3.ClusterManager"
  packedMessageDescriptor _
    = "\n\
      \\SOClusterManager\DC2,\n\
      \\DC2local_cluster_name\CAN\SOH \SOH(\tR\DLElocalClusterName\DC2g\n\
      \\DC1outlier_detection\CAN\STX \SOH(\v2:.envoy.config.bootstrap.v3.ClusterManager.OutlierDetectionR\DLEoutlierDetection\DC2R\n\
      \\DC4upstream_bind_config\CAN\ETX \SOH(\v2 .envoy.config.core.v3.BindConfigR\DC2upstreamBindConfig\DC2Q\n\
      \\DC1load_stats_config\CAN\EOT \SOH(\v2%.envoy.config.core.v3.ApiConfigSourceR\SIloadStatsConfig\SUB\201\SOH\n\
      \\DLEOutlierDetection\DC2$\n\
      \\SOevent_log_path\CAN\SOH \SOH(\tR\feventLogPath\DC2M\n\
      \\revent_service\CAN\STX \SOH(\v2(.envoy.config.core.v3.EventServiceConfigR\feventService:@\154\197\136\RS;\n\
      \9envoy.config.bootstrap.v2.ClusterManager.OutlierDetection:/\154\197\136\RS*\n\
      \(envoy.config.bootstrap.v2.ClusterManager"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        localClusterName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "local_cluster_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"localClusterName")) ::
              Data.ProtoLens.FieldDescriptor ClusterManager
        outlierDetection__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "outlier_detection"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ClusterManager'OutlierDetection)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'outlierDetection")) ::
              Data.ProtoLens.FieldDescriptor ClusterManager
        upstreamBindConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upstream_bind_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.BindConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'upstreamBindConfig")) ::
              Data.ProtoLens.FieldDescriptor ClusterManager
        loadStatsConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "load_stats_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.ConfigSource.ApiConfigSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'loadStatsConfig")) ::
              Data.ProtoLens.FieldDescriptor ClusterManager
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, localClusterName__field_descriptor),
           (Data.ProtoLens.Tag 2, outlierDetection__field_descriptor),
           (Data.ProtoLens.Tag 3, upstreamBindConfig__field_descriptor),
           (Data.ProtoLens.Tag 4, loadStatsConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClusterManager'_unknownFields
        (\ x__ y__ -> x__ {_ClusterManager'_unknownFields = y__})
  defMessage
    = ClusterManager'_constructor
        {_ClusterManager'localClusterName = Data.ProtoLens.fieldDefault,
         _ClusterManager'outlierDetection = Prelude.Nothing,
         _ClusterManager'upstreamBindConfig = Prelude.Nothing,
         _ClusterManager'loadStatsConfig = Prelude.Nothing,
         _ClusterManager'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClusterManager
          -> Data.ProtoLens.Encoding.Bytes.Parser ClusterManager
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
                                       "local_cluster_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"localClusterName") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "outlier_detection"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"outlierDetection") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "upstream_bind_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"upstreamBindConfig") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "load_stats_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"loadStatsConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ClusterManager"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"localClusterName") _x
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
                       (Data.ProtoLens.Field.field @"maybe'outlierDetection") _x
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
                          (Data.ProtoLens.Field.field @"maybe'upstreamBindConfig") _x
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
                             (Data.ProtoLens.Field.field @"maybe'loadStatsConfig") _x
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
instance Control.DeepSeq.NFData ClusterManager where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClusterManager'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ClusterManager'localClusterName x__)
                (Control.DeepSeq.deepseq
                   (_ClusterManager'outlierDetection x__)
                   (Control.DeepSeq.deepseq
                      (_ClusterManager'upstreamBindConfig x__)
                      (Control.DeepSeq.deepseq
                         (_ClusterManager'loadStatsConfig x__) ()))))
{- | Fields :
     
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.eventLogPath' @:: Lens' ClusterManager'OutlierDetection Data.Text.Text@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.eventService' @:: Lens' ClusterManager'OutlierDetection Proto.Envoy.Config.Core.V3.EventServiceConfig.EventServiceConfig@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'eventService' @:: Lens' ClusterManager'OutlierDetection (Prelude.Maybe Proto.Envoy.Config.Core.V3.EventServiceConfig.EventServiceConfig)@ -}
data ClusterManager'OutlierDetection
  = ClusterManager'OutlierDetection'_constructor {_ClusterManager'OutlierDetection'eventLogPath :: !Data.Text.Text,
                                                  _ClusterManager'OutlierDetection'eventService :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.EventServiceConfig.EventServiceConfig),
                                                  _ClusterManager'OutlierDetection'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClusterManager'OutlierDetection where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClusterManager'OutlierDetection "eventLogPath" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterManager'OutlierDetection'eventLogPath
           (\ x__ y__
              -> x__ {_ClusterManager'OutlierDetection'eventLogPath = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterManager'OutlierDetection "eventService" Proto.Envoy.Config.Core.V3.EventServiceConfig.EventServiceConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterManager'OutlierDetection'eventService
           (\ x__ y__
              -> x__ {_ClusterManager'OutlierDetection'eventService = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClusterManager'OutlierDetection "maybe'eventService" (Prelude.Maybe Proto.Envoy.Config.Core.V3.EventServiceConfig.EventServiceConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterManager'OutlierDetection'eventService
           (\ x__ y__
              -> x__ {_ClusterManager'OutlierDetection'eventService = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClusterManager'OutlierDetection where
  messageName _
    = Data.Text.pack
        "envoy.config.bootstrap.v3.ClusterManager.OutlierDetection"
  packedMessageDescriptor _
    = "\n\
      \\DLEOutlierDetection\DC2$\n\
      \\SOevent_log_path\CAN\SOH \SOH(\tR\feventLogPath\DC2M\n\
      \\revent_service\CAN\STX \SOH(\v2(.envoy.config.core.v3.EventServiceConfigR\feventService:@\154\197\136\RS;\n\
      \9envoy.config.bootstrap.v2.ClusterManager.OutlierDetection"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        eventLogPath__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "event_log_path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"eventLogPath")) ::
              Data.ProtoLens.FieldDescriptor ClusterManager'OutlierDetection
        eventService__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "event_service"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.EventServiceConfig.EventServiceConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'eventService")) ::
              Data.ProtoLens.FieldDescriptor ClusterManager'OutlierDetection
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, eventLogPath__field_descriptor),
           (Data.ProtoLens.Tag 2, eventService__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClusterManager'OutlierDetection'_unknownFields
        (\ x__ y__
           -> x__ {_ClusterManager'OutlierDetection'_unknownFields = y__})
  defMessage
    = ClusterManager'OutlierDetection'_constructor
        {_ClusterManager'OutlierDetection'eventLogPath = Data.ProtoLens.fieldDefault,
         _ClusterManager'OutlierDetection'eventService = Prelude.Nothing,
         _ClusterManager'OutlierDetection'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClusterManager'OutlierDetection
          -> Data.ProtoLens.Encoding.Bytes.Parser ClusterManager'OutlierDetection
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
                                       "event_log_path"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"eventLogPath") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "event_service"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"eventService") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "OutlierDetection"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"eventLogPath") _x
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
                       (Data.ProtoLens.Field.field @"maybe'eventService") _x
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
instance Control.DeepSeq.NFData ClusterManager'OutlierDetection where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClusterManager'OutlierDetection'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ClusterManager'OutlierDetection'eventLogPath x__)
                (Control.DeepSeq.deepseq
                   (_ClusterManager'OutlierDetection'eventService x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.config' @:: Lens' FatalAction Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'config' @:: Lens' FatalAction (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)@ -}
data FatalAction
  = FatalAction'_constructor {_FatalAction'config :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig),
                              _FatalAction'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FatalAction where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FatalAction "config" Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FatalAction'config (\ x__ y__ -> x__ {_FatalAction'config = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FatalAction "maybe'config" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FatalAction'config (\ x__ y__ -> x__ {_FatalAction'config = y__}))
        Prelude.id
instance Data.ProtoLens.Message FatalAction where
  messageName _
    = Data.Text.pack "envoy.config.bootstrap.v3.FatalAction"
  packedMessageDescriptor _
    = "\n\
      \\vFatalAction\DC2B\n\
      \\ACKconfig\CAN\SOH \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\ACKconfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        config__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'config")) ::
              Data.ProtoLens.FieldDescriptor FatalAction
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, config__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FatalAction'_unknownFields
        (\ x__ y__ -> x__ {_FatalAction'_unknownFields = y__})
  defMessage
    = FatalAction'_constructor
        {_FatalAction'config = Prelude.Nothing,
         _FatalAction'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FatalAction -> Data.ProtoLens.Encoding.Bytes.Parser FatalAction
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
                                       "config"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"config") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FatalAction"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'config") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData FatalAction where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FatalAction'_unknownFields x__)
             (Control.DeepSeq.deepseq (_FatalAction'config x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.layers' @:: Lens' LayeredRuntime [RuntimeLayer]@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.vec'layers' @:: Lens' LayeredRuntime (Data.Vector.Vector RuntimeLayer)@ -}
data LayeredRuntime
  = LayeredRuntime'_constructor {_LayeredRuntime'layers :: !(Data.Vector.Vector RuntimeLayer),
                                 _LayeredRuntime'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LayeredRuntime where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LayeredRuntime "layers" [RuntimeLayer] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LayeredRuntime'layers
           (\ x__ y__ -> x__ {_LayeredRuntime'layers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField LayeredRuntime "vec'layers" (Data.Vector.Vector RuntimeLayer) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LayeredRuntime'layers
           (\ x__ y__ -> x__ {_LayeredRuntime'layers = y__}))
        Prelude.id
instance Data.ProtoLens.Message LayeredRuntime where
  messageName _
    = Data.Text.pack "envoy.config.bootstrap.v3.LayeredRuntime"
  packedMessageDescriptor _
    = "\n\
      \\SOLayeredRuntime\DC2?\n\
      \\ACKlayers\CAN\SOH \ETX(\v2'.envoy.config.bootstrap.v3.RuntimeLayerR\ACKlayers:/\154\197\136\RS*\n\
      \(envoy.config.bootstrap.v2.LayeredRuntime"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        layers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "layers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RuntimeLayer)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"layers")) ::
              Data.ProtoLens.FieldDescriptor LayeredRuntime
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, layers__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LayeredRuntime'_unknownFields
        (\ x__ y__ -> x__ {_LayeredRuntime'_unknownFields = y__})
  defMessage
    = LayeredRuntime'_constructor
        {_LayeredRuntime'layers = Data.Vector.Generic.empty,
         _LayeredRuntime'_unknownFields = []}
  parseMessage
    = let
        loop ::
          LayeredRuntime
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld RuntimeLayer
             -> Data.ProtoLens.Encoding.Bytes.Parser LayeredRuntime
        loop x mutable'layers
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'layers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'layers)
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
                              (Data.ProtoLens.Field.field @"vec'layers") frozen'layers x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "layers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'layers y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'layers
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'layers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'layers)
          "LayeredRuntime"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'layers") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData LayeredRuntime where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LayeredRuntime'_unknownFields x__)
             (Control.DeepSeq.deepseq (_LayeredRuntime'layers x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.symlinkRoot' @:: Lens' Runtime Data.Text.Text@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.subdirectory' @:: Lens' Runtime Data.Text.Text@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.overrideSubdirectory' @:: Lens' Runtime Data.Text.Text@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.base' @:: Lens' Runtime Proto.Google.Protobuf.Struct.Struct@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'base' @:: Lens' Runtime (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct)@ -}
data Runtime
  = Runtime'_constructor {_Runtime'symlinkRoot :: !Data.Text.Text,
                          _Runtime'subdirectory :: !Data.Text.Text,
                          _Runtime'overrideSubdirectory :: !Data.Text.Text,
                          _Runtime'base :: !(Prelude.Maybe Proto.Google.Protobuf.Struct.Struct),
                          _Runtime'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Runtime where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Runtime "symlinkRoot" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Runtime'symlinkRoot
           (\ x__ y__ -> x__ {_Runtime'symlinkRoot = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Runtime "subdirectory" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Runtime'subdirectory
           (\ x__ y__ -> x__ {_Runtime'subdirectory = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Runtime "overrideSubdirectory" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Runtime'overrideSubdirectory
           (\ x__ y__ -> x__ {_Runtime'overrideSubdirectory = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Runtime "base" Proto.Google.Protobuf.Struct.Struct where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Runtime'base (\ x__ y__ -> x__ {_Runtime'base = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Runtime "maybe'base" (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Runtime'base (\ x__ y__ -> x__ {_Runtime'base = y__}))
        Prelude.id
instance Data.ProtoLens.Message Runtime where
  messageName _ = Data.Text.pack "envoy.config.bootstrap.v3.Runtime"
  packedMessageDescriptor _
    = "\n\
      \\aRuntime\DC2!\n\
      \\fsymlink_root\CAN\SOH \SOH(\tR\vsymlinkRoot\DC2\"\n\
      \\fsubdirectory\CAN\STX \SOH(\tR\fsubdirectory\DC23\n\
      \\NAKoverride_subdirectory\CAN\ETX \SOH(\tR\DC4overrideSubdirectory\DC2+\n\
      \\EOTbase\CAN\EOT \SOH(\v2\ETB.google.protobuf.StructR\EOTbase:(\154\197\136\RS#\n\
      \!envoy.config.bootstrap.v2.Runtime"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        symlinkRoot__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "symlink_root"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"symlinkRoot")) ::
              Data.ProtoLens.FieldDescriptor Runtime
        subdirectory__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "subdirectory"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"subdirectory")) ::
              Data.ProtoLens.FieldDescriptor Runtime
        overrideSubdirectory__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "override_subdirectory"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"overrideSubdirectory")) ::
              Data.ProtoLens.FieldDescriptor Runtime
        base__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "base"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Struct.Struct)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'base")) ::
              Data.ProtoLens.FieldDescriptor Runtime
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, symlinkRoot__field_descriptor),
           (Data.ProtoLens.Tag 2, subdirectory__field_descriptor),
           (Data.ProtoLens.Tag 3, overrideSubdirectory__field_descriptor),
           (Data.ProtoLens.Tag 4, base__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Runtime'_unknownFields
        (\ x__ y__ -> x__ {_Runtime'_unknownFields = y__})
  defMessage
    = Runtime'_constructor
        {_Runtime'symlinkRoot = Data.ProtoLens.fieldDefault,
         _Runtime'subdirectory = Data.ProtoLens.fieldDefault,
         _Runtime'overrideSubdirectory = Data.ProtoLens.fieldDefault,
         _Runtime'base = Prelude.Nothing, _Runtime'_unknownFields = []}
  parseMessage
    = let
        loop :: Runtime -> Data.ProtoLens.Encoding.Bytes.Parser Runtime
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
                                       "symlink_root"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"symlinkRoot") y x)
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
                                       "subdirectory"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"subdirectory") y x)
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
                                       "override_subdirectory"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"overrideSubdirectory") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "base"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"base") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Runtime"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"symlinkRoot") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"subdirectory") _x
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
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"overrideSubdirectory") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'base") _x
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
instance Control.DeepSeq.NFData Runtime where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Runtime'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Runtime'symlinkRoot x__)
                (Control.DeepSeq.deepseq
                   (_Runtime'subdirectory x__)
                   (Control.DeepSeq.deepseq
                      (_Runtime'overrideSubdirectory x__)
                      (Control.DeepSeq.deepseq (_Runtime'base x__) ()))))
{- | Fields :
     
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.name' @:: Lens' RuntimeLayer Data.Text.Text@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'layerSpecifier' @:: Lens' RuntimeLayer (Prelude.Maybe RuntimeLayer'LayerSpecifier)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'staticLayer' @:: Lens' RuntimeLayer (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.staticLayer' @:: Lens' RuntimeLayer Proto.Google.Protobuf.Struct.Struct@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'diskLayer' @:: Lens' RuntimeLayer (Prelude.Maybe RuntimeLayer'DiskLayer)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.diskLayer' @:: Lens' RuntimeLayer RuntimeLayer'DiskLayer@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'adminLayer' @:: Lens' RuntimeLayer (Prelude.Maybe RuntimeLayer'AdminLayer)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.adminLayer' @:: Lens' RuntimeLayer RuntimeLayer'AdminLayer@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'rtdsLayer' @:: Lens' RuntimeLayer (Prelude.Maybe RuntimeLayer'RtdsLayer)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.rtdsLayer' @:: Lens' RuntimeLayer RuntimeLayer'RtdsLayer@ -}
data RuntimeLayer
  = RuntimeLayer'_constructor {_RuntimeLayer'name :: !Data.Text.Text,
                               _RuntimeLayer'layerSpecifier :: !(Prelude.Maybe RuntimeLayer'LayerSpecifier),
                               _RuntimeLayer'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RuntimeLayer where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data RuntimeLayer'LayerSpecifier
  = RuntimeLayer'StaticLayer !Proto.Google.Protobuf.Struct.Struct |
    RuntimeLayer'DiskLayer' !RuntimeLayer'DiskLayer |
    RuntimeLayer'AdminLayer' !RuntimeLayer'AdminLayer |
    RuntimeLayer'RtdsLayer' !RuntimeLayer'RtdsLayer
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField RuntimeLayer "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeLayer'name (\ x__ y__ -> x__ {_RuntimeLayer'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RuntimeLayer "maybe'layerSpecifier" (Prelude.Maybe RuntimeLayer'LayerSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeLayer'layerSpecifier
           (\ x__ y__ -> x__ {_RuntimeLayer'layerSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RuntimeLayer "maybe'staticLayer" (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeLayer'layerSpecifier
           (\ x__ y__ -> x__ {_RuntimeLayer'layerSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (RuntimeLayer'StaticLayer x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap RuntimeLayer'StaticLayer y__))
instance Data.ProtoLens.Field.HasField RuntimeLayer "staticLayer" Proto.Google.Protobuf.Struct.Struct where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeLayer'layerSpecifier
           (\ x__ y__ -> x__ {_RuntimeLayer'layerSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (RuntimeLayer'StaticLayer x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap RuntimeLayer'StaticLayer y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField RuntimeLayer "maybe'diskLayer" (Prelude.Maybe RuntimeLayer'DiskLayer) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeLayer'layerSpecifier
           (\ x__ y__ -> x__ {_RuntimeLayer'layerSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (RuntimeLayer'DiskLayer' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap RuntimeLayer'DiskLayer' y__))
instance Data.ProtoLens.Field.HasField RuntimeLayer "diskLayer" RuntimeLayer'DiskLayer where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeLayer'layerSpecifier
           (\ x__ y__ -> x__ {_RuntimeLayer'layerSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (RuntimeLayer'DiskLayer' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap RuntimeLayer'DiskLayer' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField RuntimeLayer "maybe'adminLayer" (Prelude.Maybe RuntimeLayer'AdminLayer) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeLayer'layerSpecifier
           (\ x__ y__ -> x__ {_RuntimeLayer'layerSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (RuntimeLayer'AdminLayer' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap RuntimeLayer'AdminLayer' y__))
instance Data.ProtoLens.Field.HasField RuntimeLayer "adminLayer" RuntimeLayer'AdminLayer where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeLayer'layerSpecifier
           (\ x__ y__ -> x__ {_RuntimeLayer'layerSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (RuntimeLayer'AdminLayer' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap RuntimeLayer'AdminLayer' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField RuntimeLayer "maybe'rtdsLayer" (Prelude.Maybe RuntimeLayer'RtdsLayer) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeLayer'layerSpecifier
           (\ x__ y__ -> x__ {_RuntimeLayer'layerSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (RuntimeLayer'RtdsLayer' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap RuntimeLayer'RtdsLayer' y__))
instance Data.ProtoLens.Field.HasField RuntimeLayer "rtdsLayer" RuntimeLayer'RtdsLayer where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeLayer'layerSpecifier
           (\ x__ y__ -> x__ {_RuntimeLayer'layerSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (RuntimeLayer'RtdsLayer' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap RuntimeLayer'RtdsLayer' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message RuntimeLayer where
  messageName _
    = Data.Text.pack "envoy.config.bootstrap.v3.RuntimeLayer"
  packedMessageDescriptor _
    = "\n\
      \\fRuntimeLayer\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2<\n\
      \\fstatic_layer\CAN\STX \SOH(\v2\ETB.google.protobuf.StructH\NULR\vstaticLayer\DC2R\n\
      \\n\
      \disk_layer\CAN\ETX \SOH(\v21.envoy.config.bootstrap.v3.RuntimeLayer.DiskLayerH\NULR\tdiskLayer\DC2U\n\
      \\vadmin_layer\CAN\EOT \SOH(\v22.envoy.config.bootstrap.v3.RuntimeLayer.AdminLayerH\NULR\n\
      \adminLayer\DC2R\n\
      \\n\
      \rtds_layer\CAN\ENQ \SOH(\v21.envoy.config.bootstrap.v3.RuntimeLayer.RtdsLayerH\NULR\trtdsLayer\SUB\193\SOH\n\
      \\tDiskLayer\DC2!\n\
      \\fsymlink_root\CAN\SOH \SOH(\tR\vsymlinkRoot\DC2\"\n\
      \\fsubdirectory\CAN\ETX \SOH(\tR\fsubdirectory\DC24\n\
      \\SYNappend_service_cluster\CAN\STX \SOH(\bR\DC4appendServiceCluster:7\154\197\136\RS2\n\
      \0envoy.config.bootstrap.v2.RuntimeLayer.DiskLayer\SUBF\n\
      \\n\
      \AdminLayer:8\154\197\136\RS3\n\
      \1envoy.config.bootstrap.v2.RuntimeLayer.AdminLayer\SUB\157\SOH\n\
      \\tRtdsLayer\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2C\n\
      \\vrtds_config\CAN\STX \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\n\
      \rtdsConfig:7\154\197\136\RS2\n\
      \0envoy.config.bootstrap.v2.RuntimeLayer.RtdsLayerB\SYN\n\
      \\SIlayer_specifier\DC2\ETX\248B\SOH:-\154\197\136\RS(\n\
      \&envoy.config.bootstrap.v2.RuntimeLayer"
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
              Data.ProtoLens.FieldDescriptor RuntimeLayer
        staticLayer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "static_layer"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Struct.Struct)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'staticLayer")) ::
              Data.ProtoLens.FieldDescriptor RuntimeLayer
        diskLayer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "disk_layer"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RuntimeLayer'DiskLayer)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'diskLayer")) ::
              Data.ProtoLens.FieldDescriptor RuntimeLayer
        adminLayer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "admin_layer"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RuntimeLayer'AdminLayer)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'adminLayer")) ::
              Data.ProtoLens.FieldDescriptor RuntimeLayer
        rtdsLayer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rtds_layer"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RuntimeLayer'RtdsLayer)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rtdsLayer")) ::
              Data.ProtoLens.FieldDescriptor RuntimeLayer
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, staticLayer__field_descriptor),
           (Data.ProtoLens.Tag 3, diskLayer__field_descriptor),
           (Data.ProtoLens.Tag 4, adminLayer__field_descriptor),
           (Data.ProtoLens.Tag 5, rtdsLayer__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RuntimeLayer'_unknownFields
        (\ x__ y__ -> x__ {_RuntimeLayer'_unknownFields = y__})
  defMessage
    = RuntimeLayer'_constructor
        {_RuntimeLayer'name = Data.ProtoLens.fieldDefault,
         _RuntimeLayer'layerSpecifier = Prelude.Nothing,
         _RuntimeLayer'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RuntimeLayer -> Data.ProtoLens.Encoding.Bytes.Parser RuntimeLayer
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
                                       "static_layer"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"staticLayer") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "disk_layer"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"diskLayer") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "admin_layer"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"adminLayer") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "rtds_layer"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"rtdsLayer") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RuntimeLayer"
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
                       (Data.ProtoLens.Field.field @"maybe'layerSpecifier") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (RuntimeLayer'StaticLayer v))
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
                   (Prelude.Just (RuntimeLayer'DiskLayer' v))
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
                   (Prelude.Just (RuntimeLayer'AdminLayer' v))
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
                   (Prelude.Just (RuntimeLayer'RtdsLayer' v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
instance Control.DeepSeq.NFData RuntimeLayer where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RuntimeLayer'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RuntimeLayer'name x__)
                (Control.DeepSeq.deepseq (_RuntimeLayer'layerSpecifier x__) ()))
instance Control.DeepSeq.NFData RuntimeLayer'LayerSpecifier where
  rnf (RuntimeLayer'StaticLayer x__) = Control.DeepSeq.rnf x__
  rnf (RuntimeLayer'DiskLayer' x__) = Control.DeepSeq.rnf x__
  rnf (RuntimeLayer'AdminLayer' x__) = Control.DeepSeq.rnf x__
  rnf (RuntimeLayer'RtdsLayer' x__) = Control.DeepSeq.rnf x__
_RuntimeLayer'StaticLayer ::
  Data.ProtoLens.Prism.Prism' RuntimeLayer'LayerSpecifier Proto.Google.Protobuf.Struct.Struct
_RuntimeLayer'StaticLayer
  = Data.ProtoLens.Prism.prism'
      RuntimeLayer'StaticLayer
      (\ p__
         -> case p__ of
              (RuntimeLayer'StaticLayer p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_RuntimeLayer'DiskLayer' ::
  Data.ProtoLens.Prism.Prism' RuntimeLayer'LayerSpecifier RuntimeLayer'DiskLayer
_RuntimeLayer'DiskLayer'
  = Data.ProtoLens.Prism.prism'
      RuntimeLayer'DiskLayer'
      (\ p__
         -> case p__ of
              (RuntimeLayer'DiskLayer' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_RuntimeLayer'AdminLayer' ::
  Data.ProtoLens.Prism.Prism' RuntimeLayer'LayerSpecifier RuntimeLayer'AdminLayer
_RuntimeLayer'AdminLayer'
  = Data.ProtoLens.Prism.prism'
      RuntimeLayer'AdminLayer'
      (\ p__
         -> case p__ of
              (RuntimeLayer'AdminLayer' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_RuntimeLayer'RtdsLayer' ::
  Data.ProtoLens.Prism.Prism' RuntimeLayer'LayerSpecifier RuntimeLayer'RtdsLayer
_RuntimeLayer'RtdsLayer'
  = Data.ProtoLens.Prism.prism'
      RuntimeLayer'RtdsLayer'
      (\ p__
         -> case p__ of
              (RuntimeLayer'RtdsLayer' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
      -}
data RuntimeLayer'AdminLayer
  = RuntimeLayer'AdminLayer'_constructor {_RuntimeLayer'AdminLayer'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RuntimeLayer'AdminLayer where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message RuntimeLayer'AdminLayer where
  messageName _
    = Data.Text.pack
        "envoy.config.bootstrap.v3.RuntimeLayer.AdminLayer"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \AdminLayer:8\154\197\136\RS3\n\
      \1envoy.config.bootstrap.v2.RuntimeLayer.AdminLayer"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RuntimeLayer'AdminLayer'_unknownFields
        (\ x__ y__ -> x__ {_RuntimeLayer'AdminLayer'_unknownFields = y__})
  defMessage
    = RuntimeLayer'AdminLayer'_constructor
        {_RuntimeLayer'AdminLayer'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RuntimeLayer'AdminLayer
          -> Data.ProtoLens.Encoding.Bytes.Parser RuntimeLayer'AdminLayer
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
          (do loop Data.ProtoLens.defMessage) "AdminLayer"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData RuntimeLayer'AdminLayer where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RuntimeLayer'AdminLayer'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.symlinkRoot' @:: Lens' RuntimeLayer'DiskLayer Data.Text.Text@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.subdirectory' @:: Lens' RuntimeLayer'DiskLayer Data.Text.Text@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.appendServiceCluster' @:: Lens' RuntimeLayer'DiskLayer Prelude.Bool@ -}
data RuntimeLayer'DiskLayer
  = RuntimeLayer'DiskLayer'_constructor {_RuntimeLayer'DiskLayer'symlinkRoot :: !Data.Text.Text,
                                         _RuntimeLayer'DiskLayer'subdirectory :: !Data.Text.Text,
                                         _RuntimeLayer'DiskLayer'appendServiceCluster :: !Prelude.Bool,
                                         _RuntimeLayer'DiskLayer'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RuntimeLayer'DiskLayer where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RuntimeLayer'DiskLayer "symlinkRoot" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeLayer'DiskLayer'symlinkRoot
           (\ x__ y__ -> x__ {_RuntimeLayer'DiskLayer'symlinkRoot = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RuntimeLayer'DiskLayer "subdirectory" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeLayer'DiskLayer'subdirectory
           (\ x__ y__ -> x__ {_RuntimeLayer'DiskLayer'subdirectory = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RuntimeLayer'DiskLayer "appendServiceCluster" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeLayer'DiskLayer'appendServiceCluster
           (\ x__ y__
              -> x__ {_RuntimeLayer'DiskLayer'appendServiceCluster = y__}))
        Prelude.id
instance Data.ProtoLens.Message RuntimeLayer'DiskLayer where
  messageName _
    = Data.Text.pack "envoy.config.bootstrap.v3.RuntimeLayer.DiskLayer"
  packedMessageDescriptor _
    = "\n\
      \\tDiskLayer\DC2!\n\
      \\fsymlink_root\CAN\SOH \SOH(\tR\vsymlinkRoot\DC2\"\n\
      \\fsubdirectory\CAN\ETX \SOH(\tR\fsubdirectory\DC24\n\
      \\SYNappend_service_cluster\CAN\STX \SOH(\bR\DC4appendServiceCluster:7\154\197\136\RS2\n\
      \0envoy.config.bootstrap.v2.RuntimeLayer.DiskLayer"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        symlinkRoot__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "symlink_root"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"symlinkRoot")) ::
              Data.ProtoLens.FieldDescriptor RuntimeLayer'DiskLayer
        subdirectory__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "subdirectory"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"subdirectory")) ::
              Data.ProtoLens.FieldDescriptor RuntimeLayer'DiskLayer
        appendServiceCluster__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "append_service_cluster"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"appendServiceCluster")) ::
              Data.ProtoLens.FieldDescriptor RuntimeLayer'DiskLayer
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, symlinkRoot__field_descriptor),
           (Data.ProtoLens.Tag 3, subdirectory__field_descriptor),
           (Data.ProtoLens.Tag 2, appendServiceCluster__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RuntimeLayer'DiskLayer'_unknownFields
        (\ x__ y__ -> x__ {_RuntimeLayer'DiskLayer'_unknownFields = y__})
  defMessage
    = RuntimeLayer'DiskLayer'_constructor
        {_RuntimeLayer'DiskLayer'symlinkRoot = Data.ProtoLens.fieldDefault,
         _RuntimeLayer'DiskLayer'subdirectory = Data.ProtoLens.fieldDefault,
         _RuntimeLayer'DiskLayer'appendServiceCluster = Data.ProtoLens.fieldDefault,
         _RuntimeLayer'DiskLayer'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RuntimeLayer'DiskLayer
          -> Data.ProtoLens.Encoding.Bytes.Parser RuntimeLayer'DiskLayer
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
                                       "symlink_root"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"symlinkRoot") y x)
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
                                       "subdirectory"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"subdirectory") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "append_service_cluster"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"appendServiceCluster") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DiskLayer"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"symlinkRoot") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"subdirectory") _x
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
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"appendServiceCluster") _x
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
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData RuntimeLayer'DiskLayer where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RuntimeLayer'DiskLayer'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RuntimeLayer'DiskLayer'symlinkRoot x__)
                (Control.DeepSeq.deepseq
                   (_RuntimeLayer'DiskLayer'subdirectory x__)
                   (Control.DeepSeq.deepseq
                      (_RuntimeLayer'DiskLayer'appendServiceCluster x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.name' @:: Lens' RuntimeLayer'RtdsLayer Data.Text.Text@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.rtdsConfig' @:: Lens' RuntimeLayer'RtdsLayer Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'rtdsConfig' @:: Lens' RuntimeLayer'RtdsLayer (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource)@ -}
data RuntimeLayer'RtdsLayer
  = RuntimeLayer'RtdsLayer'_constructor {_RuntimeLayer'RtdsLayer'name :: !Data.Text.Text,
                                         _RuntimeLayer'RtdsLayer'rtdsConfig :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource),
                                         _RuntimeLayer'RtdsLayer'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RuntimeLayer'RtdsLayer where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RuntimeLayer'RtdsLayer "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeLayer'RtdsLayer'name
           (\ x__ y__ -> x__ {_RuntimeLayer'RtdsLayer'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RuntimeLayer'RtdsLayer "rtdsConfig" Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeLayer'RtdsLayer'rtdsConfig
           (\ x__ y__ -> x__ {_RuntimeLayer'RtdsLayer'rtdsConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RuntimeLayer'RtdsLayer "maybe'rtdsConfig" (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RuntimeLayer'RtdsLayer'rtdsConfig
           (\ x__ y__ -> x__ {_RuntimeLayer'RtdsLayer'rtdsConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message RuntimeLayer'RtdsLayer where
  messageName _
    = Data.Text.pack "envoy.config.bootstrap.v3.RuntimeLayer.RtdsLayer"
  packedMessageDescriptor _
    = "\n\
      \\tRtdsLayer\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2C\n\
      \\vrtds_config\CAN\STX \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\n\
      \rtdsConfig:7\154\197\136\RS2\n\
      \0envoy.config.bootstrap.v2.RuntimeLayer.RtdsLayer"
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
              Data.ProtoLens.FieldDescriptor RuntimeLayer'RtdsLayer
        rtdsConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rtds_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rtdsConfig")) ::
              Data.ProtoLens.FieldDescriptor RuntimeLayer'RtdsLayer
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, rtdsConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RuntimeLayer'RtdsLayer'_unknownFields
        (\ x__ y__ -> x__ {_RuntimeLayer'RtdsLayer'_unknownFields = y__})
  defMessage
    = RuntimeLayer'RtdsLayer'_constructor
        {_RuntimeLayer'RtdsLayer'name = Data.ProtoLens.fieldDefault,
         _RuntimeLayer'RtdsLayer'rtdsConfig = Prelude.Nothing,
         _RuntimeLayer'RtdsLayer'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RuntimeLayer'RtdsLayer
          -> Data.ProtoLens.Encoding.Bytes.Parser RuntimeLayer'RtdsLayer
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
                                       "rtds_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"rtdsConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RtdsLayer"
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
                       (Data.ProtoLens.Field.field @"maybe'rtdsConfig") _x
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
instance Control.DeepSeq.NFData RuntimeLayer'RtdsLayer where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RuntimeLayer'RtdsLayer'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RuntimeLayer'RtdsLayer'name x__)
                (Control.DeepSeq.deepseq
                   (_RuntimeLayer'RtdsLayer'rtdsConfig x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.actions' @:: Lens' Watchdog [Watchdog'WatchdogAction]@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.vec'actions' @:: Lens' Watchdog (Data.Vector.Vector Watchdog'WatchdogAction)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.missTimeout' @:: Lens' Watchdog Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'missTimeout' @:: Lens' Watchdog (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.megamissTimeout' @:: Lens' Watchdog Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'megamissTimeout' @:: Lens' Watchdog (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.killTimeout' @:: Lens' Watchdog Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'killTimeout' @:: Lens' Watchdog (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maxKillTimeoutJitter' @:: Lens' Watchdog Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'maxKillTimeoutJitter' @:: Lens' Watchdog (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.multikillTimeout' @:: Lens' Watchdog Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'multikillTimeout' @:: Lens' Watchdog (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.multikillThreshold' @:: Lens' Watchdog Proto.Envoy.Type.V3.Percent.Percent@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'multikillThreshold' @:: Lens' Watchdog (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent)@ -}
data Watchdog
  = Watchdog'_constructor {_Watchdog'actions :: !(Data.Vector.Vector Watchdog'WatchdogAction),
                           _Watchdog'missTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                           _Watchdog'megamissTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                           _Watchdog'killTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                           _Watchdog'maxKillTimeoutJitter :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                           _Watchdog'multikillTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                           _Watchdog'multikillThreshold :: !(Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent),
                           _Watchdog'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Watchdog where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Watchdog "actions" [Watchdog'WatchdogAction] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Watchdog'actions (\ x__ y__ -> x__ {_Watchdog'actions = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Watchdog "vec'actions" (Data.Vector.Vector Watchdog'WatchdogAction) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Watchdog'actions (\ x__ y__ -> x__ {_Watchdog'actions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Watchdog "missTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Watchdog'missTimeout
           (\ x__ y__ -> x__ {_Watchdog'missTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Watchdog "maybe'missTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Watchdog'missTimeout
           (\ x__ y__ -> x__ {_Watchdog'missTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Watchdog "megamissTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Watchdog'megamissTimeout
           (\ x__ y__ -> x__ {_Watchdog'megamissTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Watchdog "maybe'megamissTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Watchdog'megamissTimeout
           (\ x__ y__ -> x__ {_Watchdog'megamissTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Watchdog "killTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Watchdog'killTimeout
           (\ x__ y__ -> x__ {_Watchdog'killTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Watchdog "maybe'killTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Watchdog'killTimeout
           (\ x__ y__ -> x__ {_Watchdog'killTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Watchdog "maxKillTimeoutJitter" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Watchdog'maxKillTimeoutJitter
           (\ x__ y__ -> x__ {_Watchdog'maxKillTimeoutJitter = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Watchdog "maybe'maxKillTimeoutJitter" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Watchdog'maxKillTimeoutJitter
           (\ x__ y__ -> x__ {_Watchdog'maxKillTimeoutJitter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Watchdog "multikillTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Watchdog'multikillTimeout
           (\ x__ y__ -> x__ {_Watchdog'multikillTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Watchdog "maybe'multikillTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Watchdog'multikillTimeout
           (\ x__ y__ -> x__ {_Watchdog'multikillTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Watchdog "multikillThreshold" Proto.Envoy.Type.V3.Percent.Percent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Watchdog'multikillThreshold
           (\ x__ y__ -> x__ {_Watchdog'multikillThreshold = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Watchdog "maybe'multikillThreshold" (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Watchdog'multikillThreshold
           (\ x__ y__ -> x__ {_Watchdog'multikillThreshold = y__}))
        Prelude.id
instance Data.ProtoLens.Message Watchdog where
  messageName _ = Data.Text.pack "envoy.config.bootstrap.v3.Watchdog"
  packedMessageDescriptor _
    = "\n\
      \\bWatchdog\DC2L\n\
      \\aactions\CAN\a \ETX(\v22.envoy.config.bootstrap.v3.Watchdog.WatchdogActionR\aactions\DC2<\n\
      \\fmiss_timeout\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\vmissTimeout\DC2D\n\
      \\DLEmegamiss_timeout\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\SImegamissTimeout\DC2<\n\
      \\fkill_timeout\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\vkillTimeout\DC2Z\n\
      \\ETBmax_kill_timeout_jitter\CAN\ACK \SOH(\v2\EM.google.protobuf.DurationR\DC4maxKillTimeoutJitterB\b\250B\ENQ\170\SOH\STX2\NUL\DC2F\n\
      \\DC1multikill_timeout\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DLEmultikillTimeout\DC2G\n\
      \\DC3multikill_threshold\CAN\ENQ \SOH(\v2\SYN.envoy.type.v3.PercentR\DC2multikillThreshold\SUB\133\STX\n\
      \\SOWatchdogAction\DC2B\n\
      \\ACKconfig\CAN\SOH \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\ACKconfig\DC2`\n\
      \\ENQevent\CAN\STX \SOH(\SO2@.envoy.config.bootstrap.v3.Watchdog.WatchdogAction.WatchdogEventR\ENQeventB\b\250B\ENQ\130\SOH\STX\DLE\SOH\"M\n\
      \\rWatchdogEvent\DC2\v\n\
      \\aUNKNOWN\DLE\NUL\DC2\b\n\
      \\EOTKILL\DLE\SOH\DC2\r\n\
      \\tMULTIKILL\DLE\STX\DC2\f\n\
      \\bMEGAMISS\DLE\ETX\DC2\b\n\
      \\EOTMISS\DLE\EOT:)\154\197\136\RS$\n\
      \\"envoy.config.bootstrap.v2.Watchdog"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        actions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "actions"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Watchdog'WatchdogAction)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"actions")) ::
              Data.ProtoLens.FieldDescriptor Watchdog
        missTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "miss_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'missTimeout")) ::
              Data.ProtoLens.FieldDescriptor Watchdog
        megamissTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "megamiss_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'megamissTimeout")) ::
              Data.ProtoLens.FieldDescriptor Watchdog
        killTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kill_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'killTimeout")) ::
              Data.ProtoLens.FieldDescriptor Watchdog
        maxKillTimeoutJitter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_kill_timeout_jitter"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxKillTimeoutJitter")) ::
              Data.ProtoLens.FieldDescriptor Watchdog
        multikillTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "multikill_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'multikillTimeout")) ::
              Data.ProtoLens.FieldDescriptor Watchdog
        multikillThreshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "multikill_threshold"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Percent.Percent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'multikillThreshold")) ::
              Data.ProtoLens.FieldDescriptor Watchdog
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 7, actions__field_descriptor),
           (Data.ProtoLens.Tag 1, missTimeout__field_descriptor),
           (Data.ProtoLens.Tag 2, megamissTimeout__field_descriptor),
           (Data.ProtoLens.Tag 3, killTimeout__field_descriptor),
           (Data.ProtoLens.Tag 6, maxKillTimeoutJitter__field_descriptor),
           (Data.ProtoLens.Tag 4, multikillTimeout__field_descriptor),
           (Data.ProtoLens.Tag 5, multikillThreshold__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Watchdog'_unknownFields
        (\ x__ y__ -> x__ {_Watchdog'_unknownFields = y__})
  defMessage
    = Watchdog'_constructor
        {_Watchdog'actions = Data.Vector.Generic.empty,
         _Watchdog'missTimeout = Prelude.Nothing,
         _Watchdog'megamissTimeout = Prelude.Nothing,
         _Watchdog'killTimeout = Prelude.Nothing,
         _Watchdog'maxKillTimeoutJitter = Prelude.Nothing,
         _Watchdog'multikillTimeout = Prelude.Nothing,
         _Watchdog'multikillThreshold = Prelude.Nothing,
         _Watchdog'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Watchdog
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Watchdog'WatchdogAction
             -> Data.ProtoLens.Encoding.Bytes.Parser Watchdog
        loop x mutable'actions
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'actions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'actions)
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
                              (Data.ProtoLens.Field.field @"vec'actions") frozen'actions x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "actions"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'actions y)
                                loop x v
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "miss_timeout"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"missTimeout") y x)
                                  mutable'actions
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "megamiss_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"megamissTimeout") y x)
                                  mutable'actions
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "kill_timeout"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"killTimeout") y x)
                                  mutable'actions
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_kill_timeout_jitter"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxKillTimeoutJitter") y x)
                                  mutable'actions
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "multikill_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"multikillTimeout") y x)
                                  mutable'actions
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "multikill_threshold"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"multikillThreshold") y x)
                                  mutable'actions
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'actions
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'actions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'actions)
          "Watchdog"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage
                           _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'actions") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'missTimeout") _x
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
                          (Data.ProtoLens.Field.field @"maybe'megamissTimeout") _x
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
                             (Data.ProtoLens.Field.field @"maybe'killTimeout") _x
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
                                (Data.ProtoLens.Field.field @"maybe'maxKillTimeoutJitter") _x
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
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'multikillTimeout") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
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
                                      (Data.ProtoLens.Field.field @"maybe'multikillThreshold") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
instance Control.DeepSeq.NFData Watchdog where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Watchdog'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Watchdog'actions x__)
                (Control.DeepSeq.deepseq
                   (_Watchdog'missTimeout x__)
                   (Control.DeepSeq.deepseq
                      (_Watchdog'megamissTimeout x__)
                      (Control.DeepSeq.deepseq
                         (_Watchdog'killTimeout x__)
                         (Control.DeepSeq.deepseq
                            (_Watchdog'maxKillTimeoutJitter x__)
                            (Control.DeepSeq.deepseq
                               (_Watchdog'multikillTimeout x__)
                               (Control.DeepSeq.deepseq
                                  (_Watchdog'multikillThreshold x__) ())))))))
{- | Fields :
     
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.config' @:: Lens' Watchdog'WatchdogAction Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'config' @:: Lens' Watchdog'WatchdogAction (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.event' @:: Lens' Watchdog'WatchdogAction Watchdog'WatchdogAction'WatchdogEvent@ -}
data Watchdog'WatchdogAction
  = Watchdog'WatchdogAction'_constructor {_Watchdog'WatchdogAction'config :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig),
                                          _Watchdog'WatchdogAction'event :: !Watchdog'WatchdogAction'WatchdogEvent,
                                          _Watchdog'WatchdogAction'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Watchdog'WatchdogAction where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Watchdog'WatchdogAction "config" Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Watchdog'WatchdogAction'config
           (\ x__ y__ -> x__ {_Watchdog'WatchdogAction'config = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Watchdog'WatchdogAction "maybe'config" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Watchdog'WatchdogAction'config
           (\ x__ y__ -> x__ {_Watchdog'WatchdogAction'config = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Watchdog'WatchdogAction "event" Watchdog'WatchdogAction'WatchdogEvent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Watchdog'WatchdogAction'event
           (\ x__ y__ -> x__ {_Watchdog'WatchdogAction'event = y__}))
        Prelude.id
instance Data.ProtoLens.Message Watchdog'WatchdogAction where
  messageName _
    = Data.Text.pack
        "envoy.config.bootstrap.v3.Watchdog.WatchdogAction"
  packedMessageDescriptor _
    = "\n\
      \\SOWatchdogAction\DC2B\n\
      \\ACKconfig\CAN\SOH \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\ACKconfig\DC2`\n\
      \\ENQevent\CAN\STX \SOH(\SO2@.envoy.config.bootstrap.v3.Watchdog.WatchdogAction.WatchdogEventR\ENQeventB\b\250B\ENQ\130\SOH\STX\DLE\SOH\"M\n\
      \\rWatchdogEvent\DC2\v\n\
      \\aUNKNOWN\DLE\NUL\DC2\b\n\
      \\EOTKILL\DLE\SOH\DC2\r\n\
      \\tMULTIKILL\DLE\STX\DC2\f\n\
      \\bMEGAMISS\DLE\ETX\DC2\b\n\
      \\EOTMISS\DLE\EOT"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        config__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'config")) ::
              Data.ProtoLens.FieldDescriptor Watchdog'WatchdogAction
        event__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "event"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Watchdog'WatchdogAction'WatchdogEvent)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"event")) ::
              Data.ProtoLens.FieldDescriptor Watchdog'WatchdogAction
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, config__field_descriptor),
           (Data.ProtoLens.Tag 2, event__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Watchdog'WatchdogAction'_unknownFields
        (\ x__ y__ -> x__ {_Watchdog'WatchdogAction'_unknownFields = y__})
  defMessage
    = Watchdog'WatchdogAction'_constructor
        {_Watchdog'WatchdogAction'config = Prelude.Nothing,
         _Watchdog'WatchdogAction'event = Data.ProtoLens.fieldDefault,
         _Watchdog'WatchdogAction'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Watchdog'WatchdogAction
          -> Data.ProtoLens.Encoding.Bytes.Parser Watchdog'WatchdogAction
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
                                       "config"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"config") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "event"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"event") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WatchdogAction"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'config") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"event") _x
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
instance Control.DeepSeq.NFData Watchdog'WatchdogAction where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Watchdog'WatchdogAction'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Watchdog'WatchdogAction'config x__)
                (Control.DeepSeq.deepseq (_Watchdog'WatchdogAction'event x__) ()))
newtype Watchdog'WatchdogAction'WatchdogEvent'UnrecognizedValue
  = Watchdog'WatchdogAction'WatchdogEvent'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Watchdog'WatchdogAction'WatchdogEvent
  = Watchdog'WatchdogAction'UNKNOWN |
    Watchdog'WatchdogAction'KILL |
    Watchdog'WatchdogAction'MULTIKILL |
    Watchdog'WatchdogAction'MEGAMISS |
    Watchdog'WatchdogAction'MISS |
    Watchdog'WatchdogAction'WatchdogEvent'Unrecognized !Watchdog'WatchdogAction'WatchdogEvent'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Watchdog'WatchdogAction'WatchdogEvent where
  maybeToEnum 0 = Prelude.Just Watchdog'WatchdogAction'UNKNOWN
  maybeToEnum 1 = Prelude.Just Watchdog'WatchdogAction'KILL
  maybeToEnum 2 = Prelude.Just Watchdog'WatchdogAction'MULTIKILL
  maybeToEnum 3 = Prelude.Just Watchdog'WatchdogAction'MEGAMISS
  maybeToEnum 4 = Prelude.Just Watchdog'WatchdogAction'MISS
  maybeToEnum k
    = Prelude.Just
        (Watchdog'WatchdogAction'WatchdogEvent'Unrecognized
           (Watchdog'WatchdogAction'WatchdogEvent'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum Watchdog'WatchdogAction'UNKNOWN = "UNKNOWN"
  showEnum Watchdog'WatchdogAction'KILL = "KILL"
  showEnum Watchdog'WatchdogAction'MULTIKILL = "MULTIKILL"
  showEnum Watchdog'WatchdogAction'MEGAMISS = "MEGAMISS"
  showEnum Watchdog'WatchdogAction'MISS = "MISS"
  showEnum
    (Watchdog'WatchdogAction'WatchdogEvent'Unrecognized (Watchdog'WatchdogAction'WatchdogEvent'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "UNKNOWN"
    = Prelude.Just Watchdog'WatchdogAction'UNKNOWN
    | (Prelude.==) k "KILL" = Prelude.Just Watchdog'WatchdogAction'KILL
    | (Prelude.==) k "MULTIKILL"
    = Prelude.Just Watchdog'WatchdogAction'MULTIKILL
    | (Prelude.==) k "MEGAMISS"
    = Prelude.Just Watchdog'WatchdogAction'MEGAMISS
    | (Prelude.==) k "MISS" = Prelude.Just Watchdog'WatchdogAction'MISS
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Watchdog'WatchdogAction'WatchdogEvent where
  minBound = Watchdog'WatchdogAction'UNKNOWN
  maxBound = Watchdog'WatchdogAction'MISS
instance Prelude.Enum Watchdog'WatchdogAction'WatchdogEvent where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum WatchdogEvent: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Watchdog'WatchdogAction'UNKNOWN = 0
  fromEnum Watchdog'WatchdogAction'KILL = 1
  fromEnum Watchdog'WatchdogAction'MULTIKILL = 2
  fromEnum Watchdog'WatchdogAction'MEGAMISS = 3
  fromEnum Watchdog'WatchdogAction'MISS = 4
  fromEnum
    (Watchdog'WatchdogAction'WatchdogEvent'Unrecognized (Watchdog'WatchdogAction'WatchdogEvent'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Watchdog'WatchdogAction'MISS
    = Prelude.error
        "Watchdog'WatchdogAction'WatchdogEvent.succ: bad argument Watchdog'WatchdogAction'MISS. This value would be out of bounds."
  succ Watchdog'WatchdogAction'UNKNOWN = Watchdog'WatchdogAction'KILL
  succ Watchdog'WatchdogAction'KILL
    = Watchdog'WatchdogAction'MULTIKILL
  succ Watchdog'WatchdogAction'MULTIKILL
    = Watchdog'WatchdogAction'MEGAMISS
  succ Watchdog'WatchdogAction'MEGAMISS
    = Watchdog'WatchdogAction'MISS
  succ (Watchdog'WatchdogAction'WatchdogEvent'Unrecognized _)
    = Prelude.error
        "Watchdog'WatchdogAction'WatchdogEvent.succ: bad argument: unrecognized value"
  pred Watchdog'WatchdogAction'UNKNOWN
    = Prelude.error
        "Watchdog'WatchdogAction'WatchdogEvent.pred: bad argument Watchdog'WatchdogAction'UNKNOWN. This value would be out of bounds."
  pred Watchdog'WatchdogAction'KILL = Watchdog'WatchdogAction'UNKNOWN
  pred Watchdog'WatchdogAction'MULTIKILL
    = Watchdog'WatchdogAction'KILL
  pred Watchdog'WatchdogAction'MEGAMISS
    = Watchdog'WatchdogAction'MULTIKILL
  pred Watchdog'WatchdogAction'MISS
    = Watchdog'WatchdogAction'MEGAMISS
  pred (Watchdog'WatchdogAction'WatchdogEvent'Unrecognized _)
    = Prelude.error
        "Watchdog'WatchdogAction'WatchdogEvent.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Watchdog'WatchdogAction'WatchdogEvent where
  fieldDefault = Watchdog'WatchdogAction'UNKNOWN
instance Control.DeepSeq.NFData Watchdog'WatchdogAction'WatchdogEvent where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.mainThreadWatchdog' @:: Lens' Watchdogs Watchdog@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'mainThreadWatchdog' @:: Lens' Watchdogs (Prelude.Maybe Watchdog)@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.workerWatchdog' @:: Lens' Watchdogs Watchdog@
         * 'Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields.maybe'workerWatchdog' @:: Lens' Watchdogs (Prelude.Maybe Watchdog)@ -}
data Watchdogs
  = Watchdogs'_constructor {_Watchdogs'mainThreadWatchdog :: !(Prelude.Maybe Watchdog),
                            _Watchdogs'workerWatchdog :: !(Prelude.Maybe Watchdog),
                            _Watchdogs'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Watchdogs where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Watchdogs "mainThreadWatchdog" Watchdog where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Watchdogs'mainThreadWatchdog
           (\ x__ y__ -> x__ {_Watchdogs'mainThreadWatchdog = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Watchdogs "maybe'mainThreadWatchdog" (Prelude.Maybe Watchdog) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Watchdogs'mainThreadWatchdog
           (\ x__ y__ -> x__ {_Watchdogs'mainThreadWatchdog = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Watchdogs "workerWatchdog" Watchdog where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Watchdogs'workerWatchdog
           (\ x__ y__ -> x__ {_Watchdogs'workerWatchdog = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Watchdogs "maybe'workerWatchdog" (Prelude.Maybe Watchdog) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Watchdogs'workerWatchdog
           (\ x__ y__ -> x__ {_Watchdogs'workerWatchdog = y__}))
        Prelude.id
instance Data.ProtoLens.Message Watchdogs where
  messageName _
    = Data.Text.pack "envoy.config.bootstrap.v3.Watchdogs"
  packedMessageDescriptor _
    = "\n\
      \\tWatchdogs\DC2U\n\
      \\DC4main_thread_watchdog\CAN\SOH \SOH(\v2#.envoy.config.bootstrap.v3.WatchdogR\DC2mainThreadWatchdog\DC2L\n\
      \\SIworker_watchdog\CAN\STX \SOH(\v2#.envoy.config.bootstrap.v3.WatchdogR\SOworkerWatchdog"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        mainThreadWatchdog__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "main_thread_watchdog"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Watchdog)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mainThreadWatchdog")) ::
              Data.ProtoLens.FieldDescriptor Watchdogs
        workerWatchdog__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "worker_watchdog"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Watchdog)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workerWatchdog")) ::
              Data.ProtoLens.FieldDescriptor Watchdogs
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, mainThreadWatchdog__field_descriptor),
           (Data.ProtoLens.Tag 2, workerWatchdog__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Watchdogs'_unknownFields
        (\ x__ y__ -> x__ {_Watchdogs'_unknownFields = y__})
  defMessage
    = Watchdogs'_constructor
        {_Watchdogs'mainThreadWatchdog = Prelude.Nothing,
         _Watchdogs'workerWatchdog = Prelude.Nothing,
         _Watchdogs'_unknownFields = []}
  parseMessage
    = let
        loop :: Watchdogs -> Data.ProtoLens.Encoding.Bytes.Parser Watchdogs
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
                                       "main_thread_watchdog"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"mainThreadWatchdog") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "worker_watchdog"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workerWatchdog") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Watchdogs"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'mainThreadWatchdog") _x
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
                       (Data.ProtoLens.Field.field @"maybe'workerWatchdog") _x
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
instance Control.DeepSeq.NFData Watchdogs where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Watchdogs'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Watchdogs'mainThreadWatchdog x__)
                (Control.DeepSeq.deepseq (_Watchdogs'workerWatchdog x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \)envoy/config/bootstrap/v3/bootstrap.proto\DC2\EMenvoy.config.bootstrap.v3\SUB)envoy/config/accesslog/v3/accesslog.proto\SUB%envoy/config/cluster/v3/cluster.proto\SUB\"envoy/config/core/v3/address.proto\SUB\USenvoy/config/core/v3/base.proto\SUB(envoy/config/core/v3/config_source.proto\SUB/envoy/config/core/v3/event_service_config.proto\SUB$envoy/config/core/v3/extension.proto\SUB#envoy/config/core/v3/resolver.proto\SUB(envoy/config/core/v3/socket_option.proto\SUB'envoy/config/listener/v3/listener.proto\SUB#envoy/config/metrics/v3/stats.proto\SUB'envoy/config/overload/v3/overload.proto\SUB'envoy/config/trace/v3/http_tracer.proto\SUB6envoy/extensions/transport_sockets/tls/v3/secret.proto\SUB\ESCenvoy/type/v3/percent.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\FSgoogle/protobuf/struct.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB#envoy/annotations/deprecation.proto\SUB\RSudpa/annotations/migrate.proto\SUB\USudpa/annotations/security.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\223\ETB\n\
    \\tBootstrap\DC2.\n\
    \\EOTnode\CAN\SOH \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnode\DC2.\n\
    \\DC3node_context_params\CAN\SUB \ETX(\tR\DC1nodeContextParams\DC2_\n\
    \\DLEstatic_resources\CAN\STX \SOH(\v24.envoy.config.bootstrap.v3.Bootstrap.StaticResourcesR\SIstaticResources\DC2b\n\
    \\DC1dynamic_resources\CAN\ETX \SOH(\v25.envoy.config.bootstrap.v3.Bootstrap.DynamicResourcesR\DLEdynamicResources\DC2R\n\
    \\SIcluster_manager\CAN\EOT \SOH(\v2).envoy.config.bootstrap.v3.ClusterManagerR\SOclusterManager\DC2D\n\
    \\n\
    \hds_config\CAN\SO \SOH(\v2%.envoy.config.core.v3.ApiConfigSourceR\thdsConfig\DC2\GS\n\
    \\n\
    \flags_path\CAN\ENQ \SOH(\tR\tflagsPath\DC2C\n\
    \\vstats_sinks\CAN\ACK \ETX(\v2\".envoy.config.metrics.v3.StatsSinkR\n\
    \statsSinks\DC2G\n\
    \\fstats_config\CAN\r \SOH(\v2$.envoy.config.metrics.v3.StatsConfigR\vstatsConfig\DC2q\n\
    \\DC4stats_flush_interval\CAN\a \SOH(\v2\EM.google.protobuf.DurationR\DC2statsFlushIntervalB$\250B\SO\170\SOH\v\SUB\ETX\b\172\STX2\EOT\DLE\192\132=\242\152\254\143\ENQ\r\DC2\vstats_flush\DC2:\n\
    \\DC4stats_flush_on_admin\CAN\GS \SOH(\bH\NULR\DC1statsFlushOnAdminB\a\250B\EOTj\STX\b\SOH\DC2L\n\
    \\bwatchdog\CAN\b \SOH(\v2#.envoy.config.bootstrap.v3.WatchdogR\bwatchdogB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2B\n\
    \\twatchdogs\CAN\ESC \SOH(\v2$.envoy.config.bootstrap.v3.WatchdogsR\twatchdogs\DC2E\n\
    \\atracing\CAN\t \SOH(\v2\RS.envoy.config.trace.v3.TracingR\atracingB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2R\n\
    \\SIlayered_runtime\CAN\DC1 \SOH(\v2).envoy.config.bootstrap.v3.LayeredRuntimeR\SOlayeredRuntime\DC26\n\
    \\ENQadmin\CAN\f \SOH(\v2 .envoy.config.bootstrap.v3.AdminR\ENQadmin\DC2d\n\
    \\DLEoverload_manager\CAN\SI \SOH(\v2).envoy.config.overload.v3.OverloadManagerR\SIoverloadManagerB\SO\138\147\183*\STX\b\SOH\138\147\183*\STX\DLE\SOH\DC26\n\
    \\ETBenable_dispatcher_stats\CAN\DLE \SOH(\bR\NAKenableDispatcherStats\DC2#\n\
    \\rheader_prefix\CAN\DC2 \SOH(\tR\fheaderPrefix\DC2_\n\
    \\GSstats_server_version_override\CAN\DC3 \SOH(\v2\FS.google.protobuf.UInt64ValueR\SUBstatsServerVersionOverride\DC2A\n\
    \\ETBuse_tcp_for_dns_lookups\CAN\DC4 \SOH(\bR\DC3useTcpForDnsLookupsB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2]\n\
    \\NAKdns_resolution_config\CAN\RS \SOH(\v2).envoy.config.core.v3.DnsResolutionConfigR\DC3dnsResolutionConfig\DC2]\n\
    \\DC4bootstrap_extensions\CAN\NAK \ETX(\v2*.envoy.config.core.v3.TypedExtensionConfigR\DC3bootstrapExtensions\DC2K\n\
    \\rfatal_actions\CAN\FS \ETX(\v2&.envoy.config.bootstrap.v3.FatalActionR\ffatalActions\DC2I\n\
    \\SOconfig_sources\CAN\SYN \ETX(\v2\".envoy.config.core.v3.ConfigSourceR\rconfigSources\DC2V\n\
    \\NAKdefault_config_source\CAN\ETB \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\DC3defaultConfigSource\DC28\n\
    \\CANdefault_socket_interface\CAN\CAN \SOH(\tR\SYNdefaultSocketInterface\DC2\140\SOH\n\
    \\RScertificate_provider_instances\CAN\EM \ETX(\v2F.envoy.config.bootstrap.v3.Bootstrap.CertificateProviderInstancesEntryR\FScertificateProviderInstances\SUB\154\STX\n\
    \\SIStaticResources\DC2@\n\
    \\tlisteners\CAN\SOH \ETX(\v2\".envoy.config.listener.v3.ListenerR\tlisteners\DC2<\n\
    \\bclusters\CAN\STX \ETX(\v2 .envoy.config.cluster.v3.ClusterR\bclusters\DC2K\n\
    \\asecrets\CAN\ETX \ETX(\v21.envoy.extensions.transport_sockets.tls.v3.SecretR\asecrets::\154\197\136\RS5\n\
    \3envoy.config.bootstrap.v2.Bootstrap.StaticResources\SUB\137\ETX\n\
    \\DLEDynamicResources\DC2A\n\
    \\n\
    \lds_config\CAN\SOH \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\tldsConfig\DC22\n\
    \\NAKlds_resources_locator\CAN\ENQ \SOH(\tR\DC3ldsResourcesLocator\DC2A\n\
    \\n\
    \cds_config\CAN\STX \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\tcdsConfig\DC22\n\
    \\NAKcds_resources_locator\CAN\ACK \SOH(\tR\DC3cdsResourcesLocator\DC2D\n\
    \\n\
    \ads_config\CAN\ETX \SOH(\v2%.envoy.config.core.v3.ApiConfigSourceR\tadsConfig:;\154\197\136\RS6\n\
    \4envoy.config.bootstrap.v2.Bootstrap.DynamicResourcesJ\EOT\b\EOT\DLE\ENQ\SUB{\n\
    \!CertificateProviderInstancesEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2@\n\
    \\ENQvalue\CAN\STX \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\ENQvalue:\STX8\SOHB\r\n\
    \\vstats_flush:*\154\197\136\RS%\n\
    \#envoy.config.bootstrap.v2.BootstrapJ\EOT\b\n\
    \\DLE\vJ\EOT\b\v\DLE\fR\aruntime\"\208\STX\n\
    \\ENQAdmin\DC2C\n\
    \\n\
    \access_log\CAN\ENQ \ETX(\v2$.envoy.config.accesslog.v3.AccessLogR\taccessLog\DC23\n\
    \\SIaccess_log_path\CAN\SOH \SOH(\tR\raccessLogPathB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2!\n\
    \\fprofile_path\CAN\STX \SOH(\tR\vprofilePath\DC27\n\
    \\aaddress\CAN\ETX \SOH(\v2\GS.envoy.config.core.v3.AddressR\aaddress\DC2I\n\
    \\SOsocket_options\CAN\EOT \ETX(\v2\".envoy.config.core.v3.SocketOptionR\rsocketOptions:&\154\197\136\RS!\n\
    \\USenvoy.config.bootstrap.v2.Admin\"\203\EOT\n\
    \\SOClusterManager\DC2,\n\
    \\DC2local_cluster_name\CAN\SOH \SOH(\tR\DLElocalClusterName\DC2g\n\
    \\DC1outlier_detection\CAN\STX \SOH(\v2:.envoy.config.bootstrap.v3.ClusterManager.OutlierDetectionR\DLEoutlierDetection\DC2R\n\
    \\DC4upstream_bind_config\CAN\ETX \SOH(\v2 .envoy.config.core.v3.BindConfigR\DC2upstreamBindConfig\DC2Q\n\
    \\DC1load_stats_config\CAN\EOT \SOH(\v2%.envoy.config.core.v3.ApiConfigSourceR\SIloadStatsConfig\SUB\201\SOH\n\
    \\DLEOutlierDetection\DC2$\n\
    \\SOevent_log_path\CAN\SOH \SOH(\tR\feventLogPath\DC2M\n\
    \\revent_service\CAN\STX \SOH(\v2(.envoy.config.core.v3.EventServiceConfigR\feventService:@\154\197\136\RS;\n\
    \9envoy.config.bootstrap.v2.ClusterManager.OutlierDetection:/\154\197\136\RS*\n\
    \(envoy.config.bootstrap.v2.ClusterManager\"\176\SOH\n\
    \\tWatchdogs\DC2U\n\
    \\DC4main_thread_watchdog\CAN\SOH \SOH(\v2#.envoy.config.bootstrap.v3.WatchdogR\DC2mainThreadWatchdog\DC2L\n\
    \\SIworker_watchdog\CAN\STX \SOH(\v2#.envoy.config.bootstrap.v3.WatchdogR\SOworkerWatchdog\"\186\ACK\n\
    \\bWatchdog\DC2L\n\
    \\aactions\CAN\a \ETX(\v22.envoy.config.bootstrap.v3.Watchdog.WatchdogActionR\aactions\DC2<\n\
    \\fmiss_timeout\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\vmissTimeout\DC2D\n\
    \\DLEmegamiss_timeout\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\SImegamissTimeout\DC2<\n\
    \\fkill_timeout\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\vkillTimeout\DC2Z\n\
    \\ETBmax_kill_timeout_jitter\CAN\ACK \SOH(\v2\EM.google.protobuf.DurationR\DC4maxKillTimeoutJitterB\b\250B\ENQ\170\SOH\STX2\NUL\DC2F\n\
    \\DC1multikill_timeout\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DLEmultikillTimeout\DC2G\n\
    \\DC3multikill_threshold\CAN\ENQ \SOH(\v2\SYN.envoy.type.v3.PercentR\DC2multikillThreshold\SUB\133\STX\n\
    \\SOWatchdogAction\DC2B\n\
    \\ACKconfig\CAN\SOH \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\ACKconfig\DC2`\n\
    \\ENQevent\CAN\STX \SOH(\SO2@.envoy.config.bootstrap.v3.Watchdog.WatchdogAction.WatchdogEventR\ENQeventB\b\250B\ENQ\130\SOH\STX\DLE\SOH\"M\n\
    \\rWatchdogEvent\DC2\v\n\
    \\aUNKNOWN\DLE\NUL\DC2\b\n\
    \\EOTKILL\DLE\SOH\DC2\r\n\
    \\tMULTIKILL\DLE\STX\DC2\f\n\
    \\bMEGAMISS\DLE\ETX\DC2\b\n\
    \\EOTMISS\DLE\EOT:)\154\197\136\RS$\n\
    \\"envoy.config.bootstrap.v2.Watchdog\"Q\n\
    \\vFatalAction\DC2B\n\
    \\ACKconfig\CAN\SOH \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\ACKconfig\"\220\SOH\n\
    \\aRuntime\DC2!\n\
    \\fsymlink_root\CAN\SOH \SOH(\tR\vsymlinkRoot\DC2\"\n\
    \\fsubdirectory\CAN\STX \SOH(\tR\fsubdirectory\DC23\n\
    \\NAKoverride_subdirectory\CAN\ETX \SOH(\tR\DC4overrideSubdirectory\DC2+\n\
    \\EOTbase\CAN\EOT \SOH(\v2\ETB.google.protobuf.StructR\EOTbase:(\154\197\136\RS#\n\
    \!envoy.config.bootstrap.v2.Runtime\"\219\ACK\n\
    \\fRuntimeLayer\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2<\n\
    \\fstatic_layer\CAN\STX \SOH(\v2\ETB.google.protobuf.StructH\NULR\vstaticLayer\DC2R\n\
    \\n\
    \disk_layer\CAN\ETX \SOH(\v21.envoy.config.bootstrap.v3.RuntimeLayer.DiskLayerH\NULR\tdiskLayer\DC2U\n\
    \\vadmin_layer\CAN\EOT \SOH(\v22.envoy.config.bootstrap.v3.RuntimeLayer.AdminLayerH\NULR\n\
    \adminLayer\DC2R\n\
    \\n\
    \rtds_layer\CAN\ENQ \SOH(\v21.envoy.config.bootstrap.v3.RuntimeLayer.RtdsLayerH\NULR\trtdsLayer\SUB\193\SOH\n\
    \\tDiskLayer\DC2!\n\
    \\fsymlink_root\CAN\SOH \SOH(\tR\vsymlinkRoot\DC2\"\n\
    \\fsubdirectory\CAN\ETX \SOH(\tR\fsubdirectory\DC24\n\
    \\SYNappend_service_cluster\CAN\STX \SOH(\bR\DC4appendServiceCluster:7\154\197\136\RS2\n\
    \0envoy.config.bootstrap.v2.RuntimeLayer.DiskLayer\SUBF\n\
    \\n\
    \AdminLayer:8\154\197\136\RS3\n\
    \1envoy.config.bootstrap.v2.RuntimeLayer.AdminLayer\SUB\157\SOH\n\
    \\tRtdsLayer\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2C\n\
    \\vrtds_config\CAN\STX \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\n\
    \rtdsConfig:7\154\197\136\RS2\n\
    \0envoy.config.bootstrap.v2.RuntimeLayer.RtdsLayerB\SYN\n\
    \\SIlayer_specifier\DC2\ETX\248B\SOH:-\154\197\136\RS(\n\
    \&envoy.config.bootstrap.v2.RuntimeLayer\"\130\SOH\n\
    \\SOLayeredRuntime\DC2?\n\
    \\ACKlayers\CAN\SOH \ETX(\v2'.envoy.config.bootstrap.v3.RuntimeLayerR\ACKlayers:/\154\197\136\RS*\n\
    \(envoy.config.bootstrap.v2.LayeredRuntimeBC\n\
    \'io.envoyproxy.envoy.config.bootstrap.v3B\SOBootstrapProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\236\190\SOH\n\
    \\a\DC2\ENQ\NUL\NUL\195\EOT\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\"\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL3\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL/\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL,\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL)\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\b\NUL2\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\t\NUL9\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\n\
    \\NUL.\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\v\NUL-\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\f\NUL2\n\
    \\t\n\
    \\STX\ETX\t\DC2\ETX\r\NUL1\n\
    \\t\n\
    \\STX\ETX\n\
    \\DC2\ETX\SO\NUL-\n\
    \\t\n\
    \\STX\ETX\v\DC2\ETX\SI\NUL1\n\
    \\t\n\
    \\STX\ETX\f\DC2\ETX\DLE\NUL1\n\
    \\t\n\
    \\STX\ETX\r\DC2\ETX\DC1\NUL@\n\
    \\t\n\
    \\STX\ETX\SO\DC2\ETX\DC2\NUL%\n\
    \\t\n\
    \\STX\ETX\SI\DC2\ETX\DC4\NUL(\n\
    \\t\n\
    \\STX\ETX\DLE\DC2\ETX\NAK\NUL&\n\
    \\t\n\
    \\STX\ETX\DC1\DC2\ETX\SYN\NUL(\n\
    \\t\n\
    \\STX\ETX\DC2\DC2\ETX\CAN\NUL-\n\
    \\t\n\
    \\STX\ETX\DC3\DC2\ETX\EM\NUL(\n\
    \\t\n\
    \\STX\ETX\DC4\DC2\ETX\SUB\NUL)\n\
    \\t\n\
    \\STX\ETX\NAK\DC2\ETX\ESC\NUL'\n\
    \\t\n\
    \\STX\ETX\SYN\DC2\ETX\FS\NUL+\n\
    \\t\n\
    \\STX\ETX\ETB\DC2\ETX\GS\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\US\NUL@\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\US\NUL@\n\
    \\b\n\
    \\SOH\b\DC2\ETX \NUL/\n\
    \\t\n\
    \\STX\b\b\DC2\ETX \NUL/\n\
    \\b\n\
    \\SOH\b\DC2\ETX!\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX!\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\"\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\"\NULF\n\
    \\206\STX\n\
    \\STX\EOT\NUL\DC2\ENQ+\NUL\179\STX\SOH\SUB^ Bootstrap :ref:`configuration overview <config_overview_bootstrap>`.\n\
    \ [#next-free-field: 31]\n\
    \2\224\SOH [#protodoc-title: Bootstrap]\n\
    \ This proto is supplied via the :option:`-c` CLI flag and acts as the root\n\
    \ of the Envoy v3 configuration. See the :ref:`v3 configuration overview\n\
    \ <config_overview_bootstrap>` for more detail.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX+\b\DC1\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT,\STX-,\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT,\STX-,\n\
    \\f\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT/\STXB\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX/\n\
    \\EM\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT0\EOT1>\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT0\EOT1>\n\
    \\153\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX5\EOT0\SUB\137\SOH Static :ref:`Listeners <envoy_v3_api_msg_config.listener.v3.Listener>`. These listeners are\n\
    \ available regardless of LDS configuration.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\EOT\DC2\ETX5\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETX5\r!\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX5\"+\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX5./\n\
    \\179\ETX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX=\EOT-\SUB\163\ETX If a network based configuration source is specified for :ref:`cds_config\n\
    \ <envoy_v3_api_field_config.bootstrap.v3.Bootstrap.DynamicResources.cds_config>`, it's necessary\n\
    \ to have some initial cluster definitions available to allow Envoy to know\n\
    \ how to speak to the management server. These cluster definitions may not\n\
    \ use :ref:`EDS <arch_overview_dynamic_config_eds>` (i.e. they should be static\n\
    \ IP or DNS-based).\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\EOT\DC2\ETX=\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ACK\DC2\ETX=\r\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX= (\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX=+,\n\
    \\148\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\STX\DC2\ETXA\EOTJ\SUB\132\SOH These static secrets can be used by :ref:`SdsSecretConfig\n\
    \ <envoy_v3_api_msg_extensions.transport_sockets.tls.v3.SdsSecretConfig>`\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\EOT\DC2\ETXA\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ACK\DC2\ETXA\r=\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\SOH\DC2\ETXA>E\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ETX\DC2\ETXAHI\n\
    \%\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\EOTE\STXd\ETX\SUB\ETB [#next-free-field: 7]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETXE\n\
    \\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\SOH\a\DC2\EOTF\EOTG?\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\SOH\a\211\136\225\ETX\SOH\DC2\EOTF\EOTG?\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\t\DC2\ETXI\EOT\SI\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\SOH\t\NUL\DC2\ETXI\r\SO\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\t\NUL\SOH\DC2\ETXI\r\SO\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\t\NUL\STX\DC2\ETXI\r\SO\n\
    \\179\SOH\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\ETXM\EOT(\SUB\163\SOH All :ref:`Listeners <envoy_v3_api_msg_config.listener.v3.Listener>` are provided by a single\n\
    \ :ref:`LDS <arch_overview_dynamic_config_lds>` configuration source.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ACK\DC2\ETXM\EOT\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETXM\EM#\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETXM&'\n\
    \]\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\SOH\DC2\ETXQ\EOT%\SUBN xdstp:// resource locator for listener collection.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ENQ\DC2\ETXQ\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\SOH\DC2\ETXQ\v \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ETX\DC2\ETXQ#$\n\
    \\203\SOH\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\STX\DC2\ETXV\EOT(\SUB\187\SOH All post-bootstrap :ref:`Cluster <envoy_v3_api_msg_config.cluster.v3.Cluster>` definitions are\n\
    \ provided by a single :ref:`CDS <arch_overview_dynamic_config_cds>`\n\
    \ configuration source.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\ACK\DC2\ETXV\EOT\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\SOH\DC2\ETXV\EM#\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\ETX\DC2\ETXV&'\n\
    \\\\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\ETX\DC2\ETXZ\EOT%\SUBM xdstp:// resource locator for cluster collection.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ETX\ENQ\DC2\ETXZ\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ETX\SOH\DC2\ETXZ\v \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ETX\ETX\DC2\ETXZ#$\n\
    \\218\ETX\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\EOT\DC2\ETXc\EOT+\SUB\202\ETX A single :ref:`ADS <config_overview_ads>` source may be optionally\n\
    \ specified. This must have :ref:`api_type\n\
    \ <envoy_v3_api_field_config.core.v3.ApiConfigSource.api_type>` :ref:`GRPC\n\
    \ <envoy_v3_api_enum_value_config.core.v3.ApiConfigSource.ApiType.GRPC>`. Only\n\
    \ :ref:`ConfigSources <envoy_v3_api_msg_config.core.v3.ConfigSource>` that have\n\
    \ the :ref:`ads <envoy_v3_api_field_config.core.v3.ConfigSource.ads>` field set will be\n\
    \ streamed on the ADS channel.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\EOT\ACK\DC2\ETXc\EOT\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\EOT\SOH\DC2\ETXc\FS&\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\EOT\ETX\DC2\ETXc)*\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\t\DC2\ETXf\STX\DC2\n\
    \\v\n\
    \\EOT\EOT\NUL\t\NUL\DC2\ETXf\v\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\SOH\DC2\ETXf\v\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\STX\DC2\ETXf\v\r\n\
    \\v\n\
    \\EOT\EOT\NUL\t\SOH\DC2\ETXf\SI\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\SOH\SOH\DC2\ETXf\SI\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\SOH\STX\DC2\ETXf\SI\DC1\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\n\
    \\DC2\ETXh\STX\NAK\n\
    \\v\n\
    \\EOT\EOT\NUL\n\
    \\NUL\DC2\ETXh\v\DC4\n\
    \\135\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXl\STX\CAN\SUBz Node identity to present to the management server and for instance\n\
    \ identification purposes (e.g. in generated headers).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETXl\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXl\SI\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXl\SYN\ETB\n\
    \\184\t\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\142\SOH\STX+\SUB\169\t A list of :ref:`Node <envoy_v3_api_msg_config.core.v3.Node>` field names\n\
    \ that will be included in the context parameters of the effective\n\
    \ xdstp:// URL that is sent in a discovery request when resource\n\
    \ locators are used for LDS/CDS. Any non-string field will have its JSON\n\
    \ encoding set as the context parameter value, with the exception of\n\
    \ metadata, which will be flattened (see example below). The supported field\n\
    \ names are:\n\
    \ - \"cluster\"\n\
    \ - \"id\"\n\
    \ - \"locality.region\"\n\
    \ - \"locality.sub_zone\"\n\
    \ - \"locality.zone\"\n\
    \ - \"metadata\"\n\
    \ - \"user_agent_build_version.metadata\"\n\
    \ - \"user_agent_build_version.version\"\n\
    \ - \"user_agent_name\"\n\
    \ - \"user_agent_version\"\n\
    \\n\
    \ The node context parameters act as a base layer dictionary for the context\n\
    \ parameters (i.e. more specific resource specific context parameters will\n\
    \ override). Field names will be prefixed with \226\128\156udpa.node.\226\128\157 when included in\n\
    \ context parameters.\n\
    \\n\
    \ For example, if node_context_params is ``[\"user_agent_name\", \"metadata\"]``,\n\
    \ the implied context parameters might be::\n\
    \\n\
    \   node.user_agent_name: \"envoy\"\n\
    \   node.metadata.foo: \"{\\\"bar\\\": \\\"baz\\\"}\"\n\
    \   node.metadata.some: \"42\"\n\
    \   node.metadata.thing: \"\\\"thing\\\"\"\n\
    \\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\EOT\142\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\EOT\142\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\EOT\142\SOH\DC2%\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\EOT\142\SOH(*\n\
    \/\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOT\145\SOH\STX'\SUB! Statically specified resources.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\EOT\145\SOH\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\EOT\145\SOH\DC2\"\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\EOT\145\SOH%&\n\
    \*\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\EOT\148\SOH\STX)\SUB\FS xDS configuration sources.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\EOT\148\SOH\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\EOT\148\SOH\DC3$\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\EOT\148\SOH'(\n\
    \j\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\EOT\152\SOH\STX%\SUB\\ Configuration for the cluster manager which owns all upstream clusters\n\
    \ within the server.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\EOT\152\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\EOT\152\SOH\DC1 \n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\EOT\152\SOH#$\n\
    \\136\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\EOT\156\SOH\STX*\SUBz Health discovery service config option.\n\
    \ (:ref:`core.ApiConfigSource <envoy_v3_api_msg_config.core.v3.ApiConfigSource>`)\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\EOT\156\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\EOT\156\SOH\SUB$\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\EOT\156\SOH')\n\
    \K\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\EOT\159\SOH\STX\CAN\SUB= Optional file system path to search for startup flag files.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\EOT\159\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\EOT\159\SOH\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\EOT\159\SOH\SYN\ETB\n\
    \,\n\
    \\EOT\EOT\NUL\STX\a\DC2\EOT\162\SOH\STX0\SUB\RS Optional set of stats sinks.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\EOT\DC2\EOT\162\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\ACK\DC2\EOT\162\SOH\v\US\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\EOT\162\SOH +\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\EOT\162\SOH./\n\
    \?\n\
    \\EOT\EOT\NUL\STX\b\DC2\EOT\165\SOH\STX+\SUB1 Configuration for internal processing of stats.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\ACK\DC2\EOT\165\SOH\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\EOT\165\SOH\EM%\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\EOT\165\SOH(*\n\
    \\238\STX\n\
    \\EOT\EOT\NUL\STX\t\DC2\ACK\173\SOH\STX\179\SOH\EOT\SUB\221\STX Optional duration between flushes to configured stats sinks. For\n\
    \ performance reasons Envoy latches counters and only flushes counters and\n\
    \ gauges at a periodic interval. If not specified the default is 5000ms (5\n\
    \ seconds). Only one of `stats_flush_interval` or `stats_flush_on_admin`\n\
    \ can be set.\n\
    \ Duration must be at least 1ms and at most 5 min.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\ACK\DC2\EOT\173\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\EOT\173\SOH\ESC/\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\EOT\173\SOH23\n\
    \\SI\n\
    \\ENQ\EOT\NUL\STX\t\b\DC2\ACK\173\SOH4\179\SOH\ETX\n\
    \\DC2\n\
    \\b\EOT\NUL\STX\t\b\175\b\NAK\DC2\ACK\174\SOH\EOT\177\SOH\ENQ\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\STX\t\b\142\227\255Q\STX\DC2\EOT\178\SOH\EOTD\n\
    \\SO\n\
    \\EOT\EOT\NUL\b\NUL\DC2\ACK\181\SOH\STX\186\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\EOT\181\SOH\b\DC3\n\
    \\196\SOH\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\EOT\185\SOH\EOTK\SUB\181\SOH Flush stats to sinks only when queried for on the admin interface. If set,\n\
    \ a flush timer is not created. Only one of `stats_flush_on_admin` or\n\
    \ `stats_flush_interval` can be set.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ENQ\DC2\EOT\185\SOH\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\EOT\185\SOH\t\GS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\EOT\185\SOH \"\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\b\DC2\EOT\185\SOH#J\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\n\
    \\b\175\b\r\DC2\EOT\185\SOH$I\n\
    \\184\SOH\n\
    \\EOT\EOT\NUL\STX\v\DC2\ACK\191\SOH\STX\192\SOHS\SUB\167\SOH Optional watchdog configuration.\n\
    \ This is for a single watchdog configuration for the entire system.\n\
    \ Deprecated in favor of *watchdogs* which has finer granularity.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\ACK\DC2\EOT\191\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\SOH\DC2\EOT\191\SOH\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\ETX\DC2\EOT\191\SOH\SYN\ETB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\b\DC2\EOT\192\SOH\ACKR\n\
    \\SO\n\
    \\ACK\EOT\NUL\STX\v\b\ETX\DC2\EOT\192\SOH\a\CAN\n\
    \\DC1\n\
    \\t\EOT\NUL\STX\v\b\242\232\128K\DC2\EOT\192\SOH\SUBQ\n\
    \\176\SOH\n\
    \\EOT\EOT\NUL\STX\f\DC2\EOT\197\SOH\STX\ESC\SUB\161\SOH Optional watchdogs configuration.\n\
    \ This is used for specifying different watchdogs for the different subsystems.\n\
    \ [#extension-category: envoy.guarddog_actions]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\ACK\DC2\EOT\197\SOH\STX\v\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\SOH\DC2\EOT\197\SOH\f\NAK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\ETX\DC2\EOT\197\SOH\CAN\SUB\n\
    \\163\STX\n\
    \\EOT\EOT\NUL\STX\r\DC2\ACK\204\SOH\STX\205\SOHS\SUB\146\STX Configuration for an external tracing provider.\n\
    \\n\
    \ .. attention::\n\
    \  This field has been deprecated in favor of :ref:`HttpConnectionManager.Tracing.provider\n\
    \  <envoy_v3_api_field_extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.Tracing.provider>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\ACK\DC2\EOT\204\SOH\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\SOH\DC2\EOT\204\SOH\DC3\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\ETX\DC2\EOT\204\SOH\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\b\DC2\EOT\205\SOH\ACKR\n\
    \\SO\n\
    \\ACK\EOT\NUL\STX\r\b\ETX\DC2\EOT\205\SOH\a\CAN\n\
    \\DC1\n\
    \\t\EOT\NUL\STX\r\b\242\232\128K\DC2\EOT\205\SOH\SUBQ\n\
    \\171\SOH\n\
    \\EOT\EOT\NUL\STX\SO\DC2\EOT\210\SOH\STX&\SUB\156\SOH Configuration for the runtime configuration provider. If not\n\
    \ specified, a \226\128\156null\226\128\157 provider will be used which will result in all defaults\n\
    \ being used.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SO\ACK\DC2\EOT\210\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SO\SOH\DC2\EOT\210\SOH\DC1 \n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SO\ETX\DC2\EOT\210\SOH#%\n\
    \G\n\
    \\EOT\EOT\NUL\STX\SI\DC2\EOT\213\SOH\STX\DC3\SUB9 Configuration for the local administration HTTP server.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SI\ACK\DC2\EOT\213\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SI\SOH\DC2\EOT\213\SOH\b\r\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SI\ETX\DC2\EOT\213\SOH\DLE\DC2\n\
    \:\n\
    \\EOT\EOT\NUL\STX\DLE\DC2\ACK\216\SOH\STX\219\SOH\EOT\SUB* Optional overload manager configuration.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DLE\ACK\DC2\EOT\216\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DLE\SOH\DC2\EOT\216\SOH\RS.\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DLE\ETX\DC2\EOT\216\SOH13\n\
    \\SI\n\
    \\ENQ\EOT\NUL\STX\DLE\b\DC2\ACK\216\SOH4\219\SOH\ETX\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\STX\DLE\b\177\242\166\ENQ\SOH\DC2\EOT\217\SOH\EOTI\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\STX\DLE\b\177\242\166\ENQ\STX\DC2\EOT\218\SOH\EOTG\n\
    \\254\ETX\n\
    \\EOT\EOT\NUL\STX\DC1\DC2\EOT\227\SOH\STX$\SUB\239\ETX Enable :ref:`stats for event dispatcher <operations_performance>`, defaults to false.\n\
    \ Note that this records a value for each iteration of the event loop on every thread. This\n\
    \ should normally be minimal overhead, but when using\n\
    \ :ref:`statsd <envoy_v3_api_msg_config.metrics.v3.StatsdSink>`, it will send each observed value\n\
    \ over the wire individually because the statsd protocol doesn't have any way to represent a\n\
    \ histogram summary. Be aware that this can be a very large volume of data.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC1\ENQ\DC2\EOT\227\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC1\SOH\DC2\EOT\227\SOH\a\RS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC1\ETX\DC2\EOT\227\SOH!#\n\
    \\147\EOT\n\
    \\EOT\EOT\NUL\STX\DC2\DC2\EOT\238\SOH\STX\FS\SUB\132\EOT Optional string which will be used in lieu of x-envoy in prefixing headers.\n\
    \\n\
    \ For example, if this string is present and set to X-Foo, then x-envoy-retry-on will be\n\
    \ transformed into x-foo-retry-on etc.\n\
    \\n\
    \ Note this applies to the headers Envoy will generate, the headers Envoy will sanitize, and the\n\
    \ headers Envoy will trust for core code and core extensions only. Be VERY careful making\n\
    \ changes to this string, especially in multi-layer Envoy deployments or deployments using\n\
    \ extensions which are not upstream.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC2\ENQ\DC2\EOT\238\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC2\SOH\DC2\EOT\238\SOH\t\SYN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC2\ETX\DC2\EOT\238\SOH\EM\ESC\n\
    \\145\STX\n\
    \\EOT\EOT\NUL\STX\DC3\DC2\EOT\243\SOH\STXA\SUB\130\STX Optional proxy version which will be used to set the value of :ref:`server.version statistic\n\
    \ <server_statistics>` if specified. Envoy will not process this value, it will be sent as is to\n\
    \ :ref:`stats sinks <envoy_v3_api_msg_config.metrics.v3.StatsSink>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC3\ACK\DC2\EOT\243\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC3\SOH\DC2\EOT\243\SOH\RS;\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC3\ETX\DC2\EOT\243\SOH>@\n\
    \\172\ENQ\n\
    \\EOT\EOT\NUL\STX\DC4\DC2\ACK\255\SOH\STX\128\STXS\SUB\155\ENQ Always use TCP queries instead of UDP queries for DNS lookups.\n\
    \ This may be overridden on a per-cluster basis in cds_config,\n\
    \ when :ref:`dns_resolvers <envoy_v3_api_field_config.cluster.v3.Cluster.dns_resolvers>` and\n\
    \ :ref:`use_tcp_for_dns_lookups <envoy_v3_api_field_config.cluster.v3.Cluster.use_tcp_for_dns_lookups>` are\n\
    \ specified.\n\
    \ Setting this value causes failure if the\n\
    \ ``envoy.restart_features.use_apple_api_for_dns_lookups`` runtime value is true during\n\
    \ server startup. Apple' API only uses UDP for DNS resolution.\n\
    \ This field is deprecated in favor of *dns_resolution_config*\n\
    \ which aggregates all of the DNS resolver configuration in a single message.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC4\ENQ\DC2\EOT\255\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC4\SOH\DC2\EOT\255\SOH\a\RS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC4\ETX\DC2\EOT\255\SOH!#\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC4\b\DC2\EOT\128\STX\ACKR\n\
    \\SO\n\
    \\ACK\EOT\NUL\STX\DC4\b\ETX\DC2\EOT\128\STX\a\CAN\n\
    \\DC1\n\
    \\t\EOT\NUL\STX\DC4\b\242\232\128K\DC2\EOT\128\STX\SUBQ\n\
    \\164\STX\n\
    \\EOT\EOT\NUL\STX\NAK\DC2\EOT\134\STX\STX9\SUB\149\STX DNS resolution configuration which includes the underlying dns resolver addresses and options.\n\
    \ This may be overridden on a per-cluster basis in cds_config, when\n\
    \ :ref:`dns_resolution_config <envoy_v3_api_field_config.cluster.v3.Cluster.dns_resolution_config>`\n\
    \ is specified.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NAK\ACK\DC2\EOT\134\STX\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NAK\SOH\DC2\EOT\134\STX\RS3\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NAK\ETX\DC2\EOT\134\STX68\n\
    \\186\SOH\n\
    \\EOT\EOT\NUL\STX\SYN\DC2\EOT\139\STX\STXB\SUB\171\SOH Specifies optional bootstrap extensions to be instantiated at startup time.\n\
    \ Each item contains extension specific configuration.\n\
    \ [#extension-category: envoy.bootstrap]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SYN\EOT\DC2\EOT\139\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SYN\ACK\DC2\EOT\139\STX\v'\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SYN\SOH\DC2\EOT\139\STX(<\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SYN\ETX\DC2\EOT\139\STX?A\n\
    \\144\SOH\n\
    \\EOT\EOT\NUL\STX\ETB\DC2\EOT\143\STX\STX*\SUB\129\SOH Specifies optional extensions instantiated at startup time and\n\
    \ invoked during crash time on the request that caused the crash.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETB\EOT\DC2\EOT\143\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETB\ACK\DC2\EOT\143\STX\v\SYN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETB\SOH\DC2\EOT\143\STX\ETB$\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETB\ETX\DC2\EOT\143\STX')\n\
    \\143\a\n\
    \\EOT\EOT\NUL\STX\CAN\DC2\EOT\162\STX\STX4\SUB\128\a Configuration sources that will participate in\n\
    \ xdstp:// URL authority resolution. The algorithm is as\n\
    \ follows:\n\
    \ 1. The authority field is taken from the xdstp:// URL, call\n\
    \    this *resource_authority*.\n\
    \ 2. *resource_authority* is compared against the authorities in any peer\n\
    \    *ConfigSource*. The peer *ConfigSource* is the configuration source\n\
    \    message which would have been used unconditionally for resolution\n\
    \    with opaque resource names. If there is a match with an authority, the\n\
    \    peer *ConfigSource* message is used.\n\
    \ 3. *resource_authority* is compared sequentially with the authorities in\n\
    \    each configuration source in *config_sources*. The first *ConfigSource*\n\
    \    to match wins.\n\
    \ 4. As a fallback, if no configuration source matches, then\n\
    \    *default_config_source* is used.\n\
    \ 5. If *default_config_source* is not specified, resolution fails.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\CAN\EOT\DC2\EOT\162\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\CAN\ACK\DC2\EOT\162\STX\v\US\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\CAN\SOH\DC2\EOT\162\STX .\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\CAN\ETX\DC2\EOT\162\STX13\n\
    \x\n\
    \\EOT\EOT\NUL\STX\EM\DC2\EOT\167\STX\STX2\SUBj Default configuration source for xdstp:// URLs if all\n\
    \ other resolution fails.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EM\ACK\DC2\EOT\167\STX\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EM\SOH\DC2\EOT\167\STX\ETB,\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EM\ETX\DC2\EOT\167\STX/1\n\
    \\176\SOH\n\
    \\EOT\EOT\NUL\STX\SUB\DC2\EOT\171\STX\STX'\SUB\161\SOH Optional overriding of default socket interface. The value must be the name of one of the\n\
    \ socket interface factories initialized through a bootstrap extension\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SUB\ENQ\DC2\EOT\171\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SUB\SOH\DC2\EOT\171\STX\t!\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SUB\ETX\DC2\EOT\171\STX$&\n\
    \\198\STX\n\
    \\EOT\EOT\NUL\STX\ESC\DC2\EOT\178\STX\STXP\SUB\183\STX Global map of CertificateProvider instances. These instances are referred to by name in the\n\
    \ :ref:`CommonTlsContext.CertificateProviderInstance.instance_name\n\
    \ <envoy_v3_api_field_extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderInstance.instance_name>`\n\
    \ field.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ESC\ACK\DC2\EOT\178\STX\STX+\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ESC\SOH\DC2\EOT\178\STX,J\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ESC\ETX\DC2\EOT\178\STXMO\n\
    \~\n\
    \\STX\EOT\SOH\DC2\ACK\184\STX\NUL\209\STX\SOH\SUBp Administration interface :ref:`operations documentation\n\
    \ <operations_admin_interface>`.\n\
    \ [#next-free-field: 6]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SOH\SOH\DC2\EOT\184\STX\b\r\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT\185\STX\STXa\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT\185\STX\STXa\n\
    \w\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOT\189\STX\STX1\SUBi Configuration for :ref:`access logs <arch_overview_access_logs>`\n\
    \ emitted by the administration server.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\EOT\189\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\EOT\189\STX\v!\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\EOT\189\STX\",\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\EOT\189\STX/0\n\
    \\176\STX\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ACK\195\STX\STX\196\STXS\SUB\159\STX The path to write the access log for the administration server. If no\n\
    \ access log is desired specify \226\128\152/dev/null\226\128\153. This is only required if\n\
    \ :ref:`address <envoy_v3_api_field_config.bootstrap.v3.Admin.address>` is set.\n\
    \ Deprecated in favor of *access_log* which offers more options.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\EOT\195\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\EOT\195\STX\t\CAN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\EOT\195\STX\ESC\FS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\EOT\196\STX\ACKR\n\
    \\SO\n\
    \\ACK\EOT\SOH\STX\SOH\b\ETX\DC2\EOT\196\STX\a\CAN\n\
    \\DC1\n\
    \\t\EOT\SOH\STX\SOH\b\242\232\128K\DC2\EOT\196\STX\SUBQ\n\
    \\158\SOH\n\
    \\EOT\EOT\SOH\STX\STX\DC2\EOT\200\STX\STX\SUB\SUB\143\SOH The cpu profiler output path for the administration server. If no profile\n\
    \ path is specified, the default is \226\128\152/var/log/envoy/envoy.prof\226\128\153.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\EOT\200\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\EOT\200\STX\t\NAK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\EOT\200\STX\CAN\EM\n\
    \\145\SOH\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\EOT\204\STX\STX\RS\SUB\130\SOH The TCP address that the administration server will listen on.\n\
    \ If not specified, Envoy will not start an administration server.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\EOT\204\STX\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\EOT\204\STX\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\EOT\204\STX\FS\GS\n\
    \p\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\EOT\208\STX\STX3\SUBb Additional socket options that may not be present in Envoy source code or\n\
    \ precompiled binaries.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\EOT\DC2\EOT\208\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\ACK\DC2\EOT\208\STX\v\US\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\EOT\208\STX .\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\EOT\208\STX12\n\
    \]\n\
    \\STX\EOT\STX\DC2\ACK\212\STX\NUL\252\STX\SOH\SUBO Cluster manager :ref:`architecture overview <arch_overview_cluster_manager>`.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\STX\SOH\DC2\EOT\212\STX\b\SYN\n\
    \\r\n\
    \\ETX\EOT\STX\a\DC2\ACK\213\STX\STX\214\STX1\n\
    \\DC2\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\ACK\213\STX\STX\214\STX1\n\
    \\SO\n\
    \\EOT\EOT\STX\ETX\NUL\DC2\ACK\216\STX\STX\227\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\STX\ETX\NUL\SOH\DC2\EOT\216\STX\n\
    \\SUB\n\
    \\SI\n\
    \\ENQ\EOT\STX\ETX\NUL\a\DC2\ACK\217\STX\EOT\218\STXD\n\
    \\DC4\n\
    \\n\
    \\EOT\STX\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ACK\217\STX\EOT\218\STXD\n\
    \>\n\
    \\ACK\EOT\STX\ETX\NUL\STX\NUL\DC2\EOT\221\STX\EOT\RS\SUB. Specifies the path to the outlier event log.\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\ENQ\DC2\EOT\221\STX\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\SOH\DC2\EOT\221\STX\v\EM\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\ETX\DC2\EOT\221\STX\FS\GS\n\
    \\174\SOH\n\
    \\ACK\EOT\STX\ETX\NUL\STX\SOH\DC2\EOT\226\STX\EOT1\SUB\157\SOH [#not-implemented-hide:]\n\
    \ The gRPC service for the outlier detection event service.\n\
    \ If empty, outlier detection events won't be sent to a remote endpoint.\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\SOH\ACK\DC2\EOT\226\STX\EOT\RS\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\SOH\SOH\DC2\EOT\226\STX\US,\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\SOH\ETX\DC2\EOT\226\STX/0\n\
    \\251\EOT\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\238\STX\STX \SUB\236\EOT Name of the local cluster (i.e., the cluster that owns the Envoy running\n\
    \ this configuration). In order to enable :ref:`zone aware routing\n\
    \ <arch_overview_load_balancing_zone_aware_routing>` this option must be set.\n\
    \ If *local_cluster_name* is defined then :ref:`clusters\n\
    \ <envoy_v3_api_msg_config.cluster.v3.Cluster>` must be defined in the :ref:`Bootstrap\n\
    \ static cluster resources\n\
    \ <envoy_v3_api_field_config.bootstrap.v3.Bootstrap.StaticResources.clusters>`. This is unrelated to\n\
    \ the :option:`--service-cluster` option which does not `affect zone aware\n\
    \ routing <https://github.com/envoyproxy/envoy/issues/774>`_.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\EOT\238\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\238\STX\t\ESC\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\238\STX\RS\US\n\
    \D\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOT\241\STX\STX)\SUB6 Optional global configuration for outlier detection.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\EOT\241\STX\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\EOT\241\STX\DC3$\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\EOT\241\STX'(\n\
    \\182\SOH\n\
    \\EOT\EOT\STX\STX\STX\DC2\EOT\245\STX\STX.\SUB\167\SOH Optional configuration used to bind newly established upstream connections.\n\
    \ This may be overridden on a per-cluster basis by upstream_bind_config in the cds_config.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\EOT\245\STX\STX\DC4\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\EOT\245\STX\NAK)\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\EOT\245\STX,-\n\
    \\142\STX\n\
    \\EOT\EOT\STX\STX\ETX\DC2\EOT\251\STX\STX0\SUB\255\SOH A management server endpoint to stream load stats to via\n\
    \ *StreamLoadStats*. This must have :ref:`api_type\n\
    \ <envoy_v3_api_field_config.core.v3.ApiConfigSource.api_type>` :ref:`GRPC\n\
    \ <envoy_v3_api_enum_value_config.core.v3.ApiConfigSource.ApiType.GRPC>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\EOT\251\STX\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\EOT\251\STX\SUB+\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\EOT\251\STX./\n\
    \\219\SOH\n\
    \\STX\EOT\ETX\DC2\ACK\129\ETX\NUL\135\ETX\SOH\SUB\204\SOH Allows you to specify different watchdog configs for different subsystems.\n\
    \ This allows finer tuned policies for the watchdog. If a subsystem is omitted\n\
    \ the default values for that system will be used.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\129\ETX\b\DC1\n\
    \-\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\131\ETX\STX$\SUB\US Watchdog for the main thread.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\EOT\131\ETX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\131\ETX\v\US\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\131\ETX\"#\n\
    \0\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT\134\ETX\STX\US\SUB\" Watchdog for the worker threads.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\EOT\134\ETX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\EOT\134\ETX\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\EOT\134\ETX\GS\RS\n\
    \\157\STX\n\
    \\STX\EOT\EOT\DC2\ACK\141\ETX\NUL\199\ETX\SOH\SUB\142\STX Envoy process watchdog configuration. When configured, this monitors for\n\
    \ nonresponsive threads and kills the process after the configured thresholds.\n\
    \ See the :ref:`watchdog documentation <operations_performance_watchdog>` for more information.\n\
    \ [#next-free-field: 8]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\141\ETX\b\DLE\n\
    \\v\n\
    \\ETX\EOT\EOT\a\DC2\EOT\142\ETX\STXd\n\
    \\DLE\n\
    \\b\EOT\EOT\a\211\136\225\ETX\SOH\DC2\EOT\142\ETX\STXd\n\
    \\SO\n\
    \\EOT\EOT\EOT\ETX\NUL\DC2\ACK\144\ETX\STX\163\ETX\ETX\n\
    \\r\n\
    \\ENQ\EOT\EOT\ETX\NUL\SOH\DC2\EOT\144\ETX\n\
    \\CAN\n\
    \\141\ETX\n\
    \\ACK\EOT\EOT\ETX\NUL\EOT\NUL\DC2\ACK\151\ETX\EOT\157\ETX\ENQ\SUB\250\STX The events are fired in this order: KILL, MULTIKILL, MEGAMISS, MISS.\n\
    \ Within an event type, actions execute in the order they are configured.\n\
    \ For KILL/MULTIKILL there is a default PANIC that will run after the\n\
    \ registered actions and kills the process if it wasn't already killed.\n\
    \ It might be useful to specify several debug actions, and possibly an\n\
    \ alternate FATAL action.\n\
    \\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\EOT\NUL\SOH\DC2\EOT\151\ETX\t\SYN\n\
    \\DLE\n\
    \\b\EOT\EOT\ETX\NUL\EOT\NUL\STX\NUL\DC2\EOT\152\ETX\ACK\DC2\n\
    \\DC1\n\
    \\t\EOT\EOT\ETX\NUL\EOT\NUL\STX\NUL\SOH\DC2\EOT\152\ETX\ACK\r\n\
    \\DC1\n\
    \\t\EOT\EOT\ETX\NUL\EOT\NUL\STX\NUL\STX\DC2\EOT\152\ETX\DLE\DC1\n\
    \\DLE\n\
    \\b\EOT\EOT\ETX\NUL\EOT\NUL\STX\SOH\DC2\EOT\153\ETX\ACK\SI\n\
    \\DC1\n\
    \\t\EOT\EOT\ETX\NUL\EOT\NUL\STX\SOH\SOH\DC2\EOT\153\ETX\ACK\n\
    \\n\
    \\DC1\n\
    \\t\EOT\EOT\ETX\NUL\EOT\NUL\STX\SOH\STX\DC2\EOT\153\ETX\r\SO\n\
    \\DLE\n\
    \\b\EOT\EOT\ETX\NUL\EOT\NUL\STX\STX\DC2\EOT\154\ETX\ACK\DC4\n\
    \\DC1\n\
    \\t\EOT\EOT\ETX\NUL\EOT\NUL\STX\STX\SOH\DC2\EOT\154\ETX\ACK\SI\n\
    \\DC1\n\
    \\t\EOT\EOT\ETX\NUL\EOT\NUL\STX\STX\STX\DC2\EOT\154\ETX\DC2\DC3\n\
    \\DLE\n\
    \\b\EOT\EOT\ETX\NUL\EOT\NUL\STX\ETX\DC2\EOT\155\ETX\ACK\DC3\n\
    \\DC1\n\
    \\t\EOT\EOT\ETX\NUL\EOT\NUL\STX\ETX\SOH\DC2\EOT\155\ETX\ACK\SO\n\
    \\DC1\n\
    \\t\EOT\EOT\ETX\NUL\EOT\NUL\STX\ETX\STX\DC2\EOT\155\ETX\DC1\DC2\n\
    \\DLE\n\
    \\b\EOT\EOT\ETX\NUL\EOT\NUL\STX\EOT\DC2\EOT\156\ETX\ACK\SI\n\
    \\DC1\n\
    \\t\EOT\EOT\ETX\NUL\EOT\NUL\STX\EOT\SOH\DC2\EOT\156\ETX\ACK\n\
    \\n\
    \\DC1\n\
    \\t\EOT\EOT\ETX\NUL\EOT\NUL\STX\EOT\STX\DC2\EOT\156\ETX\r\SO\n\
    \B\n\
    \\ACK\EOT\EOT\ETX\NUL\STX\NUL\DC2\EOT\160\ETX\EOT,\SUB2 Extension specific configuration for the action.\n\
    \\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\NUL\ACK\DC2\EOT\160\ETX\EOT \n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\NUL\SOH\DC2\EOT\160\ETX!'\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\NUL\ETX\DC2\EOT\160\ETX*+\n\
    \\SO\n\
    \\ACK\EOT\EOT\ETX\NUL\STX\SOH\DC2\EOT\162\ETX\EOTK\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\SOH\ACK\DC2\EOT\162\ETX\EOT\DC1\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\SOH\SOH\DC2\EOT\162\ETX\DC2\ETB\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\SOH\ETX\DC2\EOT\162\ETX\SUB\ESC\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\SOH\b\DC2\EOT\162\ETX\FSJ\n\
    \\DC2\n\
    \\n\
    \\EOT\EOT\ETX\NUL\STX\SOH\b\175\b\DLE\DC2\EOT\162\ETX\GSI\n\
    \w\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\167\ETX\STX&\SUBi Register actions that will fire on given WatchDog events.\n\
    \ See *WatchDogAction* for priority of events.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\EOT\167\ETX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\EOT\167\ETX\v\EM\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\167\ETX\SUB!\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\167\ETX$%\n\
    \\151\SOH\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\EOT\171\ETX\STX,\SUB\136\SOH The duration after which Envoy counts a nonresponsive thread in the\n\
    \ *watchdog_miss* statistic. If not specified the default is 200ms.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\EOT\171\ETX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\EOT\171\ETX\ESC'\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\EOT\171\ETX*+\n\
    \\158\SOH\n\
    \\EOT\EOT\EOT\STX\STX\DC2\EOT\176\ETX\STX0\SUB\143\SOH The duration after which Envoy counts a nonresponsive thread in the\n\
    \ *watchdog_mega_miss* statistic. If not specified the default is\n\
    \ 1000ms.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ACK\DC2\EOT\176\ETX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\EOT\176\ETX\ESC+\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\EOT\176\ETX./\n\
    \\223\SOH\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\EOT\181\ETX\STX,\SUB\208\SOH If a watched thread has been nonresponsive for this duration, assume a\n\
    \ programming error and kill the entire Envoy process. Set to 0 to disable\n\
    \ kill behavior. If not specified the default is 0 (disabled).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ACK\DC2\EOT\181\ETX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\EOT\181\ETX\ESC'\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\EOT\181\ETX*+\n\
    \\175\STX\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\EOT\187\ETX\STX^\SUB\160\STX Defines the maximum jitter used to adjust the *kill_timeout* if *kill_timeout* is\n\
    \ enabled. Enabling this feature would help to reduce risk of synchronized\n\
    \ watchdog kill events across proxies due to external triggers. Set to 0 to\n\
    \ disable. If not specified the default is 0 (disabled).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\ACK\DC2\EOT\187\ETX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\EOT\187\ETX\ESC2\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\EOT\187\ETX56\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\b\DC2\EOT\187\ETX7]\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\EOT\b\175\b\NAK\DC2\EOT\187\ETX8\\\n\
    \\132\STX\n\
    \\EOT\EOT\EOT\STX\ENQ\DC2\EOT\193\ETX\STX1\SUB\245\SOH If max(2, ceil(registered_threads * Fraction(*multikill_threshold*)))\n\
    \ threads have been nonresponsive for at least this duration kill the entire\n\
    \ Envoy process. Set to 0 to disable this behavior. If not specified the\n\
    \ default is 0 (disabled).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\ACK\DC2\EOT\193\ETX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\SOH\DC2\EOT\193\ETX\ESC,\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\ETX\DC2\EOT\193\ETX/0\n\
    \\186\SOH\n\
    \\EOT\EOT\EOT\STX\ACK\DC2\EOT\198\ETX\STX*\SUB\171\SOH Sets the threshold for *multikill_timeout* in terms of the percentage of\n\
    \ nonresponsive threads required for the *multikill_timeout*.\n\
    \ If not specified the default is 0.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ACK\ACK\DC2\EOT\198\ETX\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ACK\SOH\DC2\EOT\198\ETX\DC2%\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ACK\ETX\DC2\EOT\198\ETX()\n\
    \\224\ETX\n\
    \\STX\EOT\ENQ\DC2\ACK\209\ETX\NUL\213\ETX\SOH\SUB\209\ETX Fatal actions to run while crashing. Actions can be safe (meaning they are\n\
    \ async-signal safe) or unsafe. We run all safe actions before we run unsafe actions.\n\
    \ If using an unsafe action that could get stuck or deadlock, it important to\n\
    \ have an out of band system to terminate the process.\n\
    \\n\
    \ The interface for the extension is ``Envoy::Server::Configuration::FatalAction``.\n\
    \ *FatalAction* extensions live in the ``envoy.extensions.fatal_actions`` API\n\
    \ namespace.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\209\ETX\b\DC3\n\
    \\155\SOH\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\212\ETX\STX*\SUB\140\SOH Extension specific configuration for the action. It's expected to conform\n\
    \ to the ``Envoy::Server::Configuration::FatalAction`` interface.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\EOT\212\ETX\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\212\ETX\US%\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\212\ETX()\n\
    \T\n\
    \\STX\EOT\ACK\DC2\ACK\216\ETX\NUL\245\ETX\SOH\SUBF Runtime :ref:`configuration overview <config_runtime>` (deprecated).\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\216\ETX\b\SI\n\
    \\v\n\
    \\ETX\EOT\ACK\a\DC2\EOT\217\ETX\STXc\n\
    \\DLE\n\
    \\b\EOT\ACK\a\211\136\225\ETX\SOH\DC2\EOT\217\ETX\STXc\n\
    \\133\ETX\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\225\ETX\STX\SUB\SUB\246\STX The implementation assumes that the file system tree is accessed via a\n\
    \ symbolic link. An atomic link swap is used when a new tree should be\n\
    \ switched to. This parameter specifies the path to the symbolic link. Envoy\n\
    \ will watch the location for changes and reload the file system tree when\n\
    \ they happen. If this parameter is not set, there will be no disk based\n\
    \ runtime.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\EOT\225\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\225\ETX\t\NAK\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\225\ETX\CAN\EM\n\
    \\225\SOH\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\230\ETX\STX\SUB\SUB\210\SOH Specifies the subdirectory to load within the root directory. This is\n\
    \ useful if multiple systems share the same delivery mechanism. Envoy\n\
    \ configuration elements can be contained in a dedicated subdirectory.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\EOT\230\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\230\ETX\t\NAK\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\230\ETX\CAN\EM\n\
    \\198\ETX\n\
    \\EOT\EOT\ACK\STX\STX\DC2\EOT\238\ETX\STX#\SUB\183\ETX Specifies an optional subdirectory to load within the root directory. If\n\
    \ specified and the directory exists, configuration values within this\n\
    \ directory will override those found in the primary subdirectory. This is\n\
    \ useful when Envoy is deployed across many different types of servers.\n\
    \ Sometimes it is useful to have a per service cluster directory for runtime\n\
    \ configuration. See below for exactly how the override directory is used.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\EOT\238\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\EOT\238\ETX\t\RS\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\EOT\238\ETX!\"\n\
    \\241\SOH\n\
    \\EOT\EOT\ACK\STX\ETX\DC2\EOT\244\ETX\STX\"\SUB\226\SOH Static base runtime. This will be :ref:`overridden\n\
    \ <config_runtime_layering>` by other runtime layers, e.g.\n\
    \ disk or admin. This follows the :ref:`runtime protobuf JSON representation\n\
    \ encoding <config_runtime_proto_json>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\ACK\DC2\EOT\244\ETX\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\SOH\DC2\EOT\244\ETX\EM\GS\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\ETX\DC2\EOT\244\ETX !\n\
    \%\n\
    \\STX\EOT\a\DC2\ACK\248\ETX\NUL\185\EOT\SOH\SUB\ETB [#next-free-field: 6]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\248\ETX\b\DC4\n\
    \\r\n\
    \\ETX\EOT\a\a\DC2\ACK\249\ETX\STX\250\ETX/\n\
    \\DC2\n\
    \\b\EOT\a\a\211\136\225\ETX\SOH\DC2\ACK\249\ETX\STX\250\ETX/\n\
    \H\n\
    \\EOT\EOT\a\ETX\NUL\DC2\ACK\253\ETX\STX\146\EOT\ETX\SUB8 :ref:`Disk runtime <config_runtime_local_disk>` layer.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\ETX\NUL\SOH\DC2\EOT\253\ETX\n\
    \\DC3\n\
    \\SI\n\
    \\ENQ\EOT\a\ETX\NUL\a\DC2\ACK\254\ETX\EOT\255\ETX;\n\
    \\DC4\n\
    \\n\
    \\EOT\a\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ACK\254\ETX\EOT\255\ETX;\n\
    \\190\ETX\n\
    \\ACK\EOT\a\ETX\NUL\STX\NUL\DC2\EOT\136\EOT\EOT\FS\SUB\173\ETX The implementation assumes that the file system tree is accessed via a\n\
    \ symbolic link. An atomic link swap is used when a new tree should be\n\
    \ switched to. This parameter specifies the path to the symbolic link.\n\
    \ Envoy will watch the location for changes and reload the file system tree\n\
    \ when they happen. See documentation on runtime :ref:`atomicity\n\
    \ <config_runtime_atomicity>` for further details on how reloads are\n\
    \ treated.\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\NUL\ENQ\DC2\EOT\136\EOT\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\NUL\SOH\DC2\EOT\136\EOT\v\ETB\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\NUL\ETX\DC2\EOT\136\EOT\SUB\ESC\n\
    \\227\SOH\n\
    \\ACK\EOT\a\ETX\NUL\STX\SOH\DC2\EOT\141\EOT\EOT\FS\SUB\210\SOH Specifies the subdirectory to load within the root directory. This is\n\
    \ useful if multiple systems share the same delivery mechanism. Envoy\n\
    \ configuration elements can be contained in a dedicated subdirectory.\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\SOH\ENQ\DC2\EOT\141\EOT\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\SOH\SOH\DC2\EOT\141\EOT\v\ETB\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\SOH\ETX\DC2\EOT\141\EOT\SUB\ESC\n\
    \\136\SOH\n\
    \\ACK\EOT\a\ETX\NUL\STX\STX\DC2\EOT\145\EOT\EOT$\SUBx :ref:`Append <config_runtime_local_disk_service_cluster_subdirs>` the\n\
    \ service cluster to the path under symlink root.\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\STX\ENQ\DC2\EOT\145\EOT\EOT\b\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\STX\SOH\DC2\EOT\145\EOT\t\US\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\STX\ETX\DC2\EOT\145\EOT\"#\n\
    \L\n\
    \\EOT\EOT\a\ETX\SOH\DC2\ACK\149\EOT\STX\152\EOT\ETX\SUB< :ref:`Admin console runtime <config_runtime_admin>` layer.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\ETX\SOH\SOH\DC2\EOT\149\EOT\n\
    \\DC4\n\
    \\SI\n\
    \\ENQ\EOT\a\ETX\SOH\a\DC2\ACK\150\EOT\EOT\151\EOT<\n\
    \\DC4\n\
    \\n\
    \\EOT\a\ETX\SOH\a\211\136\225\ETX\SOH\DC2\ACK\150\EOT\EOT\151\EOT<\n\
    \V\n\
    \\EOT\EOT\a\ETX\STX\DC2\ACK\155\EOT\STX\164\EOT\ETX\SUBF :ref:`Runtime Discovery Service (RTDS) <config_runtime_rtds>` layer.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\ETX\STX\SOH\DC2\EOT\155\EOT\n\
    \\DC3\n\
    \\SI\n\
    \\ENQ\EOT\a\ETX\STX\a\DC2\ACK\156\EOT\EOT\157\EOT;\n\
    \\DC4\n\
    \\n\
    \\EOT\a\ETX\STX\a\211\136\225\ETX\SOH\DC2\ACK\156\EOT\EOT\157\EOT;\n\
    \O\n\
    \\ACK\EOT\a\ETX\STX\STX\NUL\DC2\EOT\160\EOT\EOT\DC4\SUB? Resource to subscribe to at *rtds_config* for the RTDS layer.\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\STX\STX\NUL\ENQ\DC2\EOT\160\EOT\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\STX\STX\NUL\SOH\DC2\EOT\160\EOT\v\SI\n\
    \\SI\n\
    \\a\EOT\a\ETX\STX\STX\NUL\ETX\DC2\EOT\160\EOT\DC2\DC3\n\
    \,\n\
    \\ACK\EOT\a\ETX\STX\STX\SOH\DC2\EOT\163\EOT\EOT)\SUB\FS RTDS configuration source.\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\STX\STX\SOH\ACK\DC2\EOT\163\EOT\EOT\CAN\n\
    \\SI\n\
    \\a\EOT\a\ETX\STX\STX\SOH\SOH\DC2\EOT\163\EOT\EM$\n\
    \\SI\n\
    \\a\EOT\a\ETX\STX\STX\SOH\ETX\DC2\EOT\163\EOT'(\n\
    \w\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\168\EOT\STX;\SUBi Descriptive name for the runtime layer. This is only used for the runtime\n\
    \ :http:get:`/runtime` output.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\EOT\168\EOT\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\168\EOT\t\r\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\168\EOT\DLE\DC1\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\b\DC2\EOT\168\EOT\DC2:\n\
    \\DLE\n\
    \\b\EOT\a\STX\NUL\b\175\b\SO\DC2\EOT\168\EOT\DC39\n\
    \\SO\n\
    \\EOT\EOT\a\b\NUL\DC2\ACK\170\EOT\STX\184\EOT\ETX\n\
    \\r\n\
    \\ENQ\EOT\a\b\NUL\SOH\DC2\EOT\170\EOT\b\ETB\n\
    \\r\n\
    \\ENQ\EOT\a\b\NUL\STX\DC2\EOT\171\EOT\EOT&\n\
    \\SI\n\
    \\a\EOT\a\b\NUL\STX\175\b\DC2\EOT\171\EOT\EOT&\n\
    \\159\STX\n\
    \\EOT\EOT\a\STX\SOH\DC2\EOT\177\EOT\EOT,\SUB\144\STX :ref:`Static runtime <config_runtime_bootstrap>` layer.\n\
    \ This follows the :ref:`runtime protobuf JSON representation encoding\n\
    \ <config_runtime_proto_json>`. Unlike static xDS resources, this static\n\
    \ layer is overridable by later layers in the runtime virtual filesystem.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ACK\DC2\EOT\177\EOT\EOT\SUB\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\EOT\177\EOT\ESC'\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\EOT\177\EOT*+\n\
    \\f\n\
    \\EOT\EOT\a\STX\STX\DC2\EOT\179\EOT\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ACK\DC2\EOT\179\EOT\EOT\r\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\EOT\179\EOT\SO\CAN\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\EOT\179\EOT\ESC\FS\n\
    \\f\n\
    \\EOT\EOT\a\STX\ETX\DC2\EOT\181\EOT\EOT\US\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\ACK\DC2\EOT\181\EOT\EOT\SO\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\SOH\DC2\EOT\181\EOT\SI\SUB\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\ETX\DC2\EOT\181\EOT\GS\RS\n\
    \\f\n\
    \\EOT\EOT\a\STX\EOT\DC2\EOT\183\EOT\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\ACK\DC2\EOT\183\EOT\EOT\r\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\SOH\DC2\EOT\183\EOT\SO\CAN\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\ETX\DC2\EOT\183\EOT\ESC\FS\n\
    \G\n\
    \\STX\EOT\b\DC2\ACK\188\EOT\NUL\195\EOT\SOH\SUB9 Runtime :ref:`configuration overview <config_runtime>`.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\188\EOT\b\SYN\n\
    \\r\n\
    \\ETX\EOT\b\a\DC2\ACK\189\EOT\STX\190\EOT1\n\
    \\DC2\n\
    \\b\EOT\b\a\211\136\225\ETX\SOH\DC2\ACK\189\EOT\STX\190\EOT1\n\
    \\153\SOH\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\194\EOT\STX#\SUB\138\SOH The :ref:`layers <config_runtime_layering>` of the runtime. This is ordered\n\
    \ such that later layers in the list overlay earlier entries.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\EOT\DC2\EOT\194\EOT\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\EOT\194\EOT\v\ETB\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\194\EOT\CAN\RS\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\194\EOT!\"b\ACKproto3"