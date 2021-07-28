{- This file was auto-generated from envoy/extensions/transport_sockets/tls/v3/tls_spiffe_validator_config.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.TransportSockets.Tls.V3.TlsSpiffeValidatorConfig (
        SPIFFECertValidatorConfig(),
        SPIFFECertValidatorConfig'TrustDomain()
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
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.TlsSpiffeValidatorConfig_Fields.trustDomains' @:: Lens' SPIFFECertValidatorConfig [SPIFFECertValidatorConfig'TrustDomain]@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.TlsSpiffeValidatorConfig_Fields.vec'trustDomains' @:: Lens' SPIFFECertValidatorConfig (Data.Vector.Vector SPIFFECertValidatorConfig'TrustDomain)@ -}
data SPIFFECertValidatorConfig
  = SPIFFECertValidatorConfig'_constructor {_SPIFFECertValidatorConfig'trustDomains :: !(Data.Vector.Vector SPIFFECertValidatorConfig'TrustDomain),
                                            _SPIFFECertValidatorConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SPIFFECertValidatorConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SPIFFECertValidatorConfig "trustDomains" [SPIFFECertValidatorConfig'TrustDomain] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SPIFFECertValidatorConfig'trustDomains
           (\ x__ y__ -> x__ {_SPIFFECertValidatorConfig'trustDomains = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SPIFFECertValidatorConfig "vec'trustDomains" (Data.Vector.Vector SPIFFECertValidatorConfig'TrustDomain) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SPIFFECertValidatorConfig'trustDomains
           (\ x__ y__ -> x__ {_SPIFFECertValidatorConfig'trustDomains = y__}))
        Prelude.id
instance Data.ProtoLens.Message SPIFFECertValidatorConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.transport_sockets.tls.v3.SPIFFECertValidatorConfig"
  packedMessageDescriptor _
    = "\n\
      \\EMSPIFFECertValidatorConfig\DC2\DEL\n\
      \\rtrust_domains\CAN\SOH \ETX(\v2P.envoy.extensions.transport_sockets.tls.v3.SPIFFECertValidatorConfig.TrustDomainR\ftrustDomainsB\b\250B\ENQ\146\SOH\STX\b\SOH\SUBo\n\
      \\vTrustDomain\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2C\n\
      \\ftrust_bundle\CAN\STX \SOH(\v2 .envoy.config.core.v3.DataSourceR\vtrustBundle"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        trustDomains__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trust_domains"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SPIFFECertValidatorConfig'TrustDomain)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"trustDomains")) ::
              Data.ProtoLens.FieldDescriptor SPIFFECertValidatorConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, trustDomains__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SPIFFECertValidatorConfig'_unknownFields
        (\ x__ y__
           -> x__ {_SPIFFECertValidatorConfig'_unknownFields = y__})
  defMessage
    = SPIFFECertValidatorConfig'_constructor
        {_SPIFFECertValidatorConfig'trustDomains = Data.Vector.Generic.empty,
         _SPIFFECertValidatorConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SPIFFECertValidatorConfig
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld SPIFFECertValidatorConfig'TrustDomain
             -> Data.ProtoLens.Encoding.Bytes.Parser SPIFFECertValidatorConfig
        loop x mutable'trustDomains
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'trustDomains <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'trustDomains)
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
                              (Data.ProtoLens.Field.field @"vec'trustDomains")
                              frozen'trustDomains
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
                                        "trust_domains"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'trustDomains y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'trustDomains
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'trustDomains <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'trustDomains)
          "SPIFFECertValidatorConfig"
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
                   (Data.ProtoLens.Field.field @"vec'trustDomains") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData SPIFFECertValidatorConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SPIFFECertValidatorConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SPIFFECertValidatorConfig'trustDomains x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.TlsSpiffeValidatorConfig_Fields.name' @:: Lens' SPIFFECertValidatorConfig'TrustDomain Data.Text.Text@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.TlsSpiffeValidatorConfig_Fields.trustBundle' @:: Lens' SPIFFECertValidatorConfig'TrustDomain Proto.Envoy.Config.Core.V3.Base.DataSource@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.TlsSpiffeValidatorConfig_Fields.maybe'trustBundle' @:: Lens' SPIFFECertValidatorConfig'TrustDomain (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource)@ -}
data SPIFFECertValidatorConfig'TrustDomain
  = SPIFFECertValidatorConfig'TrustDomain'_constructor {_SPIFFECertValidatorConfig'TrustDomain'name :: !Data.Text.Text,
                                                        _SPIFFECertValidatorConfig'TrustDomain'trustBundle :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource),
                                                        _SPIFFECertValidatorConfig'TrustDomain'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SPIFFECertValidatorConfig'TrustDomain where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SPIFFECertValidatorConfig'TrustDomain "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SPIFFECertValidatorConfig'TrustDomain'name
           (\ x__ y__
              -> x__ {_SPIFFECertValidatorConfig'TrustDomain'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SPIFFECertValidatorConfig'TrustDomain "trustBundle" Proto.Envoy.Config.Core.V3.Base.DataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SPIFFECertValidatorConfig'TrustDomain'trustBundle
           (\ x__ y__
              -> x__ {_SPIFFECertValidatorConfig'TrustDomain'trustBundle = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SPIFFECertValidatorConfig'TrustDomain "maybe'trustBundle" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SPIFFECertValidatorConfig'TrustDomain'trustBundle
           (\ x__ y__
              -> x__ {_SPIFFECertValidatorConfig'TrustDomain'trustBundle = y__}))
        Prelude.id
instance Data.ProtoLens.Message SPIFFECertValidatorConfig'TrustDomain where
  messageName _
    = Data.Text.pack
        "envoy.extensions.transport_sockets.tls.v3.SPIFFECertValidatorConfig.TrustDomain"
  packedMessageDescriptor _
    = "\n\
      \\vTrustDomain\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2C\n\
      \\ftrust_bundle\CAN\STX \SOH(\v2 .envoy.config.core.v3.DataSourceR\vtrustBundle"
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
              Data.ProtoLens.FieldDescriptor SPIFFECertValidatorConfig'TrustDomain
        trustBundle__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trust_bundle"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.DataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'trustBundle")) ::
              Data.ProtoLens.FieldDescriptor SPIFFECertValidatorConfig'TrustDomain
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, trustBundle__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SPIFFECertValidatorConfig'TrustDomain'_unknownFields
        (\ x__ y__
           -> x__
                {_SPIFFECertValidatorConfig'TrustDomain'_unknownFields = y__})
  defMessage
    = SPIFFECertValidatorConfig'TrustDomain'_constructor
        {_SPIFFECertValidatorConfig'TrustDomain'name = Data.ProtoLens.fieldDefault,
         _SPIFFECertValidatorConfig'TrustDomain'trustBundle = Prelude.Nothing,
         _SPIFFECertValidatorConfig'TrustDomain'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SPIFFECertValidatorConfig'TrustDomain
          -> Data.ProtoLens.Encoding.Bytes.Parser SPIFFECertValidatorConfig'TrustDomain
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
                                       "trust_bundle"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"trustBundle") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TrustDomain"
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
                       (Data.ProtoLens.Field.field @"maybe'trustBundle") _x
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
instance Control.DeepSeq.NFData SPIFFECertValidatorConfig'TrustDomain where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SPIFFECertValidatorConfig'TrustDomain'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SPIFFECertValidatorConfig'TrustDomain'name x__)
                (Control.DeepSeq.deepseq
                   (_SPIFFECertValidatorConfig'TrustDomain'trustBundle x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Kenvoy/extensions/transport_sockets/tls/v3/tls_spiffe_validator_config.proto\DC2)envoy.extensions.transport_sockets.tls.v3\SUB\USenvoy/config/core/v3/base.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\141\STX\n\
    \\EMSPIFFECertValidatorConfig\DC2\DEL\n\
    \\rtrust_domains\CAN\SOH \ETX(\v2P.envoy.extensions.transport_sockets.tls.v3.SPIFFECertValidatorConfig.TrustDomainR\ftrustDomainsB\b\250B\ENQ\146\SOH\STX\b\SOH\SUBo\n\
    \\vTrustDomain\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2C\n\
    \\ftrust_bundle\CAN\STX \SOH(\v2 .envoy.config.core.v3.DataSourceR\vtrustBundleBb\n\
    \7io.envoyproxy.envoy.extensions.transport_sockets.tls.v3B\GSTlsSpiffeValidatorConfigProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\234\DC4\n\
    \\ACK\DC2\EOT\NUL\NUL:\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL2\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NULP\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\t\NULP\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL>\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\n\
    \\NUL>\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\v\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\f\NULF\n\
    \\232\SO\n\
    \\STX\EOT\NUL\DC2\EOT.\NUL:\SOH\SUB\249\r Configuration specific to the `SPIFFE <https://github.com/spiffe/spiffe>`_ certificate validator.\n\
    \\n\
    \ Example:\n\
    \\n\
    \ .. validated-code-block:: yaml\n\
    \   :type-name: envoy.extensions.transport_sockets.tls.v3.CertificateValidationContext\n\
    \\n\
    \   custom_validator_config:\n\
    \     name: envoy.tls.cert_validator.spiffe\n\
    \     typed_config:\n\
    \       \"@type\": type.googleapis.com/envoy.extensions.transport_sockets.tls.v3.SPIFFECertValidatorConfig\n\
    \       trust_domains:\n\
    \       - name: foo.com\n\
    \         trust_bundle:\n\
    \           filename: \"foo.pem\"\n\
    \       - name: envoy.com\n\
    \         trust_bundle:\n\
    \           filename: \"envoy.pem\"\n\
    \\n\
    \ In this example, a presented peer certificate whose SAN matches `spiffe//foo.com/**` is validated against\n\
    \ the \"foo.pem\" x.509 certificate. All the trust bundles are isolated from each other, so no trust domain can mint\n\
    \ a SVID belonging to another trust domain. That means, in this example, a SVID signed by `envoy.com`'s CA with `spiffe//foo.com/**`\n\
    \ SAN would be rejected since Envoy selects the trust bundle according to the presented SAN before validate the certificate.\n\
    \\n\
    \ Note that SPIFFE validator inherits and uses the following options from :ref:`CertificateValidationContext <envoy_v3_api_msg_extensions.transport_sockets.tls.v3.CertificateValidationContext>`.\n\
    \\n\
    \ - :ref:`allow_expired_certificate <envoy_v3_api_field_extensions.transport_sockets.tls.v3.CertificateValidationContext.allow_expired_certificate>` to allow expired certificates.\n\
    \ - :ref:`match_subject_alt_names <envoy_v3_api_field_extensions.transport_sockets.tls.v3.CertificateValidationContext.match_subject_alt_names>` to match **URI** SAN of certificates. Unlike the default validator, SPIFFE validator only matches **URI** SAN (which equals to SVID in SPIFFE terminology) and ignore other SAN types.\n\
    \\n\
    \2` [#protodoc-title: SPIFFE Certificate Validator]\n\
    \ [#extension: envoy.tls.cert_validator.spiffe]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX.\b!\n\
    \\f\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT/\STX6\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX/\n\
    \\NAK\n\
    \\136\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX2\EOT=\SUBy Name of the trust domain, `example.com`, `foo.bar.gov` for example.\n\
    \ Note that this must *not* have \"spiffe://\" prefix.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX2\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX2\v\SI\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX2\DC2\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\b\DC2\ETX2\DC4<\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\NUL\b\175\b\SO\DC2\ETX2\NAK;\n\
    \|\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX5\EOT/\SUBm Specify a data source holding x.509 trust bundle used for validating incoming SVID(s) in this trust domain.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ACK\DC2\ETX5\EOT\GS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX5\RS*\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX5-.\n\
    \]\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX9\STXV\SUBP This field specifies trust domains used for validating incoming X.509-SVID(s).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX9\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX9\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX9\ETB$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX9'(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX9)U\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DC2\DC2\ETX9*Tb\ACKproto3"