{- This file was auto-generated from envoy/config/core/v3/resolver.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Core.V3.Resolver (
        DnsResolutionConfig(), DnsResolverOptions()
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
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Resolver_Fields.resolvers' @:: Lens' DnsResolutionConfig [Proto.Envoy.Config.Core.V3.Address.Address]@
         * 'Proto.Envoy.Config.Core.V3.Resolver_Fields.vec'resolvers' @:: Lens' DnsResolutionConfig (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.Address)@
         * 'Proto.Envoy.Config.Core.V3.Resolver_Fields.dnsResolverOptions' @:: Lens' DnsResolutionConfig DnsResolverOptions@
         * 'Proto.Envoy.Config.Core.V3.Resolver_Fields.maybe'dnsResolverOptions' @:: Lens' DnsResolutionConfig (Prelude.Maybe DnsResolverOptions)@ -}
data DnsResolutionConfig
  = DnsResolutionConfig'_constructor {_DnsResolutionConfig'resolvers :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.Address),
                                      _DnsResolutionConfig'dnsResolverOptions :: !(Prelude.Maybe DnsResolverOptions),
                                      _DnsResolutionConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DnsResolutionConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DnsResolutionConfig "resolvers" [Proto.Envoy.Config.Core.V3.Address.Address] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsResolutionConfig'resolvers
           (\ x__ y__ -> x__ {_DnsResolutionConfig'resolvers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DnsResolutionConfig "vec'resolvers" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsResolutionConfig'resolvers
           (\ x__ y__ -> x__ {_DnsResolutionConfig'resolvers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsResolutionConfig "dnsResolverOptions" DnsResolverOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsResolutionConfig'dnsResolverOptions
           (\ x__ y__ -> x__ {_DnsResolutionConfig'dnsResolverOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DnsResolutionConfig "maybe'dnsResolverOptions" (Prelude.Maybe DnsResolverOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsResolutionConfig'dnsResolverOptions
           (\ x__ y__ -> x__ {_DnsResolutionConfig'dnsResolverOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Message DnsResolutionConfig where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.DnsResolutionConfig"
  packedMessageDescriptor _
    = "\n\
      \\DC3DnsResolutionConfig\DC2E\n\
      \\tresolvers\CAN\SOH \ETX(\v2\GS.envoy.config.core.v3.AddressR\tresolversB\b\250B\ENQ\146\SOH\STX\b\SOH\DC2Z\n\
      \\DC4dns_resolver_options\CAN\STX \SOH(\v2(.envoy.config.core.v3.DnsResolverOptionsR\DC2dnsResolverOptions"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        resolvers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resolvers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.Address)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"resolvers")) ::
              Data.ProtoLens.FieldDescriptor DnsResolutionConfig
        dnsResolverOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dns_resolver_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DnsResolverOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dnsResolverOptions")) ::
              Data.ProtoLens.FieldDescriptor DnsResolutionConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, resolvers__field_descriptor),
           (Data.ProtoLens.Tag 2, dnsResolverOptions__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DnsResolutionConfig'_unknownFields
        (\ x__ y__ -> x__ {_DnsResolutionConfig'_unknownFields = y__})
  defMessage
    = DnsResolutionConfig'_constructor
        {_DnsResolutionConfig'resolvers = Data.Vector.Generic.empty,
         _DnsResolutionConfig'dnsResolverOptions = Prelude.Nothing,
         _DnsResolutionConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DnsResolutionConfig
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Address.Address
             -> Data.ProtoLens.Encoding.Bytes.Parser DnsResolutionConfig
        loop x mutable'resolvers
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'resolvers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'resolvers)
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
                              (Data.ProtoLens.Field.field @"vec'resolvers") frozen'resolvers x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "resolvers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'resolvers y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "dns_resolver_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dnsResolverOptions") y x)
                                  mutable'resolvers
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'resolvers
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'resolvers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'resolvers)
          "DnsResolutionConfig"
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
                   (Data.ProtoLens.Field.field @"vec'resolvers") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'dnsResolverOptions") _x
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
instance Control.DeepSeq.NFData DnsResolutionConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DnsResolutionConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DnsResolutionConfig'resolvers x__)
                (Control.DeepSeq.deepseq
                   (_DnsResolutionConfig'dnsResolverOptions x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Resolver_Fields.useTcpForDnsLookups' @:: Lens' DnsResolverOptions Prelude.Bool@
         * 'Proto.Envoy.Config.Core.V3.Resolver_Fields.noDefaultSearchDomain' @:: Lens' DnsResolverOptions Prelude.Bool@ -}
data DnsResolverOptions
  = DnsResolverOptions'_constructor {_DnsResolverOptions'useTcpForDnsLookups :: !Prelude.Bool,
                                     _DnsResolverOptions'noDefaultSearchDomain :: !Prelude.Bool,
                                     _DnsResolverOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DnsResolverOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DnsResolverOptions "useTcpForDnsLookups" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsResolverOptions'useTcpForDnsLookups
           (\ x__ y__ -> x__ {_DnsResolverOptions'useTcpForDnsLookups = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsResolverOptions "noDefaultSearchDomain" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsResolverOptions'noDefaultSearchDomain
           (\ x__ y__
              -> x__ {_DnsResolverOptions'noDefaultSearchDomain = y__}))
        Prelude.id
instance Data.ProtoLens.Message DnsResolverOptions where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.DnsResolverOptions"
  packedMessageDescriptor _
    = "\n\
      \\DC2DnsResolverOptions\DC24\n\
      \\ETBuse_tcp_for_dns_lookups\CAN\SOH \SOH(\bR\DC3useTcpForDnsLookups\DC27\n\
      \\CANno_default_search_domain\CAN\STX \SOH(\bR\NAKnoDefaultSearchDomain"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        useTcpForDnsLookups__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "use_tcp_for_dns_lookups"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"useTcpForDnsLookups")) ::
              Data.ProtoLens.FieldDescriptor DnsResolverOptions
        noDefaultSearchDomain__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "no_default_search_domain"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"noDefaultSearchDomain")) ::
              Data.ProtoLens.FieldDescriptor DnsResolverOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, useTcpForDnsLookups__field_descriptor),
           (Data.ProtoLens.Tag 2, noDefaultSearchDomain__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DnsResolverOptions'_unknownFields
        (\ x__ y__ -> x__ {_DnsResolverOptions'_unknownFields = y__})
  defMessage
    = DnsResolverOptions'_constructor
        {_DnsResolverOptions'useTcpForDnsLookups = Data.ProtoLens.fieldDefault,
         _DnsResolverOptions'noDefaultSearchDomain = Data.ProtoLens.fieldDefault,
         _DnsResolverOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DnsResolverOptions
          -> Data.ProtoLens.Encoding.Bytes.Parser DnsResolverOptions
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
                                       "use_tcp_for_dns_lookups"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"useTcpForDnsLookups") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "no_default_search_domain"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"noDefaultSearchDomain") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DnsResolverOptions"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"useTcpForDnsLookups") _x
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
                         (Data.ProtoLens.Field.field @"noDefaultSearchDomain") _x
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
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData DnsResolverOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DnsResolverOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DnsResolverOptions'useTcpForDnsLookups x__)
                (Control.DeepSeq.deepseq
                   (_DnsResolverOptions'noDefaultSearchDomain x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \#envoy/config/core/v3/resolver.proto\DC2\DC4envoy.config.core.v3\SUB\"envoy/config/core/v3/address.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\131\SOH\n\
    \\DC2DnsResolverOptions\DC24\n\
    \\ETBuse_tcp_for_dns_lookups\CAN\SOH \SOH(\bR\DC3useTcpForDnsLookups\DC27\n\
    \\CANno_default_search_domain\CAN\STX \SOH(\bR\NAKnoDefaultSearchDomain\"\184\SOH\n\
    \\DC3DnsResolutionConfig\DC2E\n\
    \\tresolvers\CAN\SOH \ETX(\v2\GS.envoy.config.core.v3.AddressR\tresolversB\b\250B\ENQ\146\SOH\STX\b\SOH\DC2Z\n\
    \\DC4dns_resolver_options\CAN\STX \SOH(\v2(.envoy.config.core.v3.DnsResolverOptionsR\DC2dnsResolverOptionsB=\n\
    \\"io.envoyproxy.envoy.config.core.v3B\rResolverProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\149\f\n\
    \\ACK\DC2\EOT\NUL\NUL(\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL,\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL;\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\t\NUL;\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL.\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\n\
    \\NUL.\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\v\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\f\NULF\n\
    \\135\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC1\NUL\SUB\SOH\SUB\\ Configuration of DNS resolver option flags which control the behavior of the DNS resolver.\n\
    \2\GS [#protodoc-title: Resolver]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC1\b\SUB\n\
    \\144\STX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SYN\STX#\SUB\130\STX Use TCP for all DNS queries instead of the default protocol UDP.\n\
    \ Setting this value causes failure if the\n\
    \ ``envoy.restart_features.use_apple_api_for_dns_lookups`` runtime value is true during\n\
    \ server startup. Apple's API only uses UDP for DNS resolution.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SYN\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SYN\a\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SYN!\"\n\
    \_\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\EM\STX$\SUBR Do not use the default search domains; only query hostnames as-is or as aliases.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\EM\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\EM\a\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\EM\"#\n\
    \l\n\
    \\STX\EOT\SOH\DC2\EOT\GS\NUL(\SOH\SUB` DNS resolution configuration which includes the underlying dns resolver addresses and options.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\GS\b\ESC\n\
    \\185\ETX\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX$\STXN\SUB\171\ETX A list of dns resolver addresses. If specified, the DNS client library will perform resolution\n\
    \ via the underlying DNS resolvers. Otherwise, the default system resolvers\n\
    \ (e.g., /etc/resolv.conf) will be used.\n\
    \ Setting this value causes failure if the\n\
    \ ``envoy.restart_features.use_apple_api_for_dns_lookups`` runtime value is true during\n\
    \ server startup. Apple's API only allows overriding DNS resolvers via system settings.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX$\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX$\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX$\DC3\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX$\US \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX$!M\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\DC2\DC2\ETX$\"L\n\
    \i\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX'\STX.\SUB\\ Configuration of DNS resolver option flags which control the behavior of the DNS resolver.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX'\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX'\NAK)\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX',-b\ACKproto3"