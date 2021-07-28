{- This file was auto-generated from envoy/extensions/filters/network/client_ssl_auth/v3/client_ssl_auth.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Network.ClientSslAuth.V3.ClientSslAuth (
        ClientSSLAuth()
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
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.ClientSslAuth.V3.ClientSslAuth_Fields.authApiCluster' @:: Lens' ClientSSLAuth Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.ClientSslAuth.V3.ClientSslAuth_Fields.statPrefix' @:: Lens' ClientSSLAuth Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.ClientSslAuth.V3.ClientSslAuth_Fields.refreshDelay' @:: Lens' ClientSSLAuth Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Network.ClientSslAuth.V3.ClientSslAuth_Fields.maybe'refreshDelay' @:: Lens' ClientSSLAuth (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Network.ClientSslAuth.V3.ClientSslAuth_Fields.ipWhiteList' @:: Lens' ClientSSLAuth [Proto.Envoy.Config.Core.V3.Address.CidrRange]@
         * 'Proto.Envoy.Extensions.Filters.Network.ClientSslAuth.V3.ClientSslAuth_Fields.vec'ipWhiteList' @:: Lens' ClientSSLAuth (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.CidrRange)@ -}
data ClientSSLAuth
  = ClientSSLAuth'_constructor {_ClientSSLAuth'authApiCluster :: !Data.Text.Text,
                                _ClientSSLAuth'statPrefix :: !Data.Text.Text,
                                _ClientSSLAuth'refreshDelay :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                _ClientSSLAuth'ipWhiteList :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.CidrRange),
                                _ClientSSLAuth'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClientSSLAuth where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClientSSLAuth "authApiCluster" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientSSLAuth'authApiCluster
           (\ x__ y__ -> x__ {_ClientSSLAuth'authApiCluster = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClientSSLAuth "statPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientSSLAuth'statPrefix
           (\ x__ y__ -> x__ {_ClientSSLAuth'statPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClientSSLAuth "refreshDelay" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientSSLAuth'refreshDelay
           (\ x__ y__ -> x__ {_ClientSSLAuth'refreshDelay = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClientSSLAuth "maybe'refreshDelay" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientSSLAuth'refreshDelay
           (\ x__ y__ -> x__ {_ClientSSLAuth'refreshDelay = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClientSSLAuth "ipWhiteList" [Proto.Envoy.Config.Core.V3.Address.CidrRange] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientSSLAuth'ipWhiteList
           (\ x__ y__ -> x__ {_ClientSSLAuth'ipWhiteList = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ClientSSLAuth "vec'ipWhiteList" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.CidrRange) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientSSLAuth'ipWhiteList
           (\ x__ y__ -> x__ {_ClientSSLAuth'ipWhiteList = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClientSSLAuth where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.client_ssl_auth.v3.ClientSSLAuth"
  packedMessageDescriptor _
    = "\n\
      \\rClientSSLAuth\DC27\n\
      \\DLEauth_api_cluster\CAN\SOH \SOH(\tR\SOauthApiClusterB\r\250B\n\
      \r\b\DLE\SOH\192\SOH\STX\200\SOH\NUL\DC2(\n\
      \\vstat_prefix\CAN\STX \SOH(\tR\n\
      \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2>\n\
      \\rrefresh_delay\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\frefreshDelay\DC2Y\n\
      \\rip_white_list\CAN\EOT \ETX(\v2\US.envoy.config.core.v3.CidrRangeR\vipWhiteListB\DC4\242\152\254\143\ENQ\SO\n\
      \\fip_allowlist:C\154\197\136\RS>\n\
      \<envoy.config.filter.network.client_ssl_auth.v2.ClientSSLAuth"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        authApiCluster__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "auth_api_cluster"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"authApiCluster")) ::
              Data.ProtoLens.FieldDescriptor ClientSSLAuth
        statPrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stat_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"statPrefix")) ::
              Data.ProtoLens.FieldDescriptor ClientSSLAuth
        refreshDelay__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "refresh_delay"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'refreshDelay")) ::
              Data.ProtoLens.FieldDescriptor ClientSSLAuth
        ipWhiteList__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ip_white_list"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.CidrRange)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"ipWhiteList")) ::
              Data.ProtoLens.FieldDescriptor ClientSSLAuth
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, authApiCluster__field_descriptor),
           (Data.ProtoLens.Tag 2, statPrefix__field_descriptor),
           (Data.ProtoLens.Tag 3, refreshDelay__field_descriptor),
           (Data.ProtoLens.Tag 4, ipWhiteList__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClientSSLAuth'_unknownFields
        (\ x__ y__ -> x__ {_ClientSSLAuth'_unknownFields = y__})
  defMessage
    = ClientSSLAuth'_constructor
        {_ClientSSLAuth'authApiCluster = Data.ProtoLens.fieldDefault,
         _ClientSSLAuth'statPrefix = Data.ProtoLens.fieldDefault,
         _ClientSSLAuth'refreshDelay = Prelude.Nothing,
         _ClientSSLAuth'ipWhiteList = Data.Vector.Generic.empty,
         _ClientSSLAuth'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClientSSLAuth
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Address.CidrRange
             -> Data.ProtoLens.Encoding.Bytes.Parser ClientSSLAuth
        loop x mutable'ipWhiteList
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'ipWhiteList <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'ipWhiteList)
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
                              (Data.ProtoLens.Field.field @"vec'ipWhiteList")
                              frozen'ipWhiteList
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
                                       "auth_api_cluster"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"authApiCluster") y x)
                                  mutable'ipWhiteList
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
                                       "stat_prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"statPrefix") y x)
                                  mutable'ipWhiteList
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "refresh_delay"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"refreshDelay") y x)
                                  mutable'ipWhiteList
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "ip_white_list"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'ipWhiteList y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'ipWhiteList
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'ipWhiteList <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'ipWhiteList)
          "ClientSSLAuth"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"authApiCluster") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"statPrefix") _x
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
                          (Data.ProtoLens.Field.field @"maybe'refreshDelay") _x
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
                            (Data.ProtoLens.Field.field @"vec'ipWhiteList") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData ClientSSLAuth where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClientSSLAuth'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ClientSSLAuth'authApiCluster x__)
                (Control.DeepSeq.deepseq
                   (_ClientSSLAuth'statPrefix x__)
                   (Control.DeepSeq.deepseq
                      (_ClientSSLAuth'refreshDelay x__)
                      (Control.DeepSeq.deepseq (_ClientSSLAuth'ipWhiteList x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Ienvoy/extensions/filters/network/client_ssl_auth/v3/client_ssl_auth.proto\DC23envoy.extensions.filters.network.client_ssl_auth.v3\SUB\"envoy/config/core/v3/address.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\RSudpa/annotations/migrate.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\210\STX\n\
    \\rClientSSLAuth\DC27\n\
    \\DLEauth_api_cluster\CAN\SOH \SOH(\tR\SOauthApiClusterB\r\250B\n\
    \r\b\DLE\SOH\192\SOH\STX\200\SOH\NUL\DC2(\n\
    \\vstat_prefix\CAN\STX \SOH(\tR\n\
    \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2>\n\
    \\rrefresh_delay\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\frefreshDelay\DC2Y\n\
    \\rip_white_list\CAN\EOT \ETX(\v2\US.envoy.config.core.v3.CidrRangeR\vipWhiteListB\DC4\242\152\254\143\ENQ\SO\n\
    \\fip_allowlist:C\154\197\136\RS>\n\
    \<envoy.config.filter.network.client_ssl_auth.v2.ClientSSLAuthBa\n\
    \Aio.envoyproxy.envoy.extensions.filters.network.client_ssl_auth.v3B\DC2ClientSslAuthProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\149\f\n\
    \\ACK\DC2\EOT\NUL\NUL1\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL<\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL,\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL'\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL+\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULZ\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\r\NULZ\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL3\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SO\NUL3\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SI\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DLE\NULF\n\
    \\212\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\ETB\NUL1\SOH2\199\SOH [#protodoc-title: Client TLS authentication]\n\
    \ Client TLS authentication\n\
    \ :ref:`configuration overview <config_network_filters_client_ssl_auth>`.\n\
    \ [#extension: envoy.filters.network.client_ssl_auth]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ETB\b\NAK\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\CAN\STX\EME\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\CAN\STX\EME\n\
    \\183\STX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\US\STX a\SUB\168\STX The :ref:`cluster manager <arch_overview_cluster_manager>` cluster that runs\n\
    \ the authentication service. The filter will connect to the service every 60s to fetch the list\n\
    \ of principals. The service must support the expected :ref:`REST API\n\
    \ <config_network_filters_client_ssl_auth_rest_api>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\US\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\US\t\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\US\FS\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX \ACK`\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX \a_\n\
    \q\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX$\STXB\SUBd The prefix to use when emitting :ref:`statistics\n\
    \ <config_network_filters_client_ssl_auth_stats>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX$\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX$\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX$\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX$\EMA\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\SO\DC2\ETX$\SUB@\n\
    \\235\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX*\STX-\SUB\221\SOH Time in milliseconds between principal refreshes from the\n\
    \ authentication service. Default is 60000 (60s). The actual fetch time\n\
    \ will be this value plus a random jittered value between\n\
    \ 0-refresh_delay_ms milliseconds.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX*\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX*\ESC(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX*+,\n\
    \\170\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\EOT/\STX0A\SUB\155\SOH An optional list of IP address and subnet masks that should be white\n\
    \ listed for access by the filter. If no list is provided, there is no\n\
    \ IP allowlist.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX/\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX/\v#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX/$1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX/45\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETX0\ACK@\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\STX\ETX\b\142\227\255Q\SOH\DC2\ETX0\a?b\ACKproto3"