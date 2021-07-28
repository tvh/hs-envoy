{- This file was auto-generated from envoy/extensions/filters/network/redis_proxy/v3/redis_proxy.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy (
        RedisProtocolOptions(), RedisProxy(),
        RedisProxy'ConnPoolSettings(),
        RedisProxy'ConnPoolSettings'ReadPolicy(..),
        RedisProxy'ConnPoolSettings'ReadPolicy(),
        RedisProxy'ConnPoolSettings'ReadPolicy'UnrecognizedValue,
        RedisProxy'PrefixRoutes(), RedisProxy'PrefixRoutes'Route(),
        RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy(),
        RedisProxy'RedisFault(), RedisProxy'RedisFault'RedisFaultType(..),
        RedisProxy'RedisFault'RedisFaultType(),
        RedisProxy'RedisFault'RedisFaultType'UnrecognizedValue
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
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Sensitive
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.authPassword' @:: Lens' RedisProtocolOptions Proto.Envoy.Config.Core.V3.Base.DataSource@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.maybe'authPassword' @:: Lens' RedisProtocolOptions (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource)@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.authUsername' @:: Lens' RedisProtocolOptions Proto.Envoy.Config.Core.V3.Base.DataSource@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.maybe'authUsername' @:: Lens' RedisProtocolOptions (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource)@ -}
data RedisProtocolOptions
  = RedisProtocolOptions'_constructor {_RedisProtocolOptions'authPassword :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource),
                                       _RedisProtocolOptions'authUsername :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource),
                                       _RedisProtocolOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RedisProtocolOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RedisProtocolOptions "authPassword" Proto.Envoy.Config.Core.V3.Base.DataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProtocolOptions'authPassword
           (\ x__ y__ -> x__ {_RedisProtocolOptions'authPassword = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RedisProtocolOptions "maybe'authPassword" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProtocolOptions'authPassword
           (\ x__ y__ -> x__ {_RedisProtocolOptions'authPassword = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisProtocolOptions "authUsername" Proto.Envoy.Config.Core.V3.Base.DataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProtocolOptions'authUsername
           (\ x__ y__ -> x__ {_RedisProtocolOptions'authUsername = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RedisProtocolOptions "maybe'authUsername" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProtocolOptions'authUsername
           (\ x__ y__ -> x__ {_RedisProtocolOptions'authUsername = y__}))
        Prelude.id
instance Data.ProtoLens.Message RedisProtocolOptions where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.redis_proxy.v3.RedisProtocolOptions"
  packedMessageDescriptor _
    = "\n\
      \\DC4RedisProtocolOptions\DC2M\n\
      \\rauth_password\CAN\SOH \SOH(\v2 .envoy.config.core.v3.DataSourceR\fauthPasswordB\ACK\184\183\139\164\STX\SOH\DC2M\n\
      \\rauth_username\CAN\STX \SOH(\v2 .envoy.config.core.v3.DataSourceR\fauthUsernameB\ACK\184\183\139\164\STX\SOH:F\154\197\136\RSA\n\
      \?envoy.config.filter.network.redis_proxy.v2.RedisProtocolOptions"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        authPassword__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "auth_password"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.DataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'authPassword")) ::
              Data.ProtoLens.FieldDescriptor RedisProtocolOptions
        authUsername__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "auth_username"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.DataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'authUsername")) ::
              Data.ProtoLens.FieldDescriptor RedisProtocolOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, authPassword__field_descriptor),
           (Data.ProtoLens.Tag 2, authUsername__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RedisProtocolOptions'_unknownFields
        (\ x__ y__ -> x__ {_RedisProtocolOptions'_unknownFields = y__})
  defMessage
    = RedisProtocolOptions'_constructor
        {_RedisProtocolOptions'authPassword = Prelude.Nothing,
         _RedisProtocolOptions'authUsername = Prelude.Nothing,
         _RedisProtocolOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RedisProtocolOptions
          -> Data.ProtoLens.Encoding.Bytes.Parser RedisProtocolOptions
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
                                       "auth_password"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"authPassword") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "auth_username"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"authUsername") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RedisProtocolOptions"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'authPassword") _x
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
                       (Data.ProtoLens.Field.field @"maybe'authUsername") _x
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
instance Control.DeepSeq.NFData RedisProtocolOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RedisProtocolOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RedisProtocolOptions'authPassword x__)
                (Control.DeepSeq.deepseq
                   (_RedisProtocolOptions'authUsername x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.statPrefix' @:: Lens' RedisProxy Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.settings' @:: Lens' RedisProxy RedisProxy'ConnPoolSettings@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.maybe'settings' @:: Lens' RedisProxy (Prelude.Maybe RedisProxy'ConnPoolSettings)@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.latencyInMicros' @:: Lens' RedisProxy Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.prefixRoutes' @:: Lens' RedisProxy RedisProxy'PrefixRoutes@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.maybe'prefixRoutes' @:: Lens' RedisProxy (Prelude.Maybe RedisProxy'PrefixRoutes)@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.downstreamAuthPassword' @:: Lens' RedisProxy Proto.Envoy.Config.Core.V3.Base.DataSource@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.maybe'downstreamAuthPassword' @:: Lens' RedisProxy (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource)@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.faults' @:: Lens' RedisProxy [RedisProxy'RedisFault]@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.vec'faults' @:: Lens' RedisProxy (Data.Vector.Vector RedisProxy'RedisFault)@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.downstreamAuthUsername' @:: Lens' RedisProxy Proto.Envoy.Config.Core.V3.Base.DataSource@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.maybe'downstreamAuthUsername' @:: Lens' RedisProxy (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource)@ -}
data RedisProxy
  = RedisProxy'_constructor {_RedisProxy'statPrefix :: !Data.Text.Text,
                             _RedisProxy'settings :: !(Prelude.Maybe RedisProxy'ConnPoolSettings),
                             _RedisProxy'latencyInMicros :: !Prelude.Bool,
                             _RedisProxy'prefixRoutes :: !(Prelude.Maybe RedisProxy'PrefixRoutes),
                             _RedisProxy'downstreamAuthPassword :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource),
                             _RedisProxy'faults :: !(Data.Vector.Vector RedisProxy'RedisFault),
                             _RedisProxy'downstreamAuthUsername :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource),
                             _RedisProxy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RedisProxy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RedisProxy "statPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'statPrefix
           (\ x__ y__ -> x__ {_RedisProxy'statPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisProxy "settings" RedisProxy'ConnPoolSettings where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'settings
           (\ x__ y__ -> x__ {_RedisProxy'settings = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RedisProxy "maybe'settings" (Prelude.Maybe RedisProxy'ConnPoolSettings) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'settings
           (\ x__ y__ -> x__ {_RedisProxy'settings = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisProxy "latencyInMicros" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'latencyInMicros
           (\ x__ y__ -> x__ {_RedisProxy'latencyInMicros = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisProxy "prefixRoutes" RedisProxy'PrefixRoutes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'prefixRoutes
           (\ x__ y__ -> x__ {_RedisProxy'prefixRoutes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RedisProxy "maybe'prefixRoutes" (Prelude.Maybe RedisProxy'PrefixRoutes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'prefixRoutes
           (\ x__ y__ -> x__ {_RedisProxy'prefixRoutes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisProxy "downstreamAuthPassword" Proto.Envoy.Config.Core.V3.Base.DataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'downstreamAuthPassword
           (\ x__ y__ -> x__ {_RedisProxy'downstreamAuthPassword = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RedisProxy "maybe'downstreamAuthPassword" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'downstreamAuthPassword
           (\ x__ y__ -> x__ {_RedisProxy'downstreamAuthPassword = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisProxy "faults" [RedisProxy'RedisFault] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'faults (\ x__ y__ -> x__ {_RedisProxy'faults = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RedisProxy "vec'faults" (Data.Vector.Vector RedisProxy'RedisFault) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'faults (\ x__ y__ -> x__ {_RedisProxy'faults = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisProxy "downstreamAuthUsername" Proto.Envoy.Config.Core.V3.Base.DataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'downstreamAuthUsername
           (\ x__ y__ -> x__ {_RedisProxy'downstreamAuthUsername = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RedisProxy "maybe'downstreamAuthUsername" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'downstreamAuthUsername
           (\ x__ y__ -> x__ {_RedisProxy'downstreamAuthUsername = y__}))
        Prelude.id
instance Data.ProtoLens.Message RedisProxy where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.redis_proxy.v3.RedisProxy"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \RedisProxy\DC2(\n\
      \\vstat_prefix\CAN\SOH \SOH(\tR\n\
      \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2r\n\
      \\bsettings\CAN\ETX \SOH(\v2L.envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.ConnPoolSettingsR\bsettingsB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2*\n\
      \\DC1latency_in_micros\CAN\EOT \SOH(\bR\SIlatencyInMicros\DC2m\n\
      \\rprefix_routes\CAN\ENQ \SOH(\v2H.envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.PrefixRoutesR\fprefixRoutes\DC2b\n\
      \\CANdownstream_auth_password\CAN\ACK \SOH(\v2 .envoy.config.core.v3.DataSourceR\SYNdownstreamAuthPasswordB\ACK\184\183\139\164\STX\SOH\DC2^\n\
      \\ACKfaults\CAN\b \ETX(\v2F.envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.RedisFaultR\ACKfaults\DC2b\n\
      \\CANdownstream_auth_username\CAN\a \SOH(\v2 .envoy.config.core.v3.DataSourceR\SYNdownstreamAuthUsernameB\ACK\184\183\139\164\STX\SOH\SUB\174\ACK\n\
      \\DLEConnPoolSettings\DC2B\n\
      \\n\
      \op_timeout\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\topTimeoutB\b\250B\ENQ\170\SOH\STX\b\SOH\DC2-\n\
      \\DC2enable_hashtagging\CAN\STX \SOH(\bR\DC1enableHashtagging\DC2-\n\
      \\DC2enable_redirection\CAN\ETX \SOH(\bR\DC1enableRedirection\DC2>\n\
      \\FSmax_buffer_size_before_flush\CAN\EOT \SOH(\rR\CANmaxBufferSizeBeforeFlush\DC2K\n\
      \\DC4buffer_flush_timeout\CAN\ENQ \SOH(\v2\EM.google.protobuf.DurationR\DC2bufferFlushTimeout\DC2e\n\
      \ max_upstream_unknown_connections\CAN\ACK \SOH(\v2\FS.google.protobuf.UInt32ValueR\GSmaxUpstreamUnknownConnections\DC20\n\
      \\DC4enable_command_stats\CAN\b \SOH(\bR\DC2enableCommandStats\DC2\130\SOH\n\
      \\vread_policy\CAN\a \SOH(\SO2W.envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.ConnPoolSettings.ReadPolicyR\n\
      \readPolicyB\b\250B\ENQ\130\SOH\STX\DLE\SOH\"~\n\
      \\n\
      \ReadPolicy\DC2\ESC\n\
      \\ACKMASTER\DLE\NUL\SUB\SI\242\152\254\143\ENQ\t\n\
      \\aPRIMARY\DC2)\n\
      \\rPREFER_MASTER\DLE\SOH\SUB\SYN\242\152\254\143\ENQ\DLE\n\
      \\SOPREFER_PRIMARY\DC2\v\n\
      \\aREPLICA\DLE\STX\DC2\DC2\n\
      \\SOPREFER_REPLICA\DLE\ETX\DC2\a\n\
      \\ETXANY\DLE\EOT:M\154\197\136\RSH\n\
      \Fenvoy.config.filter.network.redis_proxy.v2.RedisProxy.ConnPoolSettings\SUB\138\b\n\
      \\fPrefixRoutes\DC2f\n\
      \\ACKroutes\CAN\SOH \ETX(\v2N.envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.PrefixRoutes.RouteR\ACKroutes\DC2)\n\
      \\DLEcase_insensitive\CAN\STX \SOH(\bR\SIcaseInsensitive\DC2v\n\
      \\SIcatch_all_route\CAN\EOT \SOH(\v2N.envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.PrefixRoutes.RouteR\rcatchAllRoute\SUB\138\ENQ\n\
      \\ENQRoute\DC2 \n\
      \\ACKprefix\CAN\SOH \SOH(\tR\ACKprefixB\b\250B\ENQr\ETX(\232\a\DC2#\n\
      \\rremove_prefix\CAN\STX \SOH(\bR\fremovePrefix\DC2!\n\
      \\acluster\CAN\ETX \SOH(\tR\aclusterB\a\250B\EOTr\STX\DLE\SOH\DC2\150\SOH\n\
      \\NAKrequest_mirror_policy\CAN\EOT \ETX(\v2b.envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.PrefixRoutes.Route.RequestMirrorPolicyR\DC3requestMirrorPolicy\SUB\172\STX\n\
      \\DC3RequestMirrorPolicy\DC2!\n\
      \\acluster\CAN\SOH \SOH(\tR\aclusterB\a\250B\EOTr\STX\DLE\SOH\DC2Y\n\
      \\DLEruntime_fraction\CAN\STX \SOH(\v2..envoy.config.core.v3.RuntimeFractionalPercentR\SIruntimeFraction\DC22\n\
      \\NAKexclude_read_commands\CAN\ETX \SOH(\bR\DC3excludeReadCommands:c\154\197\136\RS^\n\
      \\\envoy.config.filter.network.redis_proxy.v2.RedisProxy.PrefixRoutes.Route.RequestMirrorPolicy:O\154\197\136\RSJ\n\
      \Henvoy.config.filter.network.redis_proxy.v2.RedisProxy.PrefixRoutes.Route:I\154\197\136\RSD\n\
      \Benvoy.config.filter.network.redis_proxy.v2.RedisProxy.PrefixRoutesJ\EOT\b\ETX\DLE\EOTR\DC1catch_all_cluster\SUB\224\STX\n\
      \\n\
      \RedisFault\DC2~\n\
      \\n\
      \fault_type\CAN\SOH \SOH(\SO2U.envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.RedisFault.RedisFaultTypeR\tfaultTypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2]\n\
      \\rfault_enabled\CAN\STX \SOH(\v2..envoy.config.core.v3.RuntimeFractionalPercentR\ffaultEnabledB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2/\n\
      \\ENQdelay\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\ENQdelay\DC2\SUB\n\
      \\bcommands\CAN\EOT \ETX(\tR\bcommands\"&\n\
      \\SORedisFaultType\DC2\t\n\
      \\ENQDELAY\DLE\NUL\DC2\t\n\
      \\ENQERROR\DLE\SOH:<\154\197\136\RS7\n\
      \5envoy.config.filter.network.redis_proxy.v2.RedisProxyJ\EOT\b\STX\DLE\ETXR\acluster"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        statPrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stat_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"statPrefix")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy
        settings__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "settings"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RedisProxy'ConnPoolSettings)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'settings")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy
        latencyInMicros__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "latency_in_micros"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"latencyInMicros")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy
        prefixRoutes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prefix_routes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RedisProxy'PrefixRoutes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'prefixRoutes")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy
        downstreamAuthPassword__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "downstream_auth_password"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.DataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'downstreamAuthPassword")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy
        faults__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "faults"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RedisProxy'RedisFault)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"faults")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy
        downstreamAuthUsername__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "downstream_auth_username"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.DataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'downstreamAuthUsername")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, statPrefix__field_descriptor),
           (Data.ProtoLens.Tag 3, settings__field_descriptor),
           (Data.ProtoLens.Tag 4, latencyInMicros__field_descriptor),
           (Data.ProtoLens.Tag 5, prefixRoutes__field_descriptor),
           (Data.ProtoLens.Tag 6, downstreamAuthPassword__field_descriptor),
           (Data.ProtoLens.Tag 8, faults__field_descriptor),
           (Data.ProtoLens.Tag 7, downstreamAuthUsername__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RedisProxy'_unknownFields
        (\ x__ y__ -> x__ {_RedisProxy'_unknownFields = y__})
  defMessage
    = RedisProxy'_constructor
        {_RedisProxy'statPrefix = Data.ProtoLens.fieldDefault,
         _RedisProxy'settings = Prelude.Nothing,
         _RedisProxy'latencyInMicros = Data.ProtoLens.fieldDefault,
         _RedisProxy'prefixRoutes = Prelude.Nothing,
         _RedisProxy'downstreamAuthPassword = Prelude.Nothing,
         _RedisProxy'faults = Data.Vector.Generic.empty,
         _RedisProxy'downstreamAuthUsername = Prelude.Nothing,
         _RedisProxy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RedisProxy
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld RedisProxy'RedisFault
             -> Data.ProtoLens.Encoding.Bytes.Parser RedisProxy
        loop x mutable'faults
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'faults <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'faults)
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
                              (Data.ProtoLens.Field.field @"vec'faults") frozen'faults x))
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
                                       "stat_prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"statPrefix") y x)
                                  mutable'faults
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "settings"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"settings") y x)
                                  mutable'faults
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "latency_in_micros"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"latencyInMicros") y x)
                                  mutable'faults
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "prefix_routes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"prefixRoutes") y x)
                                  mutable'faults
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "downstream_auth_password"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"downstreamAuthPassword") y x)
                                  mutable'faults
                        66
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "faults"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'faults y)
                                loop x v
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "downstream_auth_username"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"downstreamAuthUsername") y x)
                                  mutable'faults
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'faults
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'faults <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'faults)
          "RedisProxy"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"statPrefix") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'settings") _x
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
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"latencyInMicros") _x
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
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'prefixRoutes") _x
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
                                (Data.ProtoLens.Field.field @"maybe'downstreamAuthPassword") _x
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
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
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
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'faults") _x))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'downstreamAuthUsername")
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
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage
                                            _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData RedisProxy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RedisProxy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RedisProxy'statPrefix x__)
                (Control.DeepSeq.deepseq
                   (_RedisProxy'settings x__)
                   (Control.DeepSeq.deepseq
                      (_RedisProxy'latencyInMicros x__)
                      (Control.DeepSeq.deepseq
                         (_RedisProxy'prefixRoutes x__)
                         (Control.DeepSeq.deepseq
                            (_RedisProxy'downstreamAuthPassword x__)
                            (Control.DeepSeq.deepseq
                               (_RedisProxy'faults x__)
                               (Control.DeepSeq.deepseq
                                  (_RedisProxy'downstreamAuthUsername x__) ())))))))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.opTimeout' @:: Lens' RedisProxy'ConnPoolSettings Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.maybe'opTimeout' @:: Lens' RedisProxy'ConnPoolSettings (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.enableHashtagging' @:: Lens' RedisProxy'ConnPoolSettings Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.enableRedirection' @:: Lens' RedisProxy'ConnPoolSettings Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.maxBufferSizeBeforeFlush' @:: Lens' RedisProxy'ConnPoolSettings Data.Word.Word32@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.bufferFlushTimeout' @:: Lens' RedisProxy'ConnPoolSettings Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.maybe'bufferFlushTimeout' @:: Lens' RedisProxy'ConnPoolSettings (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.maxUpstreamUnknownConnections' @:: Lens' RedisProxy'ConnPoolSettings Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.maybe'maxUpstreamUnknownConnections' @:: Lens' RedisProxy'ConnPoolSettings (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.enableCommandStats' @:: Lens' RedisProxy'ConnPoolSettings Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.readPolicy' @:: Lens' RedisProxy'ConnPoolSettings RedisProxy'ConnPoolSettings'ReadPolicy@ -}
data RedisProxy'ConnPoolSettings
  = RedisProxy'ConnPoolSettings'_constructor {_RedisProxy'ConnPoolSettings'opTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                              _RedisProxy'ConnPoolSettings'enableHashtagging :: !Prelude.Bool,
                                              _RedisProxy'ConnPoolSettings'enableRedirection :: !Prelude.Bool,
                                              _RedisProxy'ConnPoolSettings'maxBufferSizeBeforeFlush :: !Data.Word.Word32,
                                              _RedisProxy'ConnPoolSettings'bufferFlushTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                              _RedisProxy'ConnPoolSettings'maxUpstreamUnknownConnections :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                              _RedisProxy'ConnPoolSettings'enableCommandStats :: !Prelude.Bool,
                                              _RedisProxy'ConnPoolSettings'readPolicy :: !RedisProxy'ConnPoolSettings'ReadPolicy,
                                              _RedisProxy'ConnPoolSettings'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RedisProxy'ConnPoolSettings where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RedisProxy'ConnPoolSettings "opTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'ConnPoolSettings'opTimeout
           (\ x__ y__ -> x__ {_RedisProxy'ConnPoolSettings'opTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RedisProxy'ConnPoolSettings "maybe'opTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'ConnPoolSettings'opTimeout
           (\ x__ y__ -> x__ {_RedisProxy'ConnPoolSettings'opTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisProxy'ConnPoolSettings "enableHashtagging" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'ConnPoolSettings'enableHashtagging
           (\ x__ y__
              -> x__ {_RedisProxy'ConnPoolSettings'enableHashtagging = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisProxy'ConnPoolSettings "enableRedirection" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'ConnPoolSettings'enableRedirection
           (\ x__ y__
              -> x__ {_RedisProxy'ConnPoolSettings'enableRedirection = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisProxy'ConnPoolSettings "maxBufferSizeBeforeFlush" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'ConnPoolSettings'maxBufferSizeBeforeFlush
           (\ x__ y__
              -> x__
                   {_RedisProxy'ConnPoolSettings'maxBufferSizeBeforeFlush = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisProxy'ConnPoolSettings "bufferFlushTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'ConnPoolSettings'bufferFlushTimeout
           (\ x__ y__
              -> x__ {_RedisProxy'ConnPoolSettings'bufferFlushTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RedisProxy'ConnPoolSettings "maybe'bufferFlushTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'ConnPoolSettings'bufferFlushTimeout
           (\ x__ y__
              -> x__ {_RedisProxy'ConnPoolSettings'bufferFlushTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisProxy'ConnPoolSettings "maxUpstreamUnknownConnections" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'ConnPoolSettings'maxUpstreamUnknownConnections
           (\ x__ y__
              -> x__
                   {_RedisProxy'ConnPoolSettings'maxUpstreamUnknownConnections = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RedisProxy'ConnPoolSettings "maybe'maxUpstreamUnknownConnections" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'ConnPoolSettings'maxUpstreamUnknownConnections
           (\ x__ y__
              -> x__
                   {_RedisProxy'ConnPoolSettings'maxUpstreamUnknownConnections = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisProxy'ConnPoolSettings "enableCommandStats" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'ConnPoolSettings'enableCommandStats
           (\ x__ y__
              -> x__ {_RedisProxy'ConnPoolSettings'enableCommandStats = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisProxy'ConnPoolSettings "readPolicy" RedisProxy'ConnPoolSettings'ReadPolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'ConnPoolSettings'readPolicy
           (\ x__ y__ -> x__ {_RedisProxy'ConnPoolSettings'readPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Message RedisProxy'ConnPoolSettings where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.ConnPoolSettings"
  packedMessageDescriptor _
    = "\n\
      \\DLEConnPoolSettings\DC2B\n\
      \\n\
      \op_timeout\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\topTimeoutB\b\250B\ENQ\170\SOH\STX\b\SOH\DC2-\n\
      \\DC2enable_hashtagging\CAN\STX \SOH(\bR\DC1enableHashtagging\DC2-\n\
      \\DC2enable_redirection\CAN\ETX \SOH(\bR\DC1enableRedirection\DC2>\n\
      \\FSmax_buffer_size_before_flush\CAN\EOT \SOH(\rR\CANmaxBufferSizeBeforeFlush\DC2K\n\
      \\DC4buffer_flush_timeout\CAN\ENQ \SOH(\v2\EM.google.protobuf.DurationR\DC2bufferFlushTimeout\DC2e\n\
      \ max_upstream_unknown_connections\CAN\ACK \SOH(\v2\FS.google.protobuf.UInt32ValueR\GSmaxUpstreamUnknownConnections\DC20\n\
      \\DC4enable_command_stats\CAN\b \SOH(\bR\DC2enableCommandStats\DC2\130\SOH\n\
      \\vread_policy\CAN\a \SOH(\SO2W.envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.ConnPoolSettings.ReadPolicyR\n\
      \readPolicyB\b\250B\ENQ\130\SOH\STX\DLE\SOH\"~\n\
      \\n\
      \ReadPolicy\DC2\ESC\n\
      \\ACKMASTER\DLE\NUL\SUB\SI\242\152\254\143\ENQ\t\n\
      \\aPRIMARY\DC2)\n\
      \\rPREFER_MASTER\DLE\SOH\SUB\SYN\242\152\254\143\ENQ\DLE\n\
      \\SOPREFER_PRIMARY\DC2\v\n\
      \\aREPLICA\DLE\STX\DC2\DC2\n\
      \\SOPREFER_REPLICA\DLE\ETX\DC2\a\n\
      \\ETXANY\DLE\EOT:M\154\197\136\RSH\n\
      \Fenvoy.config.filter.network.redis_proxy.v2.RedisProxy.ConnPoolSettings"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        opTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "op_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'opTimeout")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy'ConnPoolSettings
        enableHashtagging__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enable_hashtagging"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"enableHashtagging")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy'ConnPoolSettings
        enableRedirection__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enable_redirection"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"enableRedirection")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy'ConnPoolSettings
        maxBufferSizeBeforeFlush__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_buffer_size_before_flush"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxBufferSizeBeforeFlush")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy'ConnPoolSettings
        bufferFlushTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "buffer_flush_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bufferFlushTimeout")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy'ConnPoolSettings
        maxUpstreamUnknownConnections__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_upstream_unknown_connections"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'maxUpstreamUnknownConnections")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy'ConnPoolSettings
        enableCommandStats__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enable_command_stats"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"enableCommandStats")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy'ConnPoolSettings
        readPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "read_policy"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor RedisProxy'ConnPoolSettings'ReadPolicy)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"readPolicy")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy'ConnPoolSettings
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, opTimeout__field_descriptor),
           (Data.ProtoLens.Tag 2, enableHashtagging__field_descriptor),
           (Data.ProtoLens.Tag 3, enableRedirection__field_descriptor),
           (Data.ProtoLens.Tag 4, maxBufferSizeBeforeFlush__field_descriptor),
           (Data.ProtoLens.Tag 5, bufferFlushTimeout__field_descriptor),
           (Data.ProtoLens.Tag 6, 
            maxUpstreamUnknownConnections__field_descriptor),
           (Data.ProtoLens.Tag 8, enableCommandStats__field_descriptor),
           (Data.ProtoLens.Tag 7, readPolicy__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RedisProxy'ConnPoolSettings'_unknownFields
        (\ x__ y__
           -> x__ {_RedisProxy'ConnPoolSettings'_unknownFields = y__})
  defMessage
    = RedisProxy'ConnPoolSettings'_constructor
        {_RedisProxy'ConnPoolSettings'opTimeout = Prelude.Nothing,
         _RedisProxy'ConnPoolSettings'enableHashtagging = Data.ProtoLens.fieldDefault,
         _RedisProxy'ConnPoolSettings'enableRedirection = Data.ProtoLens.fieldDefault,
         _RedisProxy'ConnPoolSettings'maxBufferSizeBeforeFlush = Data.ProtoLens.fieldDefault,
         _RedisProxy'ConnPoolSettings'bufferFlushTimeout = Prelude.Nothing,
         _RedisProxy'ConnPoolSettings'maxUpstreamUnknownConnections = Prelude.Nothing,
         _RedisProxy'ConnPoolSettings'enableCommandStats = Data.ProtoLens.fieldDefault,
         _RedisProxy'ConnPoolSettings'readPolicy = Data.ProtoLens.fieldDefault,
         _RedisProxy'ConnPoolSettings'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RedisProxy'ConnPoolSettings
          -> Data.ProtoLens.Encoding.Bytes.Parser RedisProxy'ConnPoolSettings
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
                                       "op_timeout"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"opTimeout") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "enable_hashtagging"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"enableHashtagging") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "enable_redirection"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"enableRedirection") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "max_buffer_size_before_flush"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxBufferSizeBeforeFlush") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "buffer_flush_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"bufferFlushTimeout") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_upstream_unknown_connections"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxUpstreamUnknownConnections")
                                     y
                                     x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "enable_command_stats"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"enableCommandStats") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "read_policy"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"readPolicy") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ConnPoolSettings"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'opTimeout") _x
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
                         (Data.ProtoLens.Field.field @"enableHashtagging") _x
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
                            (Data.ProtoLens.Field.field @"enableRedirection") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt
                               (\ b -> if b then 1 else 0)
                               _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"maxBufferSizeBeforeFlush") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'bufferFlushTimeout") _x
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
                                   (Data.ProtoLens.Field.field
                                      @"maybe'maxUpstreamUnknownConnections")
                                   _x
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
                                        (Data.ProtoLens.Field.field @"enableCommandStats") _x
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
                                           (Data.ProtoLens.Field.field @"readPolicy") _x
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
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData RedisProxy'ConnPoolSettings where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RedisProxy'ConnPoolSettings'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RedisProxy'ConnPoolSettings'opTimeout x__)
                (Control.DeepSeq.deepseq
                   (_RedisProxy'ConnPoolSettings'enableHashtagging x__)
                   (Control.DeepSeq.deepseq
                      (_RedisProxy'ConnPoolSettings'enableRedirection x__)
                      (Control.DeepSeq.deepseq
                         (_RedisProxy'ConnPoolSettings'maxBufferSizeBeforeFlush x__)
                         (Control.DeepSeq.deepseq
                            (_RedisProxy'ConnPoolSettings'bufferFlushTimeout x__)
                            (Control.DeepSeq.deepseq
                               (_RedisProxy'ConnPoolSettings'maxUpstreamUnknownConnections x__)
                               (Control.DeepSeq.deepseq
                                  (_RedisProxy'ConnPoolSettings'enableCommandStats x__)
                                  (Control.DeepSeq.deepseq
                                     (_RedisProxy'ConnPoolSettings'readPolicy x__) ()))))))))
newtype RedisProxy'ConnPoolSettings'ReadPolicy'UnrecognizedValue
  = RedisProxy'ConnPoolSettings'ReadPolicy'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data RedisProxy'ConnPoolSettings'ReadPolicy
  = RedisProxy'ConnPoolSettings'MASTER |
    RedisProxy'ConnPoolSettings'PREFER_MASTER |
    RedisProxy'ConnPoolSettings'REPLICA |
    RedisProxy'ConnPoolSettings'PREFER_REPLICA |
    RedisProxy'ConnPoolSettings'ANY |
    RedisProxy'ConnPoolSettings'ReadPolicy'Unrecognized !RedisProxy'ConnPoolSettings'ReadPolicy'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum RedisProxy'ConnPoolSettings'ReadPolicy where
  maybeToEnum 0 = Prelude.Just RedisProxy'ConnPoolSettings'MASTER
  maybeToEnum 1
    = Prelude.Just RedisProxy'ConnPoolSettings'PREFER_MASTER
  maybeToEnum 2 = Prelude.Just RedisProxy'ConnPoolSettings'REPLICA
  maybeToEnum 3
    = Prelude.Just RedisProxy'ConnPoolSettings'PREFER_REPLICA
  maybeToEnum 4 = Prelude.Just RedisProxy'ConnPoolSettings'ANY
  maybeToEnum k
    = Prelude.Just
        (RedisProxy'ConnPoolSettings'ReadPolicy'Unrecognized
           (RedisProxy'ConnPoolSettings'ReadPolicy'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum RedisProxy'ConnPoolSettings'MASTER = "MASTER"
  showEnum RedisProxy'ConnPoolSettings'PREFER_MASTER
    = "PREFER_MASTER"
  showEnum RedisProxy'ConnPoolSettings'REPLICA = "REPLICA"
  showEnum RedisProxy'ConnPoolSettings'PREFER_REPLICA
    = "PREFER_REPLICA"
  showEnum RedisProxy'ConnPoolSettings'ANY = "ANY"
  showEnum
    (RedisProxy'ConnPoolSettings'ReadPolicy'Unrecognized (RedisProxy'ConnPoolSettings'ReadPolicy'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "MASTER"
    = Prelude.Just RedisProxy'ConnPoolSettings'MASTER
    | (Prelude.==) k "PREFER_MASTER"
    = Prelude.Just RedisProxy'ConnPoolSettings'PREFER_MASTER
    | (Prelude.==) k "REPLICA"
    = Prelude.Just RedisProxy'ConnPoolSettings'REPLICA
    | (Prelude.==) k "PREFER_REPLICA"
    = Prelude.Just RedisProxy'ConnPoolSettings'PREFER_REPLICA
    | (Prelude.==) k "ANY"
    = Prelude.Just RedisProxy'ConnPoolSettings'ANY
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded RedisProxy'ConnPoolSettings'ReadPolicy where
  minBound = RedisProxy'ConnPoolSettings'MASTER
  maxBound = RedisProxy'ConnPoolSettings'ANY
instance Prelude.Enum RedisProxy'ConnPoolSettings'ReadPolicy where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ReadPolicy: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum RedisProxy'ConnPoolSettings'MASTER = 0
  fromEnum RedisProxy'ConnPoolSettings'PREFER_MASTER = 1
  fromEnum RedisProxy'ConnPoolSettings'REPLICA = 2
  fromEnum RedisProxy'ConnPoolSettings'PREFER_REPLICA = 3
  fromEnum RedisProxy'ConnPoolSettings'ANY = 4
  fromEnum
    (RedisProxy'ConnPoolSettings'ReadPolicy'Unrecognized (RedisProxy'ConnPoolSettings'ReadPolicy'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ RedisProxy'ConnPoolSettings'ANY
    = Prelude.error
        "RedisProxy'ConnPoolSettings'ReadPolicy.succ: bad argument RedisProxy'ConnPoolSettings'ANY. This value would be out of bounds."
  succ RedisProxy'ConnPoolSettings'MASTER
    = RedisProxy'ConnPoolSettings'PREFER_MASTER
  succ RedisProxy'ConnPoolSettings'PREFER_MASTER
    = RedisProxy'ConnPoolSettings'REPLICA
  succ RedisProxy'ConnPoolSettings'REPLICA
    = RedisProxy'ConnPoolSettings'PREFER_REPLICA
  succ RedisProxy'ConnPoolSettings'PREFER_REPLICA
    = RedisProxy'ConnPoolSettings'ANY
  succ (RedisProxy'ConnPoolSettings'ReadPolicy'Unrecognized _)
    = Prelude.error
        "RedisProxy'ConnPoolSettings'ReadPolicy.succ: bad argument: unrecognized value"
  pred RedisProxy'ConnPoolSettings'MASTER
    = Prelude.error
        "RedisProxy'ConnPoolSettings'ReadPolicy.pred: bad argument RedisProxy'ConnPoolSettings'MASTER. This value would be out of bounds."
  pred RedisProxy'ConnPoolSettings'PREFER_MASTER
    = RedisProxy'ConnPoolSettings'MASTER
  pred RedisProxy'ConnPoolSettings'REPLICA
    = RedisProxy'ConnPoolSettings'PREFER_MASTER
  pred RedisProxy'ConnPoolSettings'PREFER_REPLICA
    = RedisProxy'ConnPoolSettings'REPLICA
  pred RedisProxy'ConnPoolSettings'ANY
    = RedisProxy'ConnPoolSettings'PREFER_REPLICA
  pred (RedisProxy'ConnPoolSettings'ReadPolicy'Unrecognized _)
    = Prelude.error
        "RedisProxy'ConnPoolSettings'ReadPolicy.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault RedisProxy'ConnPoolSettings'ReadPolicy where
  fieldDefault = RedisProxy'ConnPoolSettings'MASTER
instance Control.DeepSeq.NFData RedisProxy'ConnPoolSettings'ReadPolicy where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.routes' @:: Lens' RedisProxy'PrefixRoutes [RedisProxy'PrefixRoutes'Route]@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.vec'routes' @:: Lens' RedisProxy'PrefixRoutes (Data.Vector.Vector RedisProxy'PrefixRoutes'Route)@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.caseInsensitive' @:: Lens' RedisProxy'PrefixRoutes Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.catchAllRoute' @:: Lens' RedisProxy'PrefixRoutes RedisProxy'PrefixRoutes'Route@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.maybe'catchAllRoute' @:: Lens' RedisProxy'PrefixRoutes (Prelude.Maybe RedisProxy'PrefixRoutes'Route)@ -}
data RedisProxy'PrefixRoutes
  = RedisProxy'PrefixRoutes'_constructor {_RedisProxy'PrefixRoutes'routes :: !(Data.Vector.Vector RedisProxy'PrefixRoutes'Route),
                                          _RedisProxy'PrefixRoutes'caseInsensitive :: !Prelude.Bool,
                                          _RedisProxy'PrefixRoutes'catchAllRoute :: !(Prelude.Maybe RedisProxy'PrefixRoutes'Route),
                                          _RedisProxy'PrefixRoutes'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RedisProxy'PrefixRoutes where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RedisProxy'PrefixRoutes "routes" [RedisProxy'PrefixRoutes'Route] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'PrefixRoutes'routes
           (\ x__ y__ -> x__ {_RedisProxy'PrefixRoutes'routes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RedisProxy'PrefixRoutes "vec'routes" (Data.Vector.Vector RedisProxy'PrefixRoutes'Route) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'PrefixRoutes'routes
           (\ x__ y__ -> x__ {_RedisProxy'PrefixRoutes'routes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisProxy'PrefixRoutes "caseInsensitive" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'PrefixRoutes'caseInsensitive
           (\ x__ y__
              -> x__ {_RedisProxy'PrefixRoutes'caseInsensitive = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisProxy'PrefixRoutes "catchAllRoute" RedisProxy'PrefixRoutes'Route where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'PrefixRoutes'catchAllRoute
           (\ x__ y__ -> x__ {_RedisProxy'PrefixRoutes'catchAllRoute = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RedisProxy'PrefixRoutes "maybe'catchAllRoute" (Prelude.Maybe RedisProxy'PrefixRoutes'Route) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'PrefixRoutes'catchAllRoute
           (\ x__ y__ -> x__ {_RedisProxy'PrefixRoutes'catchAllRoute = y__}))
        Prelude.id
instance Data.ProtoLens.Message RedisProxy'PrefixRoutes where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.PrefixRoutes"
  packedMessageDescriptor _
    = "\n\
      \\fPrefixRoutes\DC2f\n\
      \\ACKroutes\CAN\SOH \ETX(\v2N.envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.PrefixRoutes.RouteR\ACKroutes\DC2)\n\
      \\DLEcase_insensitive\CAN\STX \SOH(\bR\SIcaseInsensitive\DC2v\n\
      \\SIcatch_all_route\CAN\EOT \SOH(\v2N.envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.PrefixRoutes.RouteR\rcatchAllRoute\SUB\138\ENQ\n\
      \\ENQRoute\DC2 \n\
      \\ACKprefix\CAN\SOH \SOH(\tR\ACKprefixB\b\250B\ENQr\ETX(\232\a\DC2#\n\
      \\rremove_prefix\CAN\STX \SOH(\bR\fremovePrefix\DC2!\n\
      \\acluster\CAN\ETX \SOH(\tR\aclusterB\a\250B\EOTr\STX\DLE\SOH\DC2\150\SOH\n\
      \\NAKrequest_mirror_policy\CAN\EOT \ETX(\v2b.envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.PrefixRoutes.Route.RequestMirrorPolicyR\DC3requestMirrorPolicy\SUB\172\STX\n\
      \\DC3RequestMirrorPolicy\DC2!\n\
      \\acluster\CAN\SOH \SOH(\tR\aclusterB\a\250B\EOTr\STX\DLE\SOH\DC2Y\n\
      \\DLEruntime_fraction\CAN\STX \SOH(\v2..envoy.config.core.v3.RuntimeFractionalPercentR\SIruntimeFraction\DC22\n\
      \\NAKexclude_read_commands\CAN\ETX \SOH(\bR\DC3excludeReadCommands:c\154\197\136\RS^\n\
      \\\envoy.config.filter.network.redis_proxy.v2.RedisProxy.PrefixRoutes.Route.RequestMirrorPolicy:O\154\197\136\RSJ\n\
      \Henvoy.config.filter.network.redis_proxy.v2.RedisProxy.PrefixRoutes.Route:I\154\197\136\RSD\n\
      \Benvoy.config.filter.network.redis_proxy.v2.RedisProxy.PrefixRoutesJ\EOT\b\ETX\DLE\EOTR\DC1catch_all_cluster"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        routes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "routes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RedisProxy'PrefixRoutes'Route)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"routes")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy'PrefixRoutes
        caseInsensitive__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "case_insensitive"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"caseInsensitive")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy'PrefixRoutes
        catchAllRoute__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "catch_all_route"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RedisProxy'PrefixRoutes'Route)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'catchAllRoute")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy'PrefixRoutes
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, routes__field_descriptor),
           (Data.ProtoLens.Tag 2, caseInsensitive__field_descriptor),
           (Data.ProtoLens.Tag 4, catchAllRoute__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RedisProxy'PrefixRoutes'_unknownFields
        (\ x__ y__ -> x__ {_RedisProxy'PrefixRoutes'_unknownFields = y__})
  defMessage
    = RedisProxy'PrefixRoutes'_constructor
        {_RedisProxy'PrefixRoutes'routes = Data.Vector.Generic.empty,
         _RedisProxy'PrefixRoutes'caseInsensitive = Data.ProtoLens.fieldDefault,
         _RedisProxy'PrefixRoutes'catchAllRoute = Prelude.Nothing,
         _RedisProxy'PrefixRoutes'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RedisProxy'PrefixRoutes
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld RedisProxy'PrefixRoutes'Route
             -> Data.ProtoLens.Encoding.Bytes.Parser RedisProxy'PrefixRoutes
        loop x mutable'routes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'routes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'routes)
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
                              (Data.ProtoLens.Field.field @"vec'routes") frozen'routes x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "routes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'routes y)
                                loop x v
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "case_insensitive"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"caseInsensitive") y x)
                                  mutable'routes
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "catch_all_route"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"catchAllRoute") y x)
                                  mutable'routes
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'routes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'routes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'routes)
          "PrefixRoutes"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'routes") _x))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"caseInsensitive") _x
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
                          (Data.ProtoLens.Field.field @"maybe'catchAllRoute") _x
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
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData RedisProxy'PrefixRoutes where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RedisProxy'PrefixRoutes'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RedisProxy'PrefixRoutes'routes x__)
                (Control.DeepSeq.deepseq
                   (_RedisProxy'PrefixRoutes'caseInsensitive x__)
                   (Control.DeepSeq.deepseq
                      (_RedisProxy'PrefixRoutes'catchAllRoute x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.prefix' @:: Lens' RedisProxy'PrefixRoutes'Route Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.removePrefix' @:: Lens' RedisProxy'PrefixRoutes'Route Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.cluster' @:: Lens' RedisProxy'PrefixRoutes'Route Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.requestMirrorPolicy' @:: Lens' RedisProxy'PrefixRoutes'Route [RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy]@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.vec'requestMirrorPolicy' @:: Lens' RedisProxy'PrefixRoutes'Route (Data.Vector.Vector RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy)@ -}
data RedisProxy'PrefixRoutes'Route
  = RedisProxy'PrefixRoutes'Route'_constructor {_RedisProxy'PrefixRoutes'Route'prefix :: !Data.Text.Text,
                                                _RedisProxy'PrefixRoutes'Route'removePrefix :: !Prelude.Bool,
                                                _RedisProxy'PrefixRoutes'Route'cluster :: !Data.Text.Text,
                                                _RedisProxy'PrefixRoutes'Route'requestMirrorPolicy :: !(Data.Vector.Vector RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy),
                                                _RedisProxy'PrefixRoutes'Route'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RedisProxy'PrefixRoutes'Route where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RedisProxy'PrefixRoutes'Route "prefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'PrefixRoutes'Route'prefix
           (\ x__ y__ -> x__ {_RedisProxy'PrefixRoutes'Route'prefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisProxy'PrefixRoutes'Route "removePrefix" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'PrefixRoutes'Route'removePrefix
           (\ x__ y__
              -> x__ {_RedisProxy'PrefixRoutes'Route'removePrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisProxy'PrefixRoutes'Route "cluster" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'PrefixRoutes'Route'cluster
           (\ x__ y__ -> x__ {_RedisProxy'PrefixRoutes'Route'cluster = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisProxy'PrefixRoutes'Route "requestMirrorPolicy" [RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'PrefixRoutes'Route'requestMirrorPolicy
           (\ x__ y__
              -> x__ {_RedisProxy'PrefixRoutes'Route'requestMirrorPolicy = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RedisProxy'PrefixRoutes'Route "vec'requestMirrorPolicy" (Data.Vector.Vector RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'PrefixRoutes'Route'requestMirrorPolicy
           (\ x__ y__
              -> x__ {_RedisProxy'PrefixRoutes'Route'requestMirrorPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Message RedisProxy'PrefixRoutes'Route where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.PrefixRoutes.Route"
  packedMessageDescriptor _
    = "\n\
      \\ENQRoute\DC2 \n\
      \\ACKprefix\CAN\SOH \SOH(\tR\ACKprefixB\b\250B\ENQr\ETX(\232\a\DC2#\n\
      \\rremove_prefix\CAN\STX \SOH(\bR\fremovePrefix\DC2!\n\
      \\acluster\CAN\ETX \SOH(\tR\aclusterB\a\250B\EOTr\STX\DLE\SOH\DC2\150\SOH\n\
      \\NAKrequest_mirror_policy\CAN\EOT \ETX(\v2b.envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.PrefixRoutes.Route.RequestMirrorPolicyR\DC3requestMirrorPolicy\SUB\172\STX\n\
      \\DC3RequestMirrorPolicy\DC2!\n\
      \\acluster\CAN\SOH \SOH(\tR\aclusterB\a\250B\EOTr\STX\DLE\SOH\DC2Y\n\
      \\DLEruntime_fraction\CAN\STX \SOH(\v2..envoy.config.core.v3.RuntimeFractionalPercentR\SIruntimeFraction\DC22\n\
      \\NAKexclude_read_commands\CAN\ETX \SOH(\bR\DC3excludeReadCommands:c\154\197\136\RS^\n\
      \\\envoy.config.filter.network.redis_proxy.v2.RedisProxy.PrefixRoutes.Route.RequestMirrorPolicy:O\154\197\136\RSJ\n\
      \Henvoy.config.filter.network.redis_proxy.v2.RedisProxy.PrefixRoutes.Route"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        prefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"prefix")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy'PrefixRoutes'Route
        removePrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "remove_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"removePrefix")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy'PrefixRoutes'Route
        cluster__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"cluster")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy'PrefixRoutes'Route
        requestMirrorPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_mirror_policy"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"requestMirrorPolicy")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy'PrefixRoutes'Route
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, prefix__field_descriptor),
           (Data.ProtoLens.Tag 2, removePrefix__field_descriptor),
           (Data.ProtoLens.Tag 3, cluster__field_descriptor),
           (Data.ProtoLens.Tag 4, requestMirrorPolicy__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RedisProxy'PrefixRoutes'Route'_unknownFields
        (\ x__ y__
           -> x__ {_RedisProxy'PrefixRoutes'Route'_unknownFields = y__})
  defMessage
    = RedisProxy'PrefixRoutes'Route'_constructor
        {_RedisProxy'PrefixRoutes'Route'prefix = Data.ProtoLens.fieldDefault,
         _RedisProxy'PrefixRoutes'Route'removePrefix = Data.ProtoLens.fieldDefault,
         _RedisProxy'PrefixRoutes'Route'cluster = Data.ProtoLens.fieldDefault,
         _RedisProxy'PrefixRoutes'Route'requestMirrorPolicy = Data.Vector.Generic.empty,
         _RedisProxy'PrefixRoutes'Route'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RedisProxy'PrefixRoutes'Route
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy
             -> Data.ProtoLens.Encoding.Bytes.Parser RedisProxy'PrefixRoutes'Route
        loop x mutable'requestMirrorPolicy
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'requestMirrorPolicy <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'requestMirrorPolicy)
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
                              (Data.ProtoLens.Field.field @"vec'requestMirrorPolicy")
                              frozen'requestMirrorPolicy
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
                                       "prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"prefix") y x)
                                  mutable'requestMirrorPolicy
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "remove_prefix"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"removePrefix") y x)
                                  mutable'requestMirrorPolicy
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
                                       "cluster"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"cluster") y x)
                                  mutable'requestMirrorPolicy
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "request_mirror_policy"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'requestMirrorPolicy y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'requestMirrorPolicy
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'requestMirrorPolicy <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'requestMirrorPolicy)
          "Route"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"prefix") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"removePrefix") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"cluster") _x
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
                            (Data.ProtoLens.Field.field @"vec'requestMirrorPolicy") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData RedisProxy'PrefixRoutes'Route where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RedisProxy'PrefixRoutes'Route'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RedisProxy'PrefixRoutes'Route'prefix x__)
                (Control.DeepSeq.deepseq
                   (_RedisProxy'PrefixRoutes'Route'removePrefix x__)
                   (Control.DeepSeq.deepseq
                      (_RedisProxy'PrefixRoutes'Route'cluster x__)
                      (Control.DeepSeq.deepseq
                         (_RedisProxy'PrefixRoutes'Route'requestMirrorPolicy x__) ()))))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.cluster' @:: Lens' RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.runtimeFraction' @:: Lens' RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.maybe'runtimeFraction' @:: Lens' RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent)@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.excludeReadCommands' @:: Lens' RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy Prelude.Bool@ -}
data RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy
  = RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy'_constructor {_RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy'cluster :: !Data.Text.Text,
                                                                    _RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy'runtimeFraction :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent),
                                                                    _RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy'excludeReadCommands :: !Prelude.Bool,
                                                                    _RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy "cluster" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy'cluster
           (\ x__ y__
              -> x__
                   {_RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy'cluster = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy "runtimeFraction" Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy'runtimeFraction
           (\ x__ y__
              -> x__
                   {_RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy'runtimeFraction = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy "maybe'runtimeFraction" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy'runtimeFraction
           (\ x__ y__
              -> x__
                   {_RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy'runtimeFraction = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy "excludeReadCommands" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy'excludeReadCommands
           (\ x__ y__
              -> x__
                   {_RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy'excludeReadCommands = y__}))
        Prelude.id
instance Data.ProtoLens.Message RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.PrefixRoutes.Route.RequestMirrorPolicy"
  packedMessageDescriptor _
    = "\n\
      \\DC3RequestMirrorPolicy\DC2!\n\
      \\acluster\CAN\SOH \SOH(\tR\aclusterB\a\250B\EOTr\STX\DLE\SOH\DC2Y\n\
      \\DLEruntime_fraction\CAN\STX \SOH(\v2..envoy.config.core.v3.RuntimeFractionalPercentR\SIruntimeFraction\DC22\n\
      \\NAKexclude_read_commands\CAN\ETX \SOH(\bR\DC3excludeReadCommands:c\154\197\136\RS^\n\
      \\\envoy.config.filter.network.redis_proxy.v2.RedisProxy.PrefixRoutes.Route.RequestMirrorPolicy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cluster__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"cluster")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy
        runtimeFraction__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "runtime_fraction"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'runtimeFraction")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy
        excludeReadCommands__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "exclude_read_commands"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"excludeReadCommands")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cluster__field_descriptor),
           (Data.ProtoLens.Tag 2, runtimeFraction__field_descriptor),
           (Data.ProtoLens.Tag 3, excludeReadCommands__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy'_unknownFields
        (\ x__ y__
           -> x__
                {_RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy'_unknownFields = y__})
  defMessage
    = RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy'_constructor
        {_RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy'cluster = Data.ProtoLens.fieldDefault,
         _RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy'runtimeFraction = Prelude.Nothing,
         _RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy'excludeReadCommands = Data.ProtoLens.fieldDefault,
         _RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy
          -> Data.ProtoLens.Encoding.Bytes.Parser RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy
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
                                       "cluster"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cluster") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "runtime_fraction"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"runtimeFraction") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "exclude_read_commands"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"excludeReadCommands") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RequestMirrorPolicy"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"cluster") _x
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
                       (Data.ProtoLens.Field.field @"maybe'runtimeFraction") _x
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
                            (Data.ProtoLens.Field.field @"excludeReadCommands") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt
                               (\ b -> if b then 1 else 0)
                               _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy'cluster x__)
                (Control.DeepSeq.deepseq
                   (_RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy'runtimeFraction
                      x__)
                   (Control.DeepSeq.deepseq
                      (_RedisProxy'PrefixRoutes'Route'RequestMirrorPolicy'excludeReadCommands
                         x__)
                      ())))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.faultType' @:: Lens' RedisProxy'RedisFault RedisProxy'RedisFault'RedisFaultType@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.faultEnabled' @:: Lens' RedisProxy'RedisFault Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.maybe'faultEnabled' @:: Lens' RedisProxy'RedisFault (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent)@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.delay' @:: Lens' RedisProxy'RedisFault Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.maybe'delay' @:: Lens' RedisProxy'RedisFault (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.commands' @:: Lens' RedisProxy'RedisFault [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields.vec'commands' @:: Lens' RedisProxy'RedisFault (Data.Vector.Vector Data.Text.Text)@ -}
data RedisProxy'RedisFault
  = RedisProxy'RedisFault'_constructor {_RedisProxy'RedisFault'faultType :: !RedisProxy'RedisFault'RedisFaultType,
                                        _RedisProxy'RedisFault'faultEnabled :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent),
                                        _RedisProxy'RedisFault'delay :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                        _RedisProxy'RedisFault'commands :: !(Data.Vector.Vector Data.Text.Text),
                                        _RedisProxy'RedisFault'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RedisProxy'RedisFault where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RedisProxy'RedisFault "faultType" RedisProxy'RedisFault'RedisFaultType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'RedisFault'faultType
           (\ x__ y__ -> x__ {_RedisProxy'RedisFault'faultType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisProxy'RedisFault "faultEnabled" Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'RedisFault'faultEnabled
           (\ x__ y__ -> x__ {_RedisProxy'RedisFault'faultEnabled = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RedisProxy'RedisFault "maybe'faultEnabled" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'RedisFault'faultEnabled
           (\ x__ y__ -> x__ {_RedisProxy'RedisFault'faultEnabled = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisProxy'RedisFault "delay" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'RedisFault'delay
           (\ x__ y__ -> x__ {_RedisProxy'RedisFault'delay = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RedisProxy'RedisFault "maybe'delay" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'RedisFault'delay
           (\ x__ y__ -> x__ {_RedisProxy'RedisFault'delay = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisProxy'RedisFault "commands" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'RedisFault'commands
           (\ x__ y__ -> x__ {_RedisProxy'RedisFault'commands = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RedisProxy'RedisFault "vec'commands" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisProxy'RedisFault'commands
           (\ x__ y__ -> x__ {_RedisProxy'RedisFault'commands = y__}))
        Prelude.id
instance Data.ProtoLens.Message RedisProxy'RedisFault where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.RedisFault"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \RedisFault\DC2~\n\
      \\n\
      \fault_type\CAN\SOH \SOH(\SO2U.envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.RedisFault.RedisFaultTypeR\tfaultTypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2]\n\
      \\rfault_enabled\CAN\STX \SOH(\v2..envoy.config.core.v3.RuntimeFractionalPercentR\ffaultEnabledB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2/\n\
      \\ENQdelay\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\ENQdelay\DC2\SUB\n\
      \\bcommands\CAN\EOT \ETX(\tR\bcommands\"&\n\
      \\SORedisFaultType\DC2\t\n\
      \\ENQDELAY\DLE\NUL\DC2\t\n\
      \\ENQERROR\DLE\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        faultType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fault_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor RedisProxy'RedisFault'RedisFaultType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"faultType")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy'RedisFault
        faultEnabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fault_enabled"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'faultEnabled")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy'RedisFault
        delay__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delay"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'delay")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy'RedisFault
        commands__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "commands"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"commands")) ::
              Data.ProtoLens.FieldDescriptor RedisProxy'RedisFault
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, faultType__field_descriptor),
           (Data.ProtoLens.Tag 2, faultEnabled__field_descriptor),
           (Data.ProtoLens.Tag 3, delay__field_descriptor),
           (Data.ProtoLens.Tag 4, commands__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RedisProxy'RedisFault'_unknownFields
        (\ x__ y__ -> x__ {_RedisProxy'RedisFault'_unknownFields = y__})
  defMessage
    = RedisProxy'RedisFault'_constructor
        {_RedisProxy'RedisFault'faultType = Data.ProtoLens.fieldDefault,
         _RedisProxy'RedisFault'faultEnabled = Prelude.Nothing,
         _RedisProxy'RedisFault'delay = Prelude.Nothing,
         _RedisProxy'RedisFault'commands = Data.Vector.Generic.empty,
         _RedisProxy'RedisFault'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RedisProxy'RedisFault
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser RedisProxy'RedisFault
        loop x mutable'commands
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'commands <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'commands)
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
                              (Data.ProtoLens.Field.field @"vec'commands") frozen'commands x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "fault_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"faultType") y x)
                                  mutable'commands
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "fault_enabled"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"faultEnabled") y x)
                                  mutable'commands
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "delay"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"delay") y x)
                                  mutable'commands
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "commands"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'commands y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'commands
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'commands <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'commands)
          "RedisFault"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"faultType") _x
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
                       (Data.ProtoLens.Field.field @"maybe'faultEnabled") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'delay") _x
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
                                    Data.Text.Encoding.encodeUtf8
                                    _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'commands") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData RedisProxy'RedisFault where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RedisProxy'RedisFault'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RedisProxy'RedisFault'faultType x__)
                (Control.DeepSeq.deepseq
                   (_RedisProxy'RedisFault'faultEnabled x__)
                   (Control.DeepSeq.deepseq
                      (_RedisProxy'RedisFault'delay x__)
                      (Control.DeepSeq.deepseq
                         (_RedisProxy'RedisFault'commands x__) ()))))
newtype RedisProxy'RedisFault'RedisFaultType'UnrecognizedValue
  = RedisProxy'RedisFault'RedisFaultType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data RedisProxy'RedisFault'RedisFaultType
  = RedisProxy'RedisFault'DELAY |
    RedisProxy'RedisFault'ERROR |
    RedisProxy'RedisFault'RedisFaultType'Unrecognized !RedisProxy'RedisFault'RedisFaultType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum RedisProxy'RedisFault'RedisFaultType where
  maybeToEnum 0 = Prelude.Just RedisProxy'RedisFault'DELAY
  maybeToEnum 1 = Prelude.Just RedisProxy'RedisFault'ERROR
  maybeToEnum k
    = Prelude.Just
        (RedisProxy'RedisFault'RedisFaultType'Unrecognized
           (RedisProxy'RedisFault'RedisFaultType'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum RedisProxy'RedisFault'DELAY = "DELAY"
  showEnum RedisProxy'RedisFault'ERROR = "ERROR"
  showEnum
    (RedisProxy'RedisFault'RedisFaultType'Unrecognized (RedisProxy'RedisFault'RedisFaultType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "DELAY" = Prelude.Just RedisProxy'RedisFault'DELAY
    | (Prelude.==) k "ERROR" = Prelude.Just RedisProxy'RedisFault'ERROR
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded RedisProxy'RedisFault'RedisFaultType where
  minBound = RedisProxy'RedisFault'DELAY
  maxBound = RedisProxy'RedisFault'ERROR
instance Prelude.Enum RedisProxy'RedisFault'RedisFaultType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum RedisFaultType: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum RedisProxy'RedisFault'DELAY = 0
  fromEnum RedisProxy'RedisFault'ERROR = 1
  fromEnum
    (RedisProxy'RedisFault'RedisFaultType'Unrecognized (RedisProxy'RedisFault'RedisFaultType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ RedisProxy'RedisFault'ERROR
    = Prelude.error
        "RedisProxy'RedisFault'RedisFaultType.succ: bad argument RedisProxy'RedisFault'ERROR. This value would be out of bounds."
  succ RedisProxy'RedisFault'DELAY = RedisProxy'RedisFault'ERROR
  succ (RedisProxy'RedisFault'RedisFaultType'Unrecognized _)
    = Prelude.error
        "RedisProxy'RedisFault'RedisFaultType.succ: bad argument: unrecognized value"
  pred RedisProxy'RedisFault'DELAY
    = Prelude.error
        "RedisProxy'RedisFault'RedisFaultType.pred: bad argument RedisProxy'RedisFault'DELAY. This value would be out of bounds."
  pred RedisProxy'RedisFault'ERROR = RedisProxy'RedisFault'DELAY
  pred (RedisProxy'RedisFault'RedisFaultType'Unrecognized _)
    = Prelude.error
        "RedisProxy'RedisFault'RedisFaultType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault RedisProxy'RedisFault'RedisFaultType where
  fieldDefault = RedisProxy'RedisFault'DELAY
instance Control.DeepSeq.NFData RedisProxy'RedisFault'RedisFaultType where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Aenvoy/extensions/filters/network/redis_proxy/v3/redis_proxy.proto\DC2/envoy.extensions.filters.network.redis_proxy.v3\SUB\USenvoy/config/core/v3/base.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\RSudpa/annotations/migrate.proto\SUB udpa/annotations/sensitive.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\219\SYN\n\
    \\n\
    \RedisProxy\DC2(\n\
    \\vstat_prefix\CAN\SOH \SOH(\tR\n\
    \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2r\n\
    \\bsettings\CAN\ETX \SOH(\v2L.envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.ConnPoolSettingsR\bsettingsB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2*\n\
    \\DC1latency_in_micros\CAN\EOT \SOH(\bR\SIlatencyInMicros\DC2m\n\
    \\rprefix_routes\CAN\ENQ \SOH(\v2H.envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.PrefixRoutesR\fprefixRoutes\DC2b\n\
    \\CANdownstream_auth_password\CAN\ACK \SOH(\v2 .envoy.config.core.v3.DataSourceR\SYNdownstreamAuthPasswordB\ACK\184\183\139\164\STX\SOH\DC2^\n\
    \\ACKfaults\CAN\b \ETX(\v2F.envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.RedisFaultR\ACKfaults\DC2b\n\
    \\CANdownstream_auth_username\CAN\a \SOH(\v2 .envoy.config.core.v3.DataSourceR\SYNdownstreamAuthUsernameB\ACK\184\183\139\164\STX\SOH\SUB\174\ACK\n\
    \\DLEConnPoolSettings\DC2B\n\
    \\n\
    \op_timeout\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\topTimeoutB\b\250B\ENQ\170\SOH\STX\b\SOH\DC2-\n\
    \\DC2enable_hashtagging\CAN\STX \SOH(\bR\DC1enableHashtagging\DC2-\n\
    \\DC2enable_redirection\CAN\ETX \SOH(\bR\DC1enableRedirection\DC2>\n\
    \\FSmax_buffer_size_before_flush\CAN\EOT \SOH(\rR\CANmaxBufferSizeBeforeFlush\DC2K\n\
    \\DC4buffer_flush_timeout\CAN\ENQ \SOH(\v2\EM.google.protobuf.DurationR\DC2bufferFlushTimeout\DC2e\n\
    \ max_upstream_unknown_connections\CAN\ACK \SOH(\v2\FS.google.protobuf.UInt32ValueR\GSmaxUpstreamUnknownConnections\DC20\n\
    \\DC4enable_command_stats\CAN\b \SOH(\bR\DC2enableCommandStats\DC2\130\SOH\n\
    \\vread_policy\CAN\a \SOH(\SO2W.envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.ConnPoolSettings.ReadPolicyR\n\
    \readPolicyB\b\250B\ENQ\130\SOH\STX\DLE\SOH\"~\n\
    \\n\
    \ReadPolicy\DC2\ESC\n\
    \\ACKMASTER\DLE\NUL\SUB\SI\242\152\254\143\ENQ\t\n\
    \\aPRIMARY\DC2)\n\
    \\rPREFER_MASTER\DLE\SOH\SUB\SYN\242\152\254\143\ENQ\DLE\n\
    \\SOPREFER_PRIMARY\DC2\v\n\
    \\aREPLICA\DLE\STX\DC2\DC2\n\
    \\SOPREFER_REPLICA\DLE\ETX\DC2\a\n\
    \\ETXANY\DLE\EOT:M\154\197\136\RSH\n\
    \Fenvoy.config.filter.network.redis_proxy.v2.RedisProxy.ConnPoolSettings\SUB\138\b\n\
    \\fPrefixRoutes\DC2f\n\
    \\ACKroutes\CAN\SOH \ETX(\v2N.envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.PrefixRoutes.RouteR\ACKroutes\DC2)\n\
    \\DLEcase_insensitive\CAN\STX \SOH(\bR\SIcaseInsensitive\DC2v\n\
    \\SIcatch_all_route\CAN\EOT \SOH(\v2N.envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.PrefixRoutes.RouteR\rcatchAllRoute\SUB\138\ENQ\n\
    \\ENQRoute\DC2 \n\
    \\ACKprefix\CAN\SOH \SOH(\tR\ACKprefixB\b\250B\ENQr\ETX(\232\a\DC2#\n\
    \\rremove_prefix\CAN\STX \SOH(\bR\fremovePrefix\DC2!\n\
    \\acluster\CAN\ETX \SOH(\tR\aclusterB\a\250B\EOTr\STX\DLE\SOH\DC2\150\SOH\n\
    \\NAKrequest_mirror_policy\CAN\EOT \ETX(\v2b.envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.PrefixRoutes.Route.RequestMirrorPolicyR\DC3requestMirrorPolicy\SUB\172\STX\n\
    \\DC3RequestMirrorPolicy\DC2!\n\
    \\acluster\CAN\SOH \SOH(\tR\aclusterB\a\250B\EOTr\STX\DLE\SOH\DC2Y\n\
    \\DLEruntime_fraction\CAN\STX \SOH(\v2..envoy.config.core.v3.RuntimeFractionalPercentR\SIruntimeFraction\DC22\n\
    \\NAKexclude_read_commands\CAN\ETX \SOH(\bR\DC3excludeReadCommands:c\154\197\136\RS^\n\
    \\\envoy.config.filter.network.redis_proxy.v2.RedisProxy.PrefixRoutes.Route.RequestMirrorPolicy:O\154\197\136\RSJ\n\
    \Henvoy.config.filter.network.redis_proxy.v2.RedisProxy.PrefixRoutes.Route:I\154\197\136\RSD\n\
    \Benvoy.config.filter.network.redis_proxy.v2.RedisProxy.PrefixRoutesJ\EOT\b\ETX\DLE\EOTR\DC1catch_all_cluster\SUB\224\STX\n\
    \\n\
    \RedisFault\DC2~\n\
    \\n\
    \fault_type\CAN\SOH \SOH(\SO2U.envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.RedisFault.RedisFaultTypeR\tfaultTypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2]\n\
    \\rfault_enabled\CAN\STX \SOH(\v2..envoy.config.core.v3.RuntimeFractionalPercentR\ffaultEnabledB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2/\n\
    \\ENQdelay\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\ENQdelay\DC2\SUB\n\
    \\bcommands\CAN\EOT \ETX(\tR\bcommands\"&\n\
    \\SORedisFaultType\DC2\t\n\
    \\ENQDELAY\DLE\NUL\DC2\t\n\
    \\ENQERROR\DLE\SOH:<\154\197\136\RS7\n\
    \5envoy.config.filter.network.redis_proxy.v2.RedisProxyJ\EOT\b\STX\DLE\ETXR\acluster\"\252\SOH\n\
    \\DC4RedisProtocolOptions\DC2M\n\
    \\rauth_password\CAN\SOH \SOH(\v2 .envoy.config.core.v3.DataSourceR\fauthPasswordB\ACK\184\183\139\164\STX\SOH\DC2M\n\
    \\rauth_username\CAN\STX \SOH(\v2 .envoy.config.core.v3.DataSourceR\fauthUsernameB\ACK\184\183\139\164\STX\SOH:F\154\197\136\RSA\n\
    \?envoy.config.filter.network.redis_proxy.v2.RedisProtocolOptionsBZ\n\
    \=io.envoyproxy.envoy.extensions.filters.network.redis_proxy.v3B\SIRedisProxyProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\251r\n\
    \\a\DC2\ENQ\NUL\NUL\190\STX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL8\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL(\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL*\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL'\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\f\NUL+\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\r\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NULV\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\SI\NULV\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL0\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\DLE\NUL0\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DC1\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC2\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC2\NULF\n\
    \\201\SOH\n\
    \\STX\EOT\NUL\DC2\ENQ\EM\NUL\174\STX\SOH\SUB\ETB [#next-free-field: 9]\n\
    \2\162\SOH [#protodoc-title: Redis Proxy]\n\
    \ Redis Proxy :ref:`configuration overview <config_network_filters_redis_proxy>`.\n\
    \ [#extension: envoy.filters.network.redis_proxy]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\EM\b\DC2\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\SUB\STX\ESC>\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\SUB\STX\ESC>\n\
    \F\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\US\STXx\ETX\SUB8 Redis connection pool settings.\n\
    \ [#next-free-field: 9]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\US\n\
    \\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT \EOT!Q\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT \EOT!Q\n\
    \\194\STX\n\
    \\ACK\EOT\NUL\ETX\NUL\EOT\NUL\DC2\EOT'\EOT9\ENQ\SUB\177\STX ReadPolicy controls how Envoy routes read commands to Redis nodes. This is currently\n\
    \ supported for Redis Cluster. All ReadPolicy settings except MASTER may return stale data\n\
    \ because replication is asynchronous and requires some delay. You need to ensure that your\n\
    \ application can tolerate stale data.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\EOT\NUL\SOH\DC2\ETX'\t\DC3\n\
    \D\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\NUL\DC2\ETX)\ACKL\SUB3 Default mode. Read from the current primary node.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX)\ACK\f\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX)\SI\DLE\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\NUL\ETX\DC2\ETX)\DC1K\n\
    \\NAK\n\
    \\SO\EOT\NUL\ETX\NUL\EOT\NUL\STX\NUL\ETX\142\227\255Q\SOH\DC2\ETX)\DC2J\n\
    \\\\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\SOH\DC2\ETX,\ACKZ\SUBK Read from the primary, but if it is unavailable, read from replica nodes.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX,\ACK\DC3\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX,\SYN\ETB\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\SOH\ETX\DC2\ETX,\CANY\n\
    \\NAK\n\
    \\SO\EOT\NUL\ETX\NUL\EOT\NUL\STX\SOH\ETX\142\227\255Q\SOH\DC2\ETX,\EMX\n\
    \\177\SOH\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\STX\DC2\ETX0\ACK\DC2\SUB\159\SOH Read from replica nodes. If multiple replica nodes are present within a shard, a random\n\
    \ node is selected. Healthy nodes have precedent over unhealthy nodes.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX0\ACK\r\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\STX\STX\DC2\ETX0\DLE\DC1\n\
    \\157\SOH\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\ETX\DC2\ETX4\ACK\EM\SUB\139\SOH Read from the replica nodes (similar to REPLICA), but if all replicas are unavailable (not\n\
    \ present or unhealthy), read from the primary.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\ETX\SOH\DC2\ETX4\ACK\DC4\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\ETX\STX\DC2\ETX4\ETB\CAN\n\
    \\164\SOH\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\EOT\DC2\ETX8\ACK\SO\SUB\146\SOH Read from any node of the cluster. A random node is selected among the primary and\n\
    \ replicas, healthy nodes have precedent over unhealthy nodes.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\EOT\SOH\DC2\ETX8\ACK\t\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\EOT\STX\DC2\ETX8\f\r\n\
    \\222\ETX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETXA\EOT[\SUB\206\ETX Per-operation timeout in milliseconds. The timer starts when the first\n\
    \ command of a pipeline is written to the backend connection. Each response received from Redis\n\
    \ resets the timer since it signifies that the next command is being processed by the backend.\n\
    \ The only exception to this behavior is when a connection to a backend is not yet established.\n\
    \ In that case, the connect timeout on the cluster will govern the timeout until the connection\n\
    \ is ready.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETXA\EOT\FS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETXA\GS'\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETXA*+\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\b\DC2\ETXA,Z\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\NUL\b\175\b\NAK\DC2\ETXA-Y\n\
    \\132\ENQ\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETXM\EOT \SUB\244\EOT Use hash tagging on every redis key to guarantee that keys with the same hash tag will be\n\
    \ forwarded to the same upstream. The hash key used for determining the upstream in a\n\
    \ consistent hash ring configuration will be computed from the hash tagged key instead of the\n\
    \ whole key. The algorithm used to compute the hash tag is identical to the `redis-cluster\n\
    \ implementation <https://redis.io/topics/cluster-spec#keys-hash-tags>`_.\n\
    \\n\
    \ Examples:\n\
    \\n\
    \ * '{user1000}.following' and '{user1000}.followers' **will** be sent to the same upstream\n\
    \ * '{user1000}.following' and '{user1001}.following' **might** be sent to the same upstream\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETXM\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETXM\t\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETXM\RS\US\n\
    \\156\ETX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\STX\DC2\ETXT\EOT \SUB\140\ETX Accept `moved and ask redirection\n\
    \ <https://redis.io/topics/cluster-spec#redirection-and-resharding>`_ errors from upstream\n\
    \ redis servers, and retry commands to the specified target server. The target server does not\n\
    \ need to be known to the cluster manager. If the command cannot be redirected, then the\n\
    \ original error is passed downstream unchanged. By default, this support is not enabled.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ENQ\DC2\ETXT\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\SOH\DC2\ETXT\t\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ETX\DC2\ETXT\RS\US\n\
    \\139\EOT\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ETX\DC2\ETX]\EOT,\SUB\251\ETX Maximum size of encoded request buffer before flush is triggered and encoded requests\n\
    \ are sent upstream. If this is unset, the buffer flushes whenever it receives data\n\
    \ and performs no batching.\n\
    \ This feature makes it possible for multiple clients to send requests to Envoy and have\n\
    \ them batched- for example if one is running several worker processes, each with its own\n\
    \ Redis connection. There is no benefit to using this with a single downstream process.\n\
    \ Recommended size (if enabled) is 1024 bytes.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ENQ\DC2\ETX]\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\SOH\DC2\ETX]\v'\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ETX\DC2\ETX]*+\n\
    \\251\ENQ\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\EOT\DC2\ETXi\EOT6\SUB\235\ENQ The encoded request buffer is flushed N milliseconds after the first request has been\n\
    \ encoded, unless the buffer size has already exceeded `max_buffer_size_before_flush`.\n\
    \ If `max_buffer_size_before_flush` is not set, this flush timer is not used. Otherwise,\n\
    \ the timer should be set according to the number of clients, overall request rate and\n\
    \ desired maximum latency for a single command. For example, if there are many requests\n\
    \ being batched together at a high rate, the buffer will likely be filled before the timer\n\
    \ fires. Alternatively, if the request rate is lower the buffer will not be filled as often\n\
    \ before the timer fires.\n\
    \ If `max_buffer_size_before_flush` is set, but `buffer_flush_timeout` is not, the latter\n\
    \ defaults to 3ms.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\ACK\DC2\ETXi\EOT\FS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\SOH\DC2\ETXi\GS1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\ETX\DC2\ETXi45\n\
    \\175\ETX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ENQ\DC2\ETXp\EOTE\SUB\159\ETX `max_upstream_unknown_connections` controls how many upstream connections to unknown hosts\n\
    \ can be created at any given time by any given worker thread (see `enable_redirection` for\n\
    \ more details). If the host is unknown and a connection cannot be created due to enforcing\n\
    \ this limit, then redirection will fail and the original redirection error will be passed\n\
    \ downstream unchanged. This limit defaults to 100.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\ACK\DC2\ETXp\EOT\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\SOH\DC2\ETXp @\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\ETX\DC2\ETXpCD\n\
    \\164\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ACK\DC2\ETXt\EOT\"\SUB\148\SOH Enable per-command statistics per upstream cluster, in addition to the filter level aggregate\n\
    \ count. These commands are measured in microseconds.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\ENQ\DC2\ETXt\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\SOH\DC2\ETXt\t\GS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\ETX\DC2\ETXt !\n\
    \F\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\a\DC2\ETXw\EOTN\SUB7 Read policy. The default is to read from the primary.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\ACK\DC2\ETXw\EOT\SO\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\SOH\DC2\ETXw\SI\SUB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\ETX\DC2\ETXw\GS\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\b\DC2\ETXw\USM\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\a\b\175\b\DLE\DC2\ETXw L\n\
    \\r\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\ENQz\STX\182\SOH\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETXz\n\
    \\SYN\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\SOH\a\DC2\EOT{\EOT|M\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\SOH\a\211\136\225\ETX\SOH\DC2\EOT{\EOT|M\n\
    \\SI\n\
    \\ACK\EOT\NUL\ETX\SOH\ETX\NUL\DC2\ENQ~\EOT\167\SOH\ENQ\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\ETX\NUL\SOH\DC2\ETX~\f\DC1\n\
    \\DLE\n\
    \\a\EOT\NUL\ETX\SOH\ETX\NUL\a\DC2\ENQ\DEL\ACK\128\SOHU\n\
    \\NAK\n\
    \\f\EOT\NUL\ETX\SOH\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ENQ\DEL\ACK\128\SOHU\n\
    \\235\STX\n\
    \\b\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\DC2\ACK\134\SOH\ACK\153\SOH\a\SUB\214\STX The router is capable of shadowing traffic from one cluster to another. The current\n\
    \ implementation is \"fire and forget,\" meaning Envoy will not wait for the shadow cluster to\n\
    \ respond before returning the response from the primary cluster. All normal statistics are\n\
    \ collected for the shadow cluster making this feature useful for testing.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\SOH\DC2\EOT\134\SOH\SO!\n\
    \\DC3\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\a\DC2\ACK\135\SOH\b\137\SOH\"\n\
    \\CAN\n\
    \\SO\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ACK\135\SOH\b\137\SOH\"\n\
    \\140\SOH\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\NUL\DC2\EOT\141\SOH\bD\SUBx Specifies the cluster that requests will be mirrored to. The cluster must\n\
    \ exist in the cluster manager configuration.\n\
    \\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\NUL\ENQ\DC2\EOT\141\SOH\b\SO\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\NUL\SOH\DC2\EOT\141\SOH\SI\SYN\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\NUL\ETX\DC2\EOT\141\SOH\EM\SUB\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\NUL\b\DC2\EOT\141\SOH\ESCC\n\
    \\SYN\n\
    \\SO\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\NUL\b\175\b\SO\DC2\EOT\141\SOH\FSB\n\
    \\228\SOH\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\SOH\DC2\EOT\148\SOH\bE\SUB\207\SOH If not specified or the runtime key is not present, all requests to the target cluster\n\
    \ will be mirrored.\n\
    \\n\
    \ If specified, Envoy will lookup the runtime key to get the percentage of requests to the\n\
    \ mirror.\n\
    \\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\SOH\ACK\DC2\EOT\148\SOH\b/\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\SOH\SOH\DC2\EOT\148\SOH0@\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\SOH\ETX\DC2\EOT\148\SOHCD\n\
    \\144\SOH\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\STX\DC2\EOT\152\SOH\b'\SUB| Set this to TRUE to only mirror write commands, this is effectively replicating the\n\
    \ writes in a \"fire and forget\" manner.\n\
    \\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\STX\ENQ\DC2\EOT\152\SOH\b\f\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\STX\SOH\DC2\EOT\152\SOH\r\"\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\STX\ETX\DC2\EOT\152\SOH%&\n\
    \x\n\
    \\b\EOT\NUL\ETX\SOH\ETX\NUL\STX\NUL\DC2\EOT\157\SOH\ACKF\SUBf String prefix that must match the beginning of the keys. Envoy will always favor the\n\
    \ longest match.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\NUL\ENQ\DC2\EOT\157\SOH\ACK\f\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\NUL\SOH\DC2\EOT\157\SOH\r\DC3\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\NUL\ETX\DC2\EOT\157\SOH\SYN\ETB\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\NUL\b\DC2\EOT\157\SOH\CANE\n\
    \\DC4\n\
    \\f\EOT\NUL\ETX\SOH\ETX\NUL\STX\NUL\b\175\b\SO\DC2\EOT\157\SOH\EMD\n\
    \\\\n\
    \\b\EOT\NUL\ETX\SOH\ETX\NUL\STX\SOH\DC2\EOT\160\SOH\ACK\GS\SUBJ Indicates if the prefix needs to be removed from the key when forwarded.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\SOH\ENQ\DC2\EOT\160\SOH\ACK\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\SOH\SOH\DC2\EOT\160\SOH\v\CAN\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\SOH\ETX\DC2\EOT\160\SOH\ESC\FS\n\
    \?\n\
    \\b\EOT\NUL\ETX\SOH\ETX\NUL\STX\STX\DC2\EOT\163\SOH\ACKB\SUB- Upstream cluster to forward the command to.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\STX\ENQ\DC2\EOT\163\SOH\ACK\f\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\STX\SOH\DC2\EOT\163\SOH\r\DC4\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\STX\ETX\DC2\EOT\163\SOH\ETB\CAN\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\STX\b\DC2\EOT\163\SOH\EMA\n\
    \\DC4\n\
    \\f\EOT\NUL\ETX\SOH\ETX\NUL\STX\STX\b\175\b\SO\DC2\EOT\163\SOH\SUB@\n\
    \L\n\
    \\b\EOT\NUL\ETX\SOH\ETX\NUL\STX\ETX\DC2\EOT\166\SOH\ACK=\SUB: Indicates that the route has a request mirroring policy.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\ETX\EOT\DC2\EOT\166\SOH\ACK\SO\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\ETX\ACK\DC2\EOT\166\SOH\SI\"\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\ETX\SOH\DC2\EOT\166\SOH#8\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\ETX\ETX\DC2\EOT\166\SOH;<\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\SOH\t\DC2\EOT\169\SOH\EOT\SI\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\SOH\t\NUL\DC2\EOT\169\SOH\r\SO\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\t\NUL\SOH\DC2\EOT\169\SOH\r\SO\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\t\NUL\STX\DC2\EOT\169\SOH\r\SO\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\SOH\n\
    \\DC2\EOT\171\SOH\EOT!\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\SOH\n\
    \\NUL\DC2\EOT\171\SOH\r \n\
    \(\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\EOT\174\SOH\EOT\RS\SUB\CAN List of prefix routes.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\EOT\DC2\EOT\174\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ACK\DC2\EOT\174\SOH\r\DC2\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\EOT\174\SOH\DC3\EM\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\EOT\174\SOH\FS\GS\n\
    \L\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\SOH\DC2\EOT\177\SOH\EOT\RS\SUB< Indicates that prefix matching should be case insensitive.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ENQ\DC2\EOT\177\SOH\EOT\b\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\SOH\DC2\EOT\177\SOH\t\EM\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ETX\DC2\EOT\177\SOH\FS\GS\n\
    \\169\SOH\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\STX\DC2\EOT\181\SOH\EOT\RS\SUB\152\SOH Optional catch-all route to forward commands that doesn't match any of the routes. The\n\
    \ catch-all route becomes required when no routes are specified.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\ACK\DC2\EOT\181\SOH\EOT\t\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\SOH\DC2\EOT\181\SOH\n\
    \\EM\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\ETX\DC2\EOT\181\SOH\FS\GS\n\
    \E\n\
    \\EOT\EOT\NUL\ETX\STX\DC2\ACK\185\SOH\STX\207\SOH\ETX\SUB5 RedisFault defines faults used for fault injection.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\STX\SOH\DC2\EOT\185\SOH\n\
    \\DC4\n\
    \\DLE\n\
    \\ACK\EOT\NUL\ETX\STX\EOT\NUL\DC2\ACK\186\SOH\EOT\192\SOH\ENQ\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\EOT\NUL\SOH\DC2\EOT\186\SOH\t\ETB\n\
    \`\n\
    \\b\EOT\NUL\ETX\STX\EOT\NUL\STX\NUL\DC2\EOT\188\SOH\ACK\DLE\SUBN Delays requests. This is the base fault; other faults can have delays added.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\STX\EOT\NUL\STX\NUL\SOH\DC2\EOT\188\SOH\ACK\v\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\STX\EOT\NUL\STX\NUL\STX\DC2\EOT\188\SOH\SO\SI\n\
    \/\n\
    \\b\EOT\NUL\ETX\STX\EOT\NUL\STX\SOH\DC2\EOT\191\SOH\ACK\DLE\SUB\GS Returns errors on requests.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\STX\EOT\NUL\STX\SOH\SOH\DC2\EOT\191\SOH\ACK\v\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\STX\EOT\NUL\STX\SOH\STX\DC2\EOT\191\SOH\SO\SI\n\
    \\GS\n\
    \\ACK\EOT\NUL\ETX\STX\STX\NUL\DC2\EOT\195\SOH\EOTQ\SUB\r Fault type.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ACK\DC2\EOT\195\SOH\EOT\DC2\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\SOH\DC2\EOT\195\SOH\DC3\GS\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ETX\DC2\EOT\195\SOH !\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\b\DC2\EOT\195\SOH\"P\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\STX\STX\NUL\b\175\b\DLE\DC2\EOT\195\SOH#O\n\
    \<\n\
    \\ACK\EOT\NUL\ETX\STX\STX\SOH\DC2\ACK\198\SOH\EOT\199\SOH6\SUB* Percentage of requests fault applies to.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ACK\DC2\EOT\198\SOH\EOT+\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\SOH\DC2\EOT\198\SOH,9\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ETX\DC2\EOT\198\SOH<=\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\b\DC2\EOT\199\SOH\b5\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\STX\STX\SOH\b\175\b\DC1\DC2\EOT\199\SOH\t4\n\
    \D\n\
    \\ACK\EOT\NUL\ETX\STX\STX\STX\DC2\EOT\202\SOH\EOT'\SUB4 Delay for all faults. If not set, defaults to zero\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ACK\DC2\EOT\202\SOH\EOT\FS\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\SOH\DC2\EOT\202\SOH\GS\"\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ETX\DC2\EOT\202\SOH%&\n\
    \\181\SOH\n\
    \\ACK\EOT\NUL\ETX\STX\STX\ETX\DC2\EOT\206\SOH\EOT!\SUB\164\SOH Commands fault is restricted to, if any. If not set, fault applies to all commands\n\
    \ other than auth and ping (due to special handling of those commands in Envoy).\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\EOT\DC2\EOT\206\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\ENQ\DC2\EOT\206\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\SOH\DC2\EOT\206\SOH\DC4\FS\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\ETX\DC2\EOT\206\SOH\US \n\
    \\v\n\
    \\ETX\EOT\NUL\t\DC2\EOT\209\SOH\STX\r\n\
    \\f\n\
    \\EOT\EOT\NUL\t\NUL\DC2\EOT\209\SOH\v\f\n\
    \\r\n\
    \\ENQ\EOT\NUL\t\NUL\SOH\DC2\EOT\209\SOH\v\f\n\
    \\r\n\
    \\ENQ\EOT\NUL\t\NUL\STX\DC2\EOT\209\SOH\v\f\n\
    \\v\n\
    \\ETX\EOT\NUL\n\
    \\DC2\EOT\211\SOH\STX\NAK\n\
    \\f\n\
    \\EOT\EOT\NUL\n\
    \\NUL\DC2\EOT\211\SOH\v\DC4\n\
    \m\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\214\SOH\STXB\SUB_ The prefix to use when emitting :ref:`statistics <config_network_filters_redis_proxy_stats>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\EOT\214\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\EOT\214\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\EOT\214\SOH\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\EOT\214\SOH\EMA\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\EOT\214\SOH\SUB@\n\
    \R\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\217\SOH\STXN\SUBD Network settings for the connection pool to the upstream clusters.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\EOT\217\SOH\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\EOT\217\SOH\DC3\ESC\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\EOT\217\SOH\RS\US\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\EOT\217\SOH M\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DC1\DC2\EOT\217\SOH!L\n\
    \\181\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOT\221\SOH\STX\GS\SUB\166\SOH Indicates that latency stat should be computed in microseconds. By default it is computed in\n\
    \ milliseconds. This does not apply to upstream command stats currently.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\EOT\221\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\EOT\221\SOH\a\CAN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\EOT\221\SOH\ESC\FS\n\
    \\243\b\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\EOT\250\SOH\STX!\SUB\228\b List of **unique** prefixes used to separate keys from different workloads to different\n\
    \ clusters. Envoy will always favor the longest match first in case of overlap. A catch-all\n\
    \ cluster can be used to forward commands when there is no match. Time complexity of the\n\
    \ lookups are in O(min(longest key prefix, key length)).\n\
    \\n\
    \ Example:\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \    prefix_routes:\n\
    \      routes:\n\
    \        - prefix: \"ab\"\n\
    \          cluster: \"cluster_a\"\n\
    \        - prefix: \"abc\"\n\
    \          cluster: \"cluster_b\"\n\
    \\n\
    \ When using the above routes, the following prefixes would be sent to:\n\
    \\n\
    \ * ``get abc:users`` would retrieve the key 'abc:users' from cluster_b.\n\
    \ * ``get ab:users`` would retrieve the key 'ab:users' from cluster_a.\n\
    \ * ``get z:users`` would return a NoUpstreamHost error. A :ref:`catch-all\n\
    \   route<envoy_v3_api_field_extensions.filters.network.redis_proxy.v3.RedisProxy.PrefixRoutes.catch_all_route>`\n\
    \   would have retrieved the key from that cluster instead.\n\
    \\n\
    \ See the :ref:`configuration section\n\
    \ <arch_overview_redis_configuration>` of the architecture overview for recommendations on\n\
    \ configuring the backing clusters.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\EOT\250\SOH\STX\SO\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\EOT\250\SOH\SI\FS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\EOT\250\SOH\US \n\
    \\219\ENQ\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\EOT\132\STX\STX_\SUB\204\ENQ Authenticate Redis client connections locally by forcing downstream clients to issue a `Redis\n\
    \ AUTH command <https://redis.io/commands/auth>`_ with this password before enabling any other\n\
    \ command. If an AUTH command's password matches this password, an \"OK\" response will be returned\n\
    \ to the client. If the AUTH command password does not match this password, then an \"ERR invalid\n\
    \ password\" error will be returned. If any other command is received before AUTH when this\n\
    \ password is set, then a \"NOAUTH Authentication required.\" error response will be sent to the\n\
    \ client. If an AUTH command is received when the password is not set, then an \"ERR Client sent\n\
    \ AUTH, but no password is set\" error will be returned.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\EOT\132\STX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\EOT\132\STX\FS4\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\EOT\132\STX78\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\EOT\132\STX9^\n\
    \\DC1\n\
    \\t\EOT\NUL\STX\EOT\b\247\182\193$\DC2\EOT\132\STX:]\n\
    \\128\ACK\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\EOT\161\STX\STX!\SUB\241\ENQ List of faults to inject. Faults currently come in two flavors:\n\
    \ - Delay, which delays a request.\n\
    \ - Error, which responds to a request with an error. Errors can also have delays attached.\n\
    \\n\
    \ Example:\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \    faults:\n\
    \    - fault_type: ERROR\n\
    \      fault_enabled:\n\
    \        default_value:\n\
    \          numerator: 10\n\
    \          denominator: HUNDRED\n\
    \        runtime_key: \"bogus_key\"\n\
    \        commands:\n\
    \        - GET\n\
    \      - fault_type: DELAY\n\
    \        fault_enabled:\n\
    \          default_value:\n\
    \            numerator: 10\n\
    \            denominator: HUNDRED\n\
    \          runtime_key: \"bogus_key\"\n\
    \        delay: 2s\n\
    \\n\
    \ See the :ref:`fault injection section\n\
    \ <config_network_filters_redis_proxy_fault_injection>` for more information on how to configure this.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\EOT\161\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\EOT\161\STX\v\NAK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\EOT\161\STX\SYN\FS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\EOT\161\STX\US \n\
    \\209\a\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\EOT\173\STX\STX_\SUB\194\a If a username is provided an ACL style AUTH command will be required with a username and password.\n\
    \ Authenticate Redis client connections locally by forcing downstream clients to issue a `Redis\n\
    \ AUTH command <https://redis.io/commands/auth>`_ with this username and the *downstream_auth_password*\n\
    \ before enabling any other command. If an AUTH command's username and password matches this username\n\
    \ and the *downstream_auth_password* , an \"OK\" response will be returned to the client. If the AUTH\n\
    \ command username or password does not match this username or the *downstream_auth_password*, then an\n\
    \ \"WRONGPASS invalid username-password pair\" error will be returned. If any other command is received before AUTH when this\n\
    \ password is set, then a \"NOAUTH Authentication required.\" error response will be sent to the\n\
    \ client. If an AUTH command is received when the password is not set, then an \"ERR Client sent\n\
    \ AUTH, but no ACL is set\" error will be returned.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\EOT\173\STX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\EOT\173\STX\FS4\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\EOT\173\STX78\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\b\DC2\EOT\173\STX9^\n\
    \\DC1\n\
    \\t\EOT\NUL\STX\ACK\b\247\182\193$\DC2\EOT\173\STX:]\n\
    \\152\STX\n\
    \\STX\EOT\SOH\DC2\ACK\179\STX\NUL\190\STX\SOH\SUB\137\STX RedisProtocolOptions specifies Redis upstream protocol options. This object is used in\n\
    \ :ref:`typed_extension_protocol_options<envoy_v3_api_field_config.cluster.v3.Cluster.typed_extension_protocol_options>`,\n\
    \ keyed by the name `envoy.filters.network.redis_proxy`.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SOH\SOH\DC2\EOT\179\STX\b\FS\n\
    \\r\n\
    \\ETX\EOT\SOH\a\DC2\ACK\180\STX\STX\181\STXH\n\
    \\DC2\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\ACK\180\STX\STX\181\STXH\n\
    \\155\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOT\185\STX\STXT\SUB\140\SOH Upstream server password as defined by the `requirepass` directive\n\
    \ <https://redis.io/topics/config>`_ in the server's configuration file.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\EOT\185\STX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\EOT\185\STX\FS)\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\EOT\185\STX,-\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\EOT\185\STX.S\n\
    \\DC1\n\
    \\t\EOT\SOH\STX\NUL\b\247\182\193$\DC2\EOT\185\STX/R\n\
    \\145\SOH\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT\189\STX\STXT\SUB\130\SOH Upstream server username as defined by the `user` directive\n\
    \ <https://redis.io/topics/acl>`_ in the server's configuration file.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\EOT\189\STX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\EOT\189\STX\FS)\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\EOT\189\STX,-\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\EOT\189\STX.S\n\
    \\DC1\n\
    \\t\EOT\SOH\STX\SOH\b\247\182\193$\DC2\EOT\189\STX/Rb\ACKproto3"