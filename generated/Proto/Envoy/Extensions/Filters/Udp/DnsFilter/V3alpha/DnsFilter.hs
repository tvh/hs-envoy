{- This file was auto-generated from envoy/extensions/filters/udp/dns_filter/v3alpha/dns_filter.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Udp.DnsFilter.V3alpha.DnsFilter (
        DnsFilterConfig(), DnsFilterConfig'ClientContextConfig(),
        DnsFilterConfig'ServerContextConfig(),
        DnsFilterConfig'ServerContextConfig'ConfigSource(..),
        _DnsFilterConfig'ServerContextConfig'InlineDnsTable,
        _DnsFilterConfig'ServerContextConfig'ExternalDnsTable
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
import qualified Proto.Envoy.Config.Core.V3.Resolver
import qualified Proto.Envoy.Data.Dns.V3.DnsTable
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Udp.DnsFilter.V3alpha.DnsFilter_Fields.statPrefix' @:: Lens' DnsFilterConfig Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Udp.DnsFilter.V3alpha.DnsFilter_Fields.serverConfig' @:: Lens' DnsFilterConfig DnsFilterConfig'ServerContextConfig@
         * 'Proto.Envoy.Extensions.Filters.Udp.DnsFilter.V3alpha.DnsFilter_Fields.maybe'serverConfig' @:: Lens' DnsFilterConfig (Prelude.Maybe DnsFilterConfig'ServerContextConfig)@
         * 'Proto.Envoy.Extensions.Filters.Udp.DnsFilter.V3alpha.DnsFilter_Fields.clientConfig' @:: Lens' DnsFilterConfig DnsFilterConfig'ClientContextConfig@
         * 'Proto.Envoy.Extensions.Filters.Udp.DnsFilter.V3alpha.DnsFilter_Fields.maybe'clientConfig' @:: Lens' DnsFilterConfig (Prelude.Maybe DnsFilterConfig'ClientContextConfig)@ -}
data DnsFilterConfig
  = DnsFilterConfig'_constructor {_DnsFilterConfig'statPrefix :: !Data.Text.Text,
                                  _DnsFilterConfig'serverConfig :: !(Prelude.Maybe DnsFilterConfig'ServerContextConfig),
                                  _DnsFilterConfig'clientConfig :: !(Prelude.Maybe DnsFilterConfig'ClientContextConfig),
                                  _DnsFilterConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DnsFilterConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DnsFilterConfig "statPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsFilterConfig'statPrefix
           (\ x__ y__ -> x__ {_DnsFilterConfig'statPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsFilterConfig "serverConfig" DnsFilterConfig'ServerContextConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsFilterConfig'serverConfig
           (\ x__ y__ -> x__ {_DnsFilterConfig'serverConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DnsFilterConfig "maybe'serverConfig" (Prelude.Maybe DnsFilterConfig'ServerContextConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsFilterConfig'serverConfig
           (\ x__ y__ -> x__ {_DnsFilterConfig'serverConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsFilterConfig "clientConfig" DnsFilterConfig'ClientContextConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsFilterConfig'clientConfig
           (\ x__ y__ -> x__ {_DnsFilterConfig'clientConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DnsFilterConfig "maybe'clientConfig" (Prelude.Maybe DnsFilterConfig'ClientContextConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsFilterConfig'clientConfig
           (\ x__ y__ -> x__ {_DnsFilterConfig'clientConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message DnsFilterConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.udp.dns_filter.v3alpha.DnsFilterConfig"
  packedMessageDescriptor _
    = "\n\
      \\SIDnsFilterConfig\DC2(\n\
      \\vstat_prefix\CAN\SOH \SOH(\tR\n\
      \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2y\n\
      \\rserver_config\CAN\STX \SOH(\v2T.envoy.extensions.filters.udp.dns_filter.v3alpha.DnsFilterConfig.ServerContextConfigR\fserverConfig\DC2y\n\
      \\rclient_config\CAN\ETX \SOH(\v2T.envoy.extensions.filters.udp.dns_filter.v3alpha.DnsFilterConfig.ClientContextConfigR\fclientConfig\SUB\198\SOH\n\
      \\DC3ServerContextConfig\DC2G\n\
      \\DLEinline_dns_table\CAN\SOH \SOH(\v2\ESC.envoy.data.dns.v3.DnsTableH\NULR\SOinlineDnsTable\DC2P\n\
      \\DC2external_dns_table\CAN\STX \SOH(\v2 .envoy.config.core.v3.DataSourceH\NULR\DLEexternalDnsTableB\DC4\n\
      \\rconfig_source\DC2\ETX\248B\SOH\SUB\255\SOH\n\
      \\DC3ClientContextConfig\DC2P\n\
      \\DLEresolver_timeout\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\SIresolverTimeoutB\n\
      \\250B\a\170\SOH\EOT2\STX\b\SOH\DC2]\n\
      \\NAKdns_resolution_config\CAN\STX \SOH(\v2).envoy.config.core.v3.DnsResolutionConfigR\DC3dnsResolutionConfig\DC27\n\
      \\DC3max_pending_lookups\CAN\ETX \SOH(\EOTR\DC1maxPendingLookupsB\a\250B\EOT2\STX(\SOH"
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
              Data.ProtoLens.FieldDescriptor DnsFilterConfig
        serverConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "server_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DnsFilterConfig'ServerContextConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'serverConfig")) ::
              Data.ProtoLens.FieldDescriptor DnsFilterConfig
        clientConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "client_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DnsFilterConfig'ClientContextConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'clientConfig")) ::
              Data.ProtoLens.FieldDescriptor DnsFilterConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, statPrefix__field_descriptor),
           (Data.ProtoLens.Tag 2, serverConfig__field_descriptor),
           (Data.ProtoLens.Tag 3, clientConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DnsFilterConfig'_unknownFields
        (\ x__ y__ -> x__ {_DnsFilterConfig'_unknownFields = y__})
  defMessage
    = DnsFilterConfig'_constructor
        {_DnsFilterConfig'statPrefix = Data.ProtoLens.fieldDefault,
         _DnsFilterConfig'serverConfig = Prelude.Nothing,
         _DnsFilterConfig'clientConfig = Prelude.Nothing,
         _DnsFilterConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DnsFilterConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser DnsFilterConfig
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
                                       "stat_prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"statPrefix") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "server_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"serverConfig") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "client_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"clientConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DnsFilterConfig"
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'serverConfig") _x
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
                          (Data.ProtoLens.Field.field @"maybe'clientConfig") _x
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
instance Control.DeepSeq.NFData DnsFilterConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DnsFilterConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DnsFilterConfig'statPrefix x__)
                (Control.DeepSeq.deepseq
                   (_DnsFilterConfig'serverConfig x__)
                   (Control.DeepSeq.deepseq (_DnsFilterConfig'clientConfig x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Udp.DnsFilter.V3alpha.DnsFilter_Fields.resolverTimeout' @:: Lens' DnsFilterConfig'ClientContextConfig Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Udp.DnsFilter.V3alpha.DnsFilter_Fields.maybe'resolverTimeout' @:: Lens' DnsFilterConfig'ClientContextConfig (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Udp.DnsFilter.V3alpha.DnsFilter_Fields.dnsResolutionConfig' @:: Lens' DnsFilterConfig'ClientContextConfig Proto.Envoy.Config.Core.V3.Resolver.DnsResolutionConfig@
         * 'Proto.Envoy.Extensions.Filters.Udp.DnsFilter.V3alpha.DnsFilter_Fields.maybe'dnsResolutionConfig' @:: Lens' DnsFilterConfig'ClientContextConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.Resolver.DnsResolutionConfig)@
         * 'Proto.Envoy.Extensions.Filters.Udp.DnsFilter.V3alpha.DnsFilter_Fields.maxPendingLookups' @:: Lens' DnsFilterConfig'ClientContextConfig Data.Word.Word64@ -}
data DnsFilterConfig'ClientContextConfig
  = DnsFilterConfig'ClientContextConfig'_constructor {_DnsFilterConfig'ClientContextConfig'resolverTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                                      _DnsFilterConfig'ClientContextConfig'dnsResolutionConfig :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Resolver.DnsResolutionConfig),
                                                      _DnsFilterConfig'ClientContextConfig'maxPendingLookups :: !Data.Word.Word64,
                                                      _DnsFilterConfig'ClientContextConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DnsFilterConfig'ClientContextConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DnsFilterConfig'ClientContextConfig "resolverTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsFilterConfig'ClientContextConfig'resolverTimeout
           (\ x__ y__
              -> x__
                   {_DnsFilterConfig'ClientContextConfig'resolverTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DnsFilterConfig'ClientContextConfig "maybe'resolverTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsFilterConfig'ClientContextConfig'resolverTimeout
           (\ x__ y__
              -> x__
                   {_DnsFilterConfig'ClientContextConfig'resolverTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsFilterConfig'ClientContextConfig "dnsResolutionConfig" Proto.Envoy.Config.Core.V3.Resolver.DnsResolutionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsFilterConfig'ClientContextConfig'dnsResolutionConfig
           (\ x__ y__
              -> x__
                   {_DnsFilterConfig'ClientContextConfig'dnsResolutionConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DnsFilterConfig'ClientContextConfig "maybe'dnsResolutionConfig" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Resolver.DnsResolutionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsFilterConfig'ClientContextConfig'dnsResolutionConfig
           (\ x__ y__
              -> x__
                   {_DnsFilterConfig'ClientContextConfig'dnsResolutionConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsFilterConfig'ClientContextConfig "maxPendingLookups" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsFilterConfig'ClientContextConfig'maxPendingLookups
           (\ x__ y__
              -> x__
                   {_DnsFilterConfig'ClientContextConfig'maxPendingLookups = y__}))
        Prelude.id
instance Data.ProtoLens.Message DnsFilterConfig'ClientContextConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.udp.dns_filter.v3alpha.DnsFilterConfig.ClientContextConfig"
  packedMessageDescriptor _
    = "\n\
      \\DC3ClientContextConfig\DC2P\n\
      \\DLEresolver_timeout\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\SIresolverTimeoutB\n\
      \\250B\a\170\SOH\EOT2\STX\b\SOH\DC2]\n\
      \\NAKdns_resolution_config\CAN\STX \SOH(\v2).envoy.config.core.v3.DnsResolutionConfigR\DC3dnsResolutionConfig\DC27\n\
      \\DC3max_pending_lookups\CAN\ETX \SOH(\EOTR\DC1maxPendingLookupsB\a\250B\EOT2\STX(\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        resolverTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resolver_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'resolverTimeout")) ::
              Data.ProtoLens.FieldDescriptor DnsFilterConfig'ClientContextConfig
        dnsResolutionConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dns_resolution_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Resolver.DnsResolutionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dnsResolutionConfig")) ::
              Data.ProtoLens.FieldDescriptor DnsFilterConfig'ClientContextConfig
        maxPendingLookups__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_pending_lookups"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxPendingLookups")) ::
              Data.ProtoLens.FieldDescriptor DnsFilterConfig'ClientContextConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, resolverTimeout__field_descriptor),
           (Data.ProtoLens.Tag 2, dnsResolutionConfig__field_descriptor),
           (Data.ProtoLens.Tag 3, maxPendingLookups__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DnsFilterConfig'ClientContextConfig'_unknownFields
        (\ x__ y__
           -> x__ {_DnsFilterConfig'ClientContextConfig'_unknownFields = y__})
  defMessage
    = DnsFilterConfig'ClientContextConfig'_constructor
        {_DnsFilterConfig'ClientContextConfig'resolverTimeout = Prelude.Nothing,
         _DnsFilterConfig'ClientContextConfig'dnsResolutionConfig = Prelude.Nothing,
         _DnsFilterConfig'ClientContextConfig'maxPendingLookups = Data.ProtoLens.fieldDefault,
         _DnsFilterConfig'ClientContextConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DnsFilterConfig'ClientContextConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser DnsFilterConfig'ClientContextConfig
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
                                       "resolver_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"resolverTimeout") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "dns_resolution_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dnsResolutionConfig") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "max_pending_lookups"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxPendingLookups") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ClientContextConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'resolverTimeout") _x
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
                       (Data.ProtoLens.Field.field @"maybe'dnsResolutionConfig") _x
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
                            (Data.ProtoLens.Field.field @"maxPendingLookups") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData DnsFilterConfig'ClientContextConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DnsFilterConfig'ClientContextConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DnsFilterConfig'ClientContextConfig'resolverTimeout x__)
                (Control.DeepSeq.deepseq
                   (_DnsFilterConfig'ClientContextConfig'dnsResolutionConfig x__)
                   (Control.DeepSeq.deepseq
                      (_DnsFilterConfig'ClientContextConfig'maxPendingLookups x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Udp.DnsFilter.V3alpha.DnsFilter_Fields.maybe'configSource' @:: Lens' DnsFilterConfig'ServerContextConfig (Prelude.Maybe DnsFilterConfig'ServerContextConfig'ConfigSource)@
         * 'Proto.Envoy.Extensions.Filters.Udp.DnsFilter.V3alpha.DnsFilter_Fields.maybe'inlineDnsTable' @:: Lens' DnsFilterConfig'ServerContextConfig (Prelude.Maybe Proto.Envoy.Data.Dns.V3.DnsTable.DnsTable)@
         * 'Proto.Envoy.Extensions.Filters.Udp.DnsFilter.V3alpha.DnsFilter_Fields.inlineDnsTable' @:: Lens' DnsFilterConfig'ServerContextConfig Proto.Envoy.Data.Dns.V3.DnsTable.DnsTable@
         * 'Proto.Envoy.Extensions.Filters.Udp.DnsFilter.V3alpha.DnsFilter_Fields.maybe'externalDnsTable' @:: Lens' DnsFilterConfig'ServerContextConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource)@
         * 'Proto.Envoy.Extensions.Filters.Udp.DnsFilter.V3alpha.DnsFilter_Fields.externalDnsTable' @:: Lens' DnsFilterConfig'ServerContextConfig Proto.Envoy.Config.Core.V3.Base.DataSource@ -}
data DnsFilterConfig'ServerContextConfig
  = DnsFilterConfig'ServerContextConfig'_constructor {_DnsFilterConfig'ServerContextConfig'configSource :: !(Prelude.Maybe DnsFilterConfig'ServerContextConfig'ConfigSource),
                                                      _DnsFilterConfig'ServerContextConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DnsFilterConfig'ServerContextConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data DnsFilterConfig'ServerContextConfig'ConfigSource
  = DnsFilterConfig'ServerContextConfig'InlineDnsTable !Proto.Envoy.Data.Dns.V3.DnsTable.DnsTable |
    DnsFilterConfig'ServerContextConfig'ExternalDnsTable !Proto.Envoy.Config.Core.V3.Base.DataSource
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField DnsFilterConfig'ServerContextConfig "maybe'configSource" (Prelude.Maybe DnsFilterConfig'ServerContextConfig'ConfigSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsFilterConfig'ServerContextConfig'configSource
           (\ x__ y__
              -> x__ {_DnsFilterConfig'ServerContextConfig'configSource = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsFilterConfig'ServerContextConfig "maybe'inlineDnsTable" (Prelude.Maybe Proto.Envoy.Data.Dns.V3.DnsTable.DnsTable) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsFilterConfig'ServerContextConfig'configSource
           (\ x__ y__
              -> x__ {_DnsFilterConfig'ServerContextConfig'configSource = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DnsFilterConfig'ServerContextConfig'InlineDnsTable x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   DnsFilterConfig'ServerContextConfig'InlineDnsTable y__))
instance Data.ProtoLens.Field.HasField DnsFilterConfig'ServerContextConfig "inlineDnsTable" Proto.Envoy.Data.Dns.V3.DnsTable.DnsTable where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsFilterConfig'ServerContextConfig'configSource
           (\ x__ y__
              -> x__ {_DnsFilterConfig'ServerContextConfig'configSource = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DnsFilterConfig'ServerContextConfig'InlineDnsTable x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      DnsFilterConfig'ServerContextConfig'InlineDnsTable y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField DnsFilterConfig'ServerContextConfig "maybe'externalDnsTable" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsFilterConfig'ServerContextConfig'configSource
           (\ x__ y__
              -> x__ {_DnsFilterConfig'ServerContextConfig'configSource = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DnsFilterConfig'ServerContextConfig'ExternalDnsTable x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   DnsFilterConfig'ServerContextConfig'ExternalDnsTable y__))
instance Data.ProtoLens.Field.HasField DnsFilterConfig'ServerContextConfig "externalDnsTable" Proto.Envoy.Config.Core.V3.Base.DataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsFilterConfig'ServerContextConfig'configSource
           (\ x__ y__
              -> x__ {_DnsFilterConfig'ServerContextConfig'configSource = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DnsFilterConfig'ServerContextConfig'ExternalDnsTable x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      DnsFilterConfig'ServerContextConfig'ExternalDnsTable y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message DnsFilterConfig'ServerContextConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.udp.dns_filter.v3alpha.DnsFilterConfig.ServerContextConfig"
  packedMessageDescriptor _
    = "\n\
      \\DC3ServerContextConfig\DC2G\n\
      \\DLEinline_dns_table\CAN\SOH \SOH(\v2\ESC.envoy.data.dns.v3.DnsTableH\NULR\SOinlineDnsTable\DC2P\n\
      \\DC2external_dns_table\CAN\STX \SOH(\v2 .envoy.config.core.v3.DataSourceH\NULR\DLEexternalDnsTableB\DC4\n\
      \\rconfig_source\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        inlineDnsTable__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "inline_dns_table"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Data.Dns.V3.DnsTable.DnsTable)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'inlineDnsTable")) ::
              Data.ProtoLens.FieldDescriptor DnsFilterConfig'ServerContextConfig
        externalDnsTable__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "external_dns_table"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.DataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'externalDnsTable")) ::
              Data.ProtoLens.FieldDescriptor DnsFilterConfig'ServerContextConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, inlineDnsTable__field_descriptor),
           (Data.ProtoLens.Tag 2, externalDnsTable__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DnsFilterConfig'ServerContextConfig'_unknownFields
        (\ x__ y__
           -> x__ {_DnsFilterConfig'ServerContextConfig'_unknownFields = y__})
  defMessage
    = DnsFilterConfig'ServerContextConfig'_constructor
        {_DnsFilterConfig'ServerContextConfig'configSource = Prelude.Nothing,
         _DnsFilterConfig'ServerContextConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DnsFilterConfig'ServerContextConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser DnsFilterConfig'ServerContextConfig
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
                                       "inline_dns_table"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"inlineDnsTable") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "external_dns_table"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"externalDnsTable") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ServerContextConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'configSource") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (DnsFilterConfig'ServerContextConfig'InlineDnsTable v))
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
                (Prelude.Just (DnsFilterConfig'ServerContextConfig'ExternalDnsTable v))
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
instance Control.DeepSeq.NFData DnsFilterConfig'ServerContextConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DnsFilterConfig'ServerContextConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DnsFilterConfig'ServerContextConfig'configSource x__) ())
instance Control.DeepSeq.NFData DnsFilterConfig'ServerContextConfig'ConfigSource where
  rnf (DnsFilterConfig'ServerContextConfig'InlineDnsTable x__)
    = Control.DeepSeq.rnf x__
  rnf (DnsFilterConfig'ServerContextConfig'ExternalDnsTable x__)
    = Control.DeepSeq.rnf x__
_DnsFilterConfig'ServerContextConfig'InlineDnsTable ::
  Data.ProtoLens.Prism.Prism' DnsFilterConfig'ServerContextConfig'ConfigSource Proto.Envoy.Data.Dns.V3.DnsTable.DnsTable
_DnsFilterConfig'ServerContextConfig'InlineDnsTable
  = Data.ProtoLens.Prism.prism'
      DnsFilterConfig'ServerContextConfig'InlineDnsTable
      (\ p__
         -> case p__ of
              (DnsFilterConfig'ServerContextConfig'InlineDnsTable p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DnsFilterConfig'ServerContextConfig'ExternalDnsTable ::
  Data.ProtoLens.Prism.Prism' DnsFilterConfig'ServerContextConfig'ConfigSource Proto.Envoy.Config.Core.V3.Base.DataSource
_DnsFilterConfig'ServerContextConfig'ExternalDnsTable
  = Data.ProtoLens.Prism.prism'
      DnsFilterConfig'ServerContextConfig'ExternalDnsTable
      (\ p__
         -> case p__ of
              (DnsFilterConfig'ServerContextConfig'ExternalDnsTable p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \@envoy/extensions/filters/udp/dns_filter/v3alpha/dns_filter.proto\DC2/envoy.extensions.filters.udp.dns_filter.v3alpha\SUB\USenvoy/config/core/v3/base.proto\SUB#envoy/config/core/v3/resolver.proto\SUB!envoy/data/dns/v3/dns_table.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\252\ENQ\n\
    \\SIDnsFilterConfig\DC2(\n\
    \\vstat_prefix\CAN\SOH \SOH(\tR\n\
    \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2y\n\
    \\rserver_config\CAN\STX \SOH(\v2T.envoy.extensions.filters.udp.dns_filter.v3alpha.DnsFilterConfig.ServerContextConfigR\fserverConfig\DC2y\n\
    \\rclient_config\CAN\ETX \SOH(\v2T.envoy.extensions.filters.udp.dns_filter.v3alpha.DnsFilterConfig.ClientContextConfigR\fclientConfig\SUB\198\SOH\n\
    \\DC3ServerContextConfig\DC2G\n\
    \\DLEinline_dns_table\CAN\SOH \SOH(\v2\ESC.envoy.data.dns.v3.DnsTableH\NULR\SOinlineDnsTable\DC2P\n\
    \\DC2external_dns_table\CAN\STX \SOH(\v2 .envoy.config.core.v3.DataSourceH\NULR\DLEexternalDnsTableB\DC4\n\
    \\rconfig_source\DC2\ETX\248B\SOH\SUB\255\SOH\n\
    \\DC3ClientContextConfig\DC2P\n\
    \\DLEresolver_timeout\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\SIresolverTimeoutB\n\
    \\250B\a\170\SOH\EOT2\STX\b\SOH\DC2]\n\
    \\NAKdns_resolution_config\CAN\STX \SOH(\v2).envoy.config.core.v3.DnsResolutionConfigR\DC3dnsResolutionConfig\DC27\n\
    \\DC3max_pending_lookups\CAN\ETX \SOH(\EOTR\DC1maxPendingLookupsB\a\250B\EOT2\STX(\SOHBa\n\
    \=io.envoyproxy.envoy.extensions.filters.udp.dns_filter.v3alphaB\SODnsFilterProtoP\SOH\186\128\200\209\ACK\STX\b\SOH\186\128\200\209\ACK\STX\DLE\STXJ\216\NAK\n\
    \\ACK\DC2\EOT\NUL\NULI\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL8\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL-\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL+\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL(\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL'\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULV\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\r\NULV\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL/\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SO\NUL/\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SI\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL>\n\
    \\r\n\
    \\ACK\b\135\128\153j\SOH\DC2\ETX\DLE\NUL>\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC1\NULF\n\
    \\218\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\CAN\NULI\SOH\SUB# Configuration for the DNS filter.\n\
    \2\168\SOH [#protodoc-title: DNS Filter]\n\
    \ DNS Filter :ref:`configuration overview <config_udp_listener_filters_dns_filter>`.\n\
    \ [#extension: envoy.filters.udp_listener.dns_filter]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\CAN\b\ETB\n\
    \\218\SOH\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\FS\STX(\ETX\SUB\203\SOH This message contains the configuration for the DNS Filter operating\n\
    \ in a server context. This message will contain the virtual hosts and\n\
    \ associated addresses with which Envoy will respond to queries\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\FS\n\
    \\GS\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\b\NUL\DC2\EOT\GS\EOT'\ENQ\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\b\NUL\SOH\DC2\ETX\GS\n\
    \\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\b\NUL\STX\DC2\ETX\RS\ACK(\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\b\NUL\STX\175\b\DC2\ETX\RS\ACK(\n\
    \H\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX!\ACK0\SUB9 Load the configuration specified from the control plane\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETX!\ACK\SUB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX!\ESC+\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX!./\n\
    \\177\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX&\ACK7\SUB\161\SOH Seed the filter configuration from an external path. This source\n\
    \ is a yaml formatted file that contains the DnsTable driving Envoy's\n\
    \ responses to DNS queries\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ACK\DC2\ETX&\ACK\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX& 2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX&56\n\
    \\235\SOH\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\EOT.\STX<\ETX\SUB\220\SOH This message contains the configuration for the DNS Filter operating\n\
    \ in a client context. This message will contain the timeouts, retry,\n\
    \ and forwarding configuration for Envoy to make DNS requests to other\n\
    \ resolvers\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETX.\n\
    \\GS\n\
    \\155\STX\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\ETX3\EOTc\SUB\139\STX Sets the maximum time we will wait for the upstream query to complete\n\
    \ We allow 5s for the upstream resolution to complete, so the minimum\n\
    \ value here is 1. Note that the total latency for a failed query is the\n\
    \ number of retries multiplied by the resolver_timeout.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ACK\DC2\ETX3\EOT\FS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETX3\GS-\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETX301\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\b\DC2\ETX32b\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\SOH\STX\NUL\b\175\b\NAK\DC2\ETX33a\n\
    \o\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\SOH\DC2\ETX6\EOTA\SUB` DNS resolution configuration which includes the underlying dns resolver addresses and options.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ACK\DC2\ETX6\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\SOH\DC2\ETX6'<\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ETX\DC2\ETX6?@\n\
    \\230\SOH\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\STX\DC2\ETX;\EOTH\SUB\214\SOH Controls how many outstanding external lookup contexts the filter tracks.\n\
    \ The context structure allows the filter to respond to every query even if the external\n\
    \ resolution times out or is otherwise unsuccessful\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\ENQ\DC2\ETX;\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\SOH\DC2\ETX;\v\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\ETX\DC2\ETX;!\"\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\b\DC2\ETX;#G\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\SOH\STX\STX\b\175\b\ACK\DC2\ETX;$F\n\
    \G\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX?\STXB\SUB: The stat prefix used when emitting DNS filter statistics\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX?\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX?\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX?\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX?\EMA\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX?\SUB@\n\
    \o\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXC\STX(\SUBb Server context configuration contains the data that the filter uses to respond\n\
    \ to DNS requests.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETXC\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXC\SYN#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXC&'\n\
    \\241\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXH\STX(\SUB\227\SOH Client context configuration controls Envoy's behavior when it must use external\n\
    \ resolvers to answer a query. This object is optional and if omitted instructs\n\
    \ the filter to resolve queries from the data in the server_config\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETXH\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXH\SYN#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXH&'b\ACKproto3"