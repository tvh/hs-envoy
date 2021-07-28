{- This file was auto-generated from envoy/extensions/transport_sockets/tls/v3/secret.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret (
        GenericSecret(), SdsSecretConfig(), Secret(), Secret'Type(..),
        _Secret'TlsCertificate, _Secret'SessionTicketKeys,
        _Secret'ValidationContext, _Secret'GenericSecret
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
import qualified Proto.Envoy.Config.Core.V3.ConfigSource
import qualified Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common
import qualified Proto.Udpa.Annotations.Sensitive
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret_Fields.secret' @:: Lens' GenericSecret Proto.Envoy.Config.Core.V3.Base.DataSource@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret_Fields.maybe'secret' @:: Lens' GenericSecret (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource)@ -}
data GenericSecret
  = GenericSecret'_constructor {_GenericSecret'secret :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource),
                                _GenericSecret'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GenericSecret where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GenericSecret "secret" Proto.Envoy.Config.Core.V3.Base.DataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenericSecret'secret
           (\ x__ y__ -> x__ {_GenericSecret'secret = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GenericSecret "maybe'secret" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenericSecret'secret
           (\ x__ y__ -> x__ {_GenericSecret'secret = y__}))
        Prelude.id
instance Data.ProtoLens.Message GenericSecret where
  messageName _
    = Data.Text.pack
        "envoy.extensions.transport_sockets.tls.v3.GenericSecret"
  packedMessageDescriptor _
    = "\n\
      \\rGenericSecret\DC2@\n\
      \\ACKsecret\CAN\SOH \SOH(\v2 .envoy.config.core.v3.DataSourceR\ACKsecretB\ACK\184\183\139\164\STX\SOH:&\154\197\136\RS!\n\
      \\USenvoy.api.v2.auth.GenericSecret"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        secret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "secret"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.DataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'secret")) ::
              Data.ProtoLens.FieldDescriptor GenericSecret
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, secret__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GenericSecret'_unknownFields
        (\ x__ y__ -> x__ {_GenericSecret'_unknownFields = y__})
  defMessage
    = GenericSecret'_constructor
        {_GenericSecret'secret = Prelude.Nothing,
         _GenericSecret'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GenericSecret -> Data.ProtoLens.Encoding.Bytes.Parser GenericSecret
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
          (do loop Data.ProtoLens.defMessage) "GenericSecret"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'secret") _x
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
instance Control.DeepSeq.NFData GenericSecret where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GenericSecret'_unknownFields x__)
             (Control.DeepSeq.deepseq (_GenericSecret'secret x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret_Fields.name' @:: Lens' SdsSecretConfig Data.Text.Text@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret_Fields.sdsConfig' @:: Lens' SdsSecretConfig Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret_Fields.maybe'sdsConfig' @:: Lens' SdsSecretConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource)@ -}
data SdsSecretConfig
  = SdsSecretConfig'_constructor {_SdsSecretConfig'name :: !Data.Text.Text,
                                  _SdsSecretConfig'sdsConfig :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource),
                                  _SdsSecretConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SdsSecretConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SdsSecretConfig "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdsSecretConfig'name
           (\ x__ y__ -> x__ {_SdsSecretConfig'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdsSecretConfig "sdsConfig" Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdsSecretConfig'sdsConfig
           (\ x__ y__ -> x__ {_SdsSecretConfig'sdsConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SdsSecretConfig "maybe'sdsConfig" (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdsSecretConfig'sdsConfig
           (\ x__ y__ -> x__ {_SdsSecretConfig'sdsConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message SdsSecretConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.transport_sockets.tls.v3.SdsSecretConfig"
  packedMessageDescriptor _
    = "\n\
      \\SISdsSecretConfig\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2A\n\
      \\n\
      \sds_config\CAN\STX \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\tsdsConfig:(\154\197\136\RS#\n\
      \!envoy.api.v2.auth.SdsSecretConfig"
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
              Data.ProtoLens.FieldDescriptor SdsSecretConfig
        sdsConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sds_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sdsConfig")) ::
              Data.ProtoLens.FieldDescriptor SdsSecretConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, sdsConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SdsSecretConfig'_unknownFields
        (\ x__ y__ -> x__ {_SdsSecretConfig'_unknownFields = y__})
  defMessage
    = SdsSecretConfig'_constructor
        {_SdsSecretConfig'name = Data.ProtoLens.fieldDefault,
         _SdsSecretConfig'sdsConfig = Prelude.Nothing,
         _SdsSecretConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SdsSecretConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser SdsSecretConfig
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
                                       "sds_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sdsConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SdsSecretConfig"
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
                       (Data.ProtoLens.Field.field @"maybe'sdsConfig") _x
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
instance Control.DeepSeq.NFData SdsSecretConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SdsSecretConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SdsSecretConfig'name x__)
                (Control.DeepSeq.deepseq (_SdsSecretConfig'sdsConfig x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret_Fields.name' @:: Lens' Secret Data.Text.Text@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret_Fields.maybe'type'' @:: Lens' Secret (Prelude.Maybe Secret'Type)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret_Fields.maybe'tlsCertificate' @:: Lens' Secret (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsCertificate)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret_Fields.tlsCertificate' @:: Lens' Secret Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsCertificate@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret_Fields.maybe'sessionTicketKeys' @:: Lens' Secret (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsSessionTicketKeys)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret_Fields.sessionTicketKeys' @:: Lens' Secret Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsSessionTicketKeys@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret_Fields.maybe'validationContext' @:: Lens' Secret (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.CertificateValidationContext)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret_Fields.validationContext' @:: Lens' Secret Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.CertificateValidationContext@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret_Fields.maybe'genericSecret' @:: Lens' Secret (Prelude.Maybe GenericSecret)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret_Fields.genericSecret' @:: Lens' Secret GenericSecret@ -}
data Secret
  = Secret'_constructor {_Secret'name :: !Data.Text.Text,
                         _Secret'type' :: !(Prelude.Maybe Secret'Type),
                         _Secret'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Secret where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Secret'Type
  = Secret'TlsCertificate !Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsCertificate |
    Secret'SessionTicketKeys !Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsSessionTicketKeys |
    Secret'ValidationContext !Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.CertificateValidationContext |
    Secret'GenericSecret !GenericSecret
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Secret "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Secret'name (\ x__ y__ -> x__ {_Secret'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Secret "maybe'type'" (Prelude.Maybe Secret'Type) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Secret'type' (\ x__ y__ -> x__ {_Secret'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Secret "maybe'tlsCertificate" (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsCertificate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Secret'type' (\ x__ y__ -> x__ {_Secret'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Secret'TlsCertificate x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Secret'TlsCertificate y__))
instance Data.ProtoLens.Field.HasField Secret "tlsCertificate" Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsCertificate where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Secret'type' (\ x__ y__ -> x__ {_Secret'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Secret'TlsCertificate x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Secret'TlsCertificate y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Secret "maybe'sessionTicketKeys" (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsSessionTicketKeys) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Secret'type' (\ x__ y__ -> x__ {_Secret'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Secret'SessionTicketKeys x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Secret'SessionTicketKeys y__))
instance Data.ProtoLens.Field.HasField Secret "sessionTicketKeys" Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsSessionTicketKeys where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Secret'type' (\ x__ y__ -> x__ {_Secret'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Secret'SessionTicketKeys x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Secret'SessionTicketKeys y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Secret "maybe'validationContext" (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.CertificateValidationContext) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Secret'type' (\ x__ y__ -> x__ {_Secret'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Secret'ValidationContext x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Secret'ValidationContext y__))
instance Data.ProtoLens.Field.HasField Secret "validationContext" Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.CertificateValidationContext where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Secret'type' (\ x__ y__ -> x__ {_Secret'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Secret'ValidationContext x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Secret'ValidationContext y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Secret "maybe'genericSecret" (Prelude.Maybe GenericSecret) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Secret'type' (\ x__ y__ -> x__ {_Secret'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Secret'GenericSecret x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Secret'GenericSecret y__))
instance Data.ProtoLens.Field.HasField Secret "genericSecret" GenericSecret where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Secret'type' (\ x__ y__ -> x__ {_Secret'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Secret'GenericSecret x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Secret'GenericSecret y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Secret where
  messageName _
    = Data.Text.pack "envoy.extensions.transport_sockets.tls.v3.Secret"
  packedMessageDescriptor _
    = "\n\
      \\ACKSecret\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2d\n\
      \\SItls_certificate\CAN\STX \SOH(\v29.envoy.extensions.transport_sockets.tls.v3.TlsCertificateH\NULR\SOtlsCertificate\DC2q\n\
      \\DC3session_ticket_keys\CAN\ETX \SOH(\v2?.envoy.extensions.transport_sockets.tls.v3.TlsSessionTicketKeysH\NULR\DC1sessionTicketKeys\DC2x\n\
      \\DC2validation_context\CAN\EOT \SOH(\v2G.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContextH\NULR\DC1validationContext\DC2a\n\
      \\SOgeneric_secret\CAN\ENQ \SOH(\v28.envoy.extensions.transport_sockets.tls.v3.GenericSecretH\NULR\rgenericSecretB\ACK\n\
      \\EOTtype:\US\154\197\136\RS\SUB\n\
      \\CANenvoy.api.v2.auth.Secret"
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
              Data.ProtoLens.FieldDescriptor Secret
        tlsCertificate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tls_certificate"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsCertificate)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tlsCertificate")) ::
              Data.ProtoLens.FieldDescriptor Secret
        sessionTicketKeys__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "session_ticket_keys"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsSessionTicketKeys)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sessionTicketKeys")) ::
              Data.ProtoLens.FieldDescriptor Secret
        validationContext__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validation_context"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.CertificateValidationContext)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'validationContext")) ::
              Data.ProtoLens.FieldDescriptor Secret
        genericSecret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "generic_secret"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GenericSecret)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'genericSecret")) ::
              Data.ProtoLens.FieldDescriptor Secret
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, tlsCertificate__field_descriptor),
           (Data.ProtoLens.Tag 3, sessionTicketKeys__field_descriptor),
           (Data.ProtoLens.Tag 4, validationContext__field_descriptor),
           (Data.ProtoLens.Tag 5, genericSecret__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Secret'_unknownFields
        (\ x__ y__ -> x__ {_Secret'_unknownFields = y__})
  defMessage
    = Secret'_constructor
        {_Secret'name = Data.ProtoLens.fieldDefault,
         _Secret'type' = Prelude.Nothing, _Secret'_unknownFields = []}
  parseMessage
    = let
        loop :: Secret -> Data.ProtoLens.Encoding.Bytes.Parser Secret
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
                                       "tls_certificate"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"tlsCertificate") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "session_ticket_keys"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"sessionTicketKeys") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "validation_context"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validationContext") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "generic_secret"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"genericSecret") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Secret"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'type'") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (Secret'TlsCertificate v))
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
                   (Prelude.Just (Secret'SessionTicketKeys v))
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
                   (Prelude.Just (Secret'ValidationContext v))
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
                   (Prelude.Just (Secret'GenericSecret v))
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
instance Control.DeepSeq.NFData Secret where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Secret'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Secret'name x__)
                (Control.DeepSeq.deepseq (_Secret'type' x__) ()))
instance Control.DeepSeq.NFData Secret'Type where
  rnf (Secret'TlsCertificate x__) = Control.DeepSeq.rnf x__
  rnf (Secret'SessionTicketKeys x__) = Control.DeepSeq.rnf x__
  rnf (Secret'ValidationContext x__) = Control.DeepSeq.rnf x__
  rnf (Secret'GenericSecret x__) = Control.DeepSeq.rnf x__
_Secret'TlsCertificate ::
  Data.ProtoLens.Prism.Prism' Secret'Type Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsCertificate
_Secret'TlsCertificate
  = Data.ProtoLens.Prism.prism'
      Secret'TlsCertificate
      (\ p__
         -> case p__ of
              (Secret'TlsCertificate p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Secret'SessionTicketKeys ::
  Data.ProtoLens.Prism.Prism' Secret'Type Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsSessionTicketKeys
_Secret'SessionTicketKeys
  = Data.ProtoLens.Prism.prism'
      Secret'SessionTicketKeys
      (\ p__
         -> case p__ of
              (Secret'SessionTicketKeys p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Secret'ValidationContext ::
  Data.ProtoLens.Prism.Prism' Secret'Type Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.CertificateValidationContext
_Secret'ValidationContext
  = Data.ProtoLens.Prism.prism'
      Secret'ValidationContext
      (\ p__
         -> case p__ of
              (Secret'ValidationContext p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Secret'GenericSecret ::
  Data.ProtoLens.Prism.Prism' Secret'Type GenericSecret
_Secret'GenericSecret
  = Data.ProtoLens.Prism.prism'
      Secret'GenericSecret
      (\ p__
         -> case p__ of
              (Secret'GenericSecret p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \6envoy/extensions/transport_sockets/tls/v3/secret.proto\DC2)envoy.extensions.transport_sockets.tls.v3\SUB\USenvoy/config/core/v3/base.proto\SUB(envoy/config/core/v3/config_source.proto\SUB6envoy/extensions/transport_sockets/tls/v3/common.proto\SUB udpa/annotations/sensitive.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"y\n\
    \\rGenericSecret\DC2@\n\
    \\ACKsecret\CAN\SOH \SOH(\v2 .envoy.config.core.v3.DataSourceR\ACKsecretB\ACK\184\183\139\164\STX\SOH:&\154\197\136\RS!\n\
    \\USenvoy.api.v2.auth.GenericSecret\"\155\SOH\n\
    \\SISdsSecretConfig\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2A\n\
    \\n\
    \sds_config\CAN\STX \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\tsdsConfig:(\154\197\136\RS#\n\
    \!envoy.api.v2.auth.SdsSecretConfig\"\251\ETX\n\
    \\ACKSecret\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2d\n\
    \\SItls_certificate\CAN\STX \SOH(\v29.envoy.extensions.transport_sockets.tls.v3.TlsCertificateH\NULR\SOtlsCertificate\DC2q\n\
    \\DC3session_ticket_keys\CAN\ETX \SOH(\v2?.envoy.extensions.transport_sockets.tls.v3.TlsSessionTicketKeysH\NULR\DC1sessionTicketKeys\DC2x\n\
    \\DC2validation_context\CAN\EOT \SOH(\v2G.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContextH\NULR\DC1validationContext\DC2a\n\
    \\SOgeneric_secret\CAN\ENQ \SOH(\v28.envoy.extensions.transport_sockets.tls.v3.GenericSecretH\NULR\rgenericSecretB\ACK\n\
    \\EOTtype:\US\154\197\136\RS\SUB\n\
    \\CANenvoy.api.v2.auth.SecretBP\n\
    \7io.envoyproxy.envoy.extensions.transport_sockets.tls.v3B\vSecretProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\178\n\
    \\n\
    \\ACK\DC2\EOT\NUL\NUL6\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL2\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL2\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL@\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL*\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL'\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\n\
    \\NUL+\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\v\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULP\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\r\NULP\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL,\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SO\NUL,\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SI\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DLE\NULF\n\
    \6\n\
    \\STX\EOT\NUL\DC2\EOT\DC4\NUL\EM\SOH2* [#protodoc-title: Secrets configuration]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC4\b\NAK\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\NAK\STXa\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\NAK\STXa\n\
    \B\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\CAN\STXM\SUB5 Secret of generic type and is available to filters.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\CAN\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\CAN\FS\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\CAN%&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\CAN'L\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\NUL\b\247\182\193$\DC2\ETX\CAN(K\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\ESC\NUL$\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\ESC\b\ETB\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX\FS\STXc\n\
    \\SI\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\ETX\FS\STXc\n\
    \\243\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX!\STX;\SUB\229\SOH Name by which the secret can be uniquely referred to. When both name and config are specified,\n\
    \ then secret can be fetched and/or reloaded via SDS. When only name is specified, then secret\n\
    \ will be loaded from static resources.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX!\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX!\t\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX!\DLE\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX!\DC2:\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\SO\DC2\ETX!\DC39\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX#\STX-\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX#\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX#\RS(\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX#+,\n\
    \#\n\
    \\STX\EOT\STX\DC2\EOT'\NUL6\SOH\SUB\ETB [#next-free-field: 6]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX'\b\SO\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX(\STXZ\n\
    \\SI\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\ETX(\STXZ\n\
    \e\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX+\STX\DC2\SUBX Name (FQDN, UUID, SPKI, SHA256, etc.) by which the secret can be uniquely referred to.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX+\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX+\t\r\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX+\DLE\DC1\n\
    \\f\n\
    \\EOT\EOT\STX\b\NUL\DC2\EOT-\STX5\ETX\n\
    \\f\n\
    \\ENQ\EOT\STX\b\NUL\SOH\DC2\ETX-\b\f\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX.\EOT'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX.\EOT\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX.\DC3\"\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX.%&\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX0\EOT1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETX0\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX0\EM,\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX0/0\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX2\EOT8\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\ETX2\EOT \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX2!3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX267\n\
    \\v\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETX4\EOT%\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ACK\DC2\ETX4\EOT\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETX4\DC2 \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETX4#$b\ACKproto3"