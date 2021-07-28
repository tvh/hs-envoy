{- This file was auto-generated from envoy/config/endpoint/v3/endpoint_components.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Endpoint.V3.EndpointComponents (
        Endpoint(), Endpoint'HealthCheckConfig(), LbEndpoint(),
        LbEndpoint'HostIdentifier(..), _LbEndpoint'Endpoint,
        _LbEndpoint'EndpointName, LocalityLbEndpoints()
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
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Config.Core.V3.HealthCheck
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Endpoint.V3.EndpointComponents_Fields.address' @:: Lens' Endpoint Proto.Envoy.Config.Core.V3.Address.Address@
         * 'Proto.Envoy.Config.Endpoint.V3.EndpointComponents_Fields.maybe'address' @:: Lens' Endpoint (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address)@
         * 'Proto.Envoy.Config.Endpoint.V3.EndpointComponents_Fields.healthCheckConfig' @:: Lens' Endpoint Endpoint'HealthCheckConfig@
         * 'Proto.Envoy.Config.Endpoint.V3.EndpointComponents_Fields.maybe'healthCheckConfig' @:: Lens' Endpoint (Prelude.Maybe Endpoint'HealthCheckConfig)@
         * 'Proto.Envoy.Config.Endpoint.V3.EndpointComponents_Fields.hostname' @:: Lens' Endpoint Data.Text.Text@ -}
data Endpoint
  = Endpoint'_constructor {_Endpoint'address :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address),
                           _Endpoint'healthCheckConfig :: !(Prelude.Maybe Endpoint'HealthCheckConfig),
                           _Endpoint'hostname :: !Data.Text.Text,
                           _Endpoint'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Endpoint where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Endpoint "address" Proto.Envoy.Config.Core.V3.Address.Address where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Endpoint'address (\ x__ y__ -> x__ {_Endpoint'address = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Endpoint "maybe'address" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Endpoint'address (\ x__ y__ -> x__ {_Endpoint'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Endpoint "healthCheckConfig" Endpoint'HealthCheckConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Endpoint'healthCheckConfig
           (\ x__ y__ -> x__ {_Endpoint'healthCheckConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Endpoint "maybe'healthCheckConfig" (Prelude.Maybe Endpoint'HealthCheckConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Endpoint'healthCheckConfig
           (\ x__ y__ -> x__ {_Endpoint'healthCheckConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Endpoint "hostname" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Endpoint'hostname (\ x__ y__ -> x__ {_Endpoint'hostname = y__}))
        Prelude.id
instance Data.ProtoLens.Message Endpoint where
  messageName _ = Data.Text.pack "envoy.config.endpoint.v3.Endpoint"
  packedMessageDescriptor _
    = "\n\
      \\bEndpoint\DC27\n\
      \\aaddress\CAN\SOH \SOH(\v2\GS.envoy.config.core.v3.AddressR\aaddress\DC2d\n\
      \\DC3health_check_config\CAN\STX \SOH(\v24.envoy.config.endpoint.v3.Endpoint.HealthCheckConfigR\DC1healthCheckConfig\DC2\SUB\n\
      \\bhostname\CAN\ETX \SOH(\tR\bhostname\SUB\146\SOH\n\
      \\DC1HealthCheckConfig\DC2(\n\
      \\n\
      \port_value\CAN\SOH \SOH(\rR\tportValueB\t\250B\ACK*\EOT\CAN\255\255\ETX\DC2\SUB\n\
      \\bhostname\CAN\STX \SOH(\tR\bhostname:7\154\197\136\RS2\n\
      \0envoy.api.v2.endpoint.Endpoint.HealthCheckConfig:%\154\197\136\RS \n\
      \\RSenvoy.api.v2.endpoint.Endpoint"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.Address)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'address")) ::
              Data.ProtoLens.FieldDescriptor Endpoint
        healthCheckConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "health_check_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Endpoint'HealthCheckConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'healthCheckConfig")) ::
              Data.ProtoLens.FieldDescriptor Endpoint
        hostname__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hostname"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"hostname")) ::
              Data.ProtoLens.FieldDescriptor Endpoint
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, healthCheckConfig__field_descriptor),
           (Data.ProtoLens.Tag 3, hostname__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Endpoint'_unknownFields
        (\ x__ y__ -> x__ {_Endpoint'_unknownFields = y__})
  defMessage
    = Endpoint'_constructor
        {_Endpoint'address = Prelude.Nothing,
         _Endpoint'healthCheckConfig = Prelude.Nothing,
         _Endpoint'hostname = Data.ProtoLens.fieldDefault,
         _Endpoint'_unknownFields = []}
  parseMessage
    = let
        loop :: Endpoint -> Data.ProtoLens.Encoding.Bytes.Parser Endpoint
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
                                       "address"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "health_check_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"healthCheckConfig") y x)
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
                                       "hostname"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"hostname") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Endpoint"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'address") _x
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
                       (Data.ProtoLens.Field.field @"maybe'healthCheckConfig") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"hostname") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Endpoint where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Endpoint'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Endpoint'address x__)
                (Control.DeepSeq.deepseq
                   (_Endpoint'healthCheckConfig x__)
                   (Control.DeepSeq.deepseq (_Endpoint'hostname x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Config.Endpoint.V3.EndpointComponents_Fields.portValue' @:: Lens' Endpoint'HealthCheckConfig Data.Word.Word32@
         * 'Proto.Envoy.Config.Endpoint.V3.EndpointComponents_Fields.hostname' @:: Lens' Endpoint'HealthCheckConfig Data.Text.Text@ -}
data Endpoint'HealthCheckConfig
  = Endpoint'HealthCheckConfig'_constructor {_Endpoint'HealthCheckConfig'portValue :: !Data.Word.Word32,
                                             _Endpoint'HealthCheckConfig'hostname :: !Data.Text.Text,
                                             _Endpoint'HealthCheckConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Endpoint'HealthCheckConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Endpoint'HealthCheckConfig "portValue" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Endpoint'HealthCheckConfig'portValue
           (\ x__ y__ -> x__ {_Endpoint'HealthCheckConfig'portValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Endpoint'HealthCheckConfig "hostname" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Endpoint'HealthCheckConfig'hostname
           (\ x__ y__ -> x__ {_Endpoint'HealthCheckConfig'hostname = y__}))
        Prelude.id
instance Data.ProtoLens.Message Endpoint'HealthCheckConfig where
  messageName _
    = Data.Text.pack
        "envoy.config.endpoint.v3.Endpoint.HealthCheckConfig"
  packedMessageDescriptor _
    = "\n\
      \\DC1HealthCheckConfig\DC2(\n\
      \\n\
      \port_value\CAN\SOH \SOH(\rR\tportValueB\t\250B\ACK*\EOT\CAN\255\255\ETX\DC2\SUB\n\
      \\bhostname\CAN\STX \SOH(\tR\bhostname:7\154\197\136\RS2\n\
      \0envoy.api.v2.endpoint.Endpoint.HealthCheckConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        portValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "port_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"portValue")) ::
              Data.ProtoLens.FieldDescriptor Endpoint'HealthCheckConfig
        hostname__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hostname"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"hostname")) ::
              Data.ProtoLens.FieldDescriptor Endpoint'HealthCheckConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, portValue__field_descriptor),
           (Data.ProtoLens.Tag 2, hostname__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Endpoint'HealthCheckConfig'_unknownFields
        (\ x__ y__
           -> x__ {_Endpoint'HealthCheckConfig'_unknownFields = y__})
  defMessage
    = Endpoint'HealthCheckConfig'_constructor
        {_Endpoint'HealthCheckConfig'portValue = Data.ProtoLens.fieldDefault,
         _Endpoint'HealthCheckConfig'hostname = Data.ProtoLens.fieldDefault,
         _Endpoint'HealthCheckConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Endpoint'HealthCheckConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser Endpoint'HealthCheckConfig
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
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "port_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"portValue") y x)
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
                                       "hostname"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"hostname") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HealthCheckConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"portValue") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"hostname") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Endpoint'HealthCheckConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Endpoint'HealthCheckConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Endpoint'HealthCheckConfig'portValue x__)
                (Control.DeepSeq.deepseq
                   (_Endpoint'HealthCheckConfig'hostname x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Endpoint.V3.EndpointComponents_Fields.healthStatus' @:: Lens' LbEndpoint Proto.Envoy.Config.Core.V3.HealthCheck.HealthStatus@
         * 'Proto.Envoy.Config.Endpoint.V3.EndpointComponents_Fields.metadata' @:: Lens' LbEndpoint Proto.Envoy.Config.Core.V3.Base.Metadata@
         * 'Proto.Envoy.Config.Endpoint.V3.EndpointComponents_Fields.maybe'metadata' @:: Lens' LbEndpoint (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata)@
         * 'Proto.Envoy.Config.Endpoint.V3.EndpointComponents_Fields.loadBalancingWeight' @:: Lens' LbEndpoint Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Endpoint.V3.EndpointComponents_Fields.maybe'loadBalancingWeight' @:: Lens' LbEndpoint (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Endpoint.V3.EndpointComponents_Fields.maybe'hostIdentifier' @:: Lens' LbEndpoint (Prelude.Maybe LbEndpoint'HostIdentifier)@
         * 'Proto.Envoy.Config.Endpoint.V3.EndpointComponents_Fields.maybe'endpoint' @:: Lens' LbEndpoint (Prelude.Maybe Endpoint)@
         * 'Proto.Envoy.Config.Endpoint.V3.EndpointComponents_Fields.endpoint' @:: Lens' LbEndpoint Endpoint@
         * 'Proto.Envoy.Config.Endpoint.V3.EndpointComponents_Fields.maybe'endpointName' @:: Lens' LbEndpoint (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Config.Endpoint.V3.EndpointComponents_Fields.endpointName' @:: Lens' LbEndpoint Data.Text.Text@ -}
data LbEndpoint
  = LbEndpoint'_constructor {_LbEndpoint'healthStatus :: !Proto.Envoy.Config.Core.V3.HealthCheck.HealthStatus,
                             _LbEndpoint'metadata :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata),
                             _LbEndpoint'loadBalancingWeight :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                             _LbEndpoint'hostIdentifier :: !(Prelude.Maybe LbEndpoint'HostIdentifier),
                             _LbEndpoint'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LbEndpoint where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data LbEndpoint'HostIdentifier
  = LbEndpoint'Endpoint !Endpoint |
    LbEndpoint'EndpointName !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField LbEndpoint "healthStatus" Proto.Envoy.Config.Core.V3.HealthCheck.HealthStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LbEndpoint'healthStatus
           (\ x__ y__ -> x__ {_LbEndpoint'healthStatus = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LbEndpoint "metadata" Proto.Envoy.Config.Core.V3.Base.Metadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LbEndpoint'metadata
           (\ x__ y__ -> x__ {_LbEndpoint'metadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LbEndpoint "maybe'metadata" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LbEndpoint'metadata
           (\ x__ y__ -> x__ {_LbEndpoint'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LbEndpoint "loadBalancingWeight" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LbEndpoint'loadBalancingWeight
           (\ x__ y__ -> x__ {_LbEndpoint'loadBalancingWeight = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LbEndpoint "maybe'loadBalancingWeight" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LbEndpoint'loadBalancingWeight
           (\ x__ y__ -> x__ {_LbEndpoint'loadBalancingWeight = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LbEndpoint "maybe'hostIdentifier" (Prelude.Maybe LbEndpoint'HostIdentifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LbEndpoint'hostIdentifier
           (\ x__ y__ -> x__ {_LbEndpoint'hostIdentifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LbEndpoint "maybe'endpoint" (Prelude.Maybe Endpoint) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LbEndpoint'hostIdentifier
           (\ x__ y__ -> x__ {_LbEndpoint'hostIdentifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (LbEndpoint'Endpoint x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap LbEndpoint'Endpoint y__))
instance Data.ProtoLens.Field.HasField LbEndpoint "endpoint" Endpoint where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LbEndpoint'hostIdentifier
           (\ x__ y__ -> x__ {_LbEndpoint'hostIdentifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (LbEndpoint'Endpoint x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap LbEndpoint'Endpoint y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField LbEndpoint "maybe'endpointName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LbEndpoint'hostIdentifier
           (\ x__ y__ -> x__ {_LbEndpoint'hostIdentifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (LbEndpoint'EndpointName x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap LbEndpoint'EndpointName y__))
instance Data.ProtoLens.Field.HasField LbEndpoint "endpointName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LbEndpoint'hostIdentifier
           (\ x__ y__ -> x__ {_LbEndpoint'hostIdentifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (LbEndpoint'EndpointName x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap LbEndpoint'EndpointName y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message LbEndpoint where
  messageName _
    = Data.Text.pack "envoy.config.endpoint.v3.LbEndpoint"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \LbEndpoint\DC2@\n\
      \\bendpoint\CAN\SOH \SOH(\v2\".envoy.config.endpoint.v3.EndpointH\NULR\bendpoint\DC2%\n\
      \\rendpoint_name\CAN\ENQ \SOH(\tH\NULR\fendpointName\DC2G\n\
      \\rhealth_status\CAN\STX \SOH(\SO2\".envoy.config.core.v3.HealthStatusR\fhealthStatus\DC2:\n\
      \\bmetadata\CAN\ETX \SOH(\v2\RS.envoy.config.core.v3.MetadataR\bmetadata\DC2Y\n\
      \\NAKload_balancing_weight\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC3loadBalancingWeightB\a\250B\EOT*\STX(\SOHB\DC1\n\
      \\SIhost_identifier:'\154\197\136\RS\"\n\
      \ envoy.api.v2.endpoint.LbEndpoint"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        healthStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "health_status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.HealthCheck.HealthStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"healthStatus")) ::
              Data.ProtoLens.FieldDescriptor LbEndpoint
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.Metadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metadata")) ::
              Data.ProtoLens.FieldDescriptor LbEndpoint
        loadBalancingWeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "load_balancing_weight"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'loadBalancingWeight")) ::
              Data.ProtoLens.FieldDescriptor LbEndpoint
        endpoint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoint"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Endpoint)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'endpoint")) ::
              Data.ProtoLens.FieldDescriptor LbEndpoint
        endpointName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoint_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'endpointName")) ::
              Data.ProtoLens.FieldDescriptor LbEndpoint
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, healthStatus__field_descriptor),
           (Data.ProtoLens.Tag 3, metadata__field_descriptor),
           (Data.ProtoLens.Tag 4, loadBalancingWeight__field_descriptor),
           (Data.ProtoLens.Tag 1, endpoint__field_descriptor),
           (Data.ProtoLens.Tag 5, endpointName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LbEndpoint'_unknownFields
        (\ x__ y__ -> x__ {_LbEndpoint'_unknownFields = y__})
  defMessage
    = LbEndpoint'_constructor
        {_LbEndpoint'healthStatus = Data.ProtoLens.fieldDefault,
         _LbEndpoint'metadata = Prelude.Nothing,
         _LbEndpoint'loadBalancingWeight = Prelude.Nothing,
         _LbEndpoint'hostIdentifier = Prelude.Nothing,
         _LbEndpoint'_unknownFields = []}
  parseMessage
    = let
        loop ::
          LbEndpoint -> Data.ProtoLens.Encoding.Bytes.Parser LbEndpoint
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
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "health_status"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"healthStatus") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "load_balancing_weight"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"loadBalancingWeight") y x)
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "endpoint"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"endpoint") y x)
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
                                       "endpoint_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"endpointName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "LbEndpoint"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"healthStatus") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'metadata") _x
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
                          (Data.ProtoLens.Field.field @"maybe'loadBalancingWeight") _x
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
                             (Data.ProtoLens.Field.field @"maybe'hostIdentifier") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just (LbEndpoint'Endpoint v))
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
                         (Prelude.Just (LbEndpoint'EndpointName v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.Text.Encoding.encodeUtf8
                                   v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData LbEndpoint where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LbEndpoint'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_LbEndpoint'healthStatus x__)
                (Control.DeepSeq.deepseq
                   (_LbEndpoint'metadata x__)
                   (Control.DeepSeq.deepseq
                      (_LbEndpoint'loadBalancingWeight x__)
                      (Control.DeepSeq.deepseq (_LbEndpoint'hostIdentifier x__) ()))))
instance Control.DeepSeq.NFData LbEndpoint'HostIdentifier where
  rnf (LbEndpoint'Endpoint x__) = Control.DeepSeq.rnf x__
  rnf (LbEndpoint'EndpointName x__) = Control.DeepSeq.rnf x__
_LbEndpoint'Endpoint ::
  Data.ProtoLens.Prism.Prism' LbEndpoint'HostIdentifier Endpoint
_LbEndpoint'Endpoint
  = Data.ProtoLens.Prism.prism'
      LbEndpoint'Endpoint
      (\ p__
         -> case p__ of
              (LbEndpoint'Endpoint p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_LbEndpoint'EndpointName ::
  Data.ProtoLens.Prism.Prism' LbEndpoint'HostIdentifier Data.Text.Text
_LbEndpoint'EndpointName
  = Data.ProtoLens.Prism.prism'
      LbEndpoint'EndpointName
      (\ p__
         -> case p__ of
              (LbEndpoint'EndpointName p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Endpoint.V3.EndpointComponents_Fields.locality' @:: Lens' LocalityLbEndpoints Proto.Envoy.Config.Core.V3.Base.Locality@
         * 'Proto.Envoy.Config.Endpoint.V3.EndpointComponents_Fields.maybe'locality' @:: Lens' LocalityLbEndpoints (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Locality)@
         * 'Proto.Envoy.Config.Endpoint.V3.EndpointComponents_Fields.lbEndpoints' @:: Lens' LocalityLbEndpoints [LbEndpoint]@
         * 'Proto.Envoy.Config.Endpoint.V3.EndpointComponents_Fields.vec'lbEndpoints' @:: Lens' LocalityLbEndpoints (Data.Vector.Vector LbEndpoint)@
         * 'Proto.Envoy.Config.Endpoint.V3.EndpointComponents_Fields.loadBalancingWeight' @:: Lens' LocalityLbEndpoints Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Endpoint.V3.EndpointComponents_Fields.maybe'loadBalancingWeight' @:: Lens' LocalityLbEndpoints (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Endpoint.V3.EndpointComponents_Fields.priority' @:: Lens' LocalityLbEndpoints Data.Word.Word32@
         * 'Proto.Envoy.Config.Endpoint.V3.EndpointComponents_Fields.proximity' @:: Lens' LocalityLbEndpoints Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Endpoint.V3.EndpointComponents_Fields.maybe'proximity' @:: Lens' LocalityLbEndpoints (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@ -}
data LocalityLbEndpoints
  = LocalityLbEndpoints'_constructor {_LocalityLbEndpoints'locality :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Locality),
                                      _LocalityLbEndpoints'lbEndpoints :: !(Data.Vector.Vector LbEndpoint),
                                      _LocalityLbEndpoints'loadBalancingWeight :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                      _LocalityLbEndpoints'priority :: !Data.Word.Word32,
                                      _LocalityLbEndpoints'proximity :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                      _LocalityLbEndpoints'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LocalityLbEndpoints where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LocalityLbEndpoints "locality" Proto.Envoy.Config.Core.V3.Base.Locality where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalityLbEndpoints'locality
           (\ x__ y__ -> x__ {_LocalityLbEndpoints'locality = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LocalityLbEndpoints "maybe'locality" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Locality) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalityLbEndpoints'locality
           (\ x__ y__ -> x__ {_LocalityLbEndpoints'locality = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LocalityLbEndpoints "lbEndpoints" [LbEndpoint] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalityLbEndpoints'lbEndpoints
           (\ x__ y__ -> x__ {_LocalityLbEndpoints'lbEndpoints = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField LocalityLbEndpoints "vec'lbEndpoints" (Data.Vector.Vector LbEndpoint) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalityLbEndpoints'lbEndpoints
           (\ x__ y__ -> x__ {_LocalityLbEndpoints'lbEndpoints = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LocalityLbEndpoints "loadBalancingWeight" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalityLbEndpoints'loadBalancingWeight
           (\ x__ y__
              -> x__ {_LocalityLbEndpoints'loadBalancingWeight = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LocalityLbEndpoints "maybe'loadBalancingWeight" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalityLbEndpoints'loadBalancingWeight
           (\ x__ y__
              -> x__ {_LocalityLbEndpoints'loadBalancingWeight = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LocalityLbEndpoints "priority" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalityLbEndpoints'priority
           (\ x__ y__ -> x__ {_LocalityLbEndpoints'priority = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LocalityLbEndpoints "proximity" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalityLbEndpoints'proximity
           (\ x__ y__ -> x__ {_LocalityLbEndpoints'proximity = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LocalityLbEndpoints "maybe'proximity" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalityLbEndpoints'proximity
           (\ x__ y__ -> x__ {_LocalityLbEndpoints'proximity = y__}))
        Prelude.id
instance Data.ProtoLens.Message LocalityLbEndpoints where
  messageName _
    = Data.Text.pack "envoy.config.endpoint.v3.LocalityLbEndpoints"
  packedMessageDescriptor _
    = "\n\
      \\DC3LocalityLbEndpoints\DC2:\n\
      \\blocality\CAN\SOH \SOH(\v2\RS.envoy.config.core.v3.LocalityR\blocality\DC2G\n\
      \\flb_endpoints\CAN\STX \ETX(\v2$.envoy.config.endpoint.v3.LbEndpointR\vlbEndpoints\DC2Y\n\
      \\NAKload_balancing_weight\CAN\ETX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC3loadBalancingWeightB\a\250B\EOT*\STX(\SOH\DC2$\n\
      \\bpriority\CAN\ENQ \SOH(\rR\bpriorityB\b\250B\ENQ*\ETX\CAN\128\SOH\DC2:\n\
      \\tproximity\CAN\ACK \SOH(\v2\FS.google.protobuf.UInt32ValueR\tproximity:0\154\197\136\RS+\n\
      \)envoy.api.v2.endpoint.LocalityLbEndpoints"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        locality__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "locality"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.Locality)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'locality")) ::
              Data.ProtoLens.FieldDescriptor LocalityLbEndpoints
        lbEndpoints__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lb_endpoints"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor LbEndpoint)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"lbEndpoints")) ::
              Data.ProtoLens.FieldDescriptor LocalityLbEndpoints
        loadBalancingWeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "load_balancing_weight"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'loadBalancingWeight")) ::
              Data.ProtoLens.FieldDescriptor LocalityLbEndpoints
        priority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "priority"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"priority")) ::
              Data.ProtoLens.FieldDescriptor LocalityLbEndpoints
        proximity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proximity"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'proximity")) ::
              Data.ProtoLens.FieldDescriptor LocalityLbEndpoints
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, locality__field_descriptor),
           (Data.ProtoLens.Tag 2, lbEndpoints__field_descriptor),
           (Data.ProtoLens.Tag 3, loadBalancingWeight__field_descriptor),
           (Data.ProtoLens.Tag 5, priority__field_descriptor),
           (Data.ProtoLens.Tag 6, proximity__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LocalityLbEndpoints'_unknownFields
        (\ x__ y__ -> x__ {_LocalityLbEndpoints'_unknownFields = y__})
  defMessage
    = LocalityLbEndpoints'_constructor
        {_LocalityLbEndpoints'locality = Prelude.Nothing,
         _LocalityLbEndpoints'lbEndpoints = Data.Vector.Generic.empty,
         _LocalityLbEndpoints'loadBalancingWeight = Prelude.Nothing,
         _LocalityLbEndpoints'priority = Data.ProtoLens.fieldDefault,
         _LocalityLbEndpoints'proximity = Prelude.Nothing,
         _LocalityLbEndpoints'_unknownFields = []}
  parseMessage
    = let
        loop ::
          LocalityLbEndpoints
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld LbEndpoint
             -> Data.ProtoLens.Encoding.Bytes.Parser LocalityLbEndpoints
        loop x mutable'lbEndpoints
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'lbEndpoints <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'lbEndpoints)
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
                              (Data.ProtoLens.Field.field @"vec'lbEndpoints")
                              frozen'lbEndpoints
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "locality"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"locality") y x)
                                  mutable'lbEndpoints
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "lb_endpoints"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'lbEndpoints y)
                                loop x v
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "load_balancing_weight"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"loadBalancingWeight") y x)
                                  mutable'lbEndpoints
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "priority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"priority") y x)
                                  mutable'lbEndpoints
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "proximity"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"proximity") y x)
                                  mutable'lbEndpoints
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'lbEndpoints
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'lbEndpoints <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'lbEndpoints)
          "LocalityLbEndpoints"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'locality") _x
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
                      (Data.ProtoLens.Field.field @"vec'lbEndpoints") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'loadBalancingWeight") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"priority") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'proximity") _x
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
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData LocalityLbEndpoints where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LocalityLbEndpoints'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_LocalityLbEndpoints'locality x__)
                (Control.DeepSeq.deepseq
                   (_LocalityLbEndpoints'lbEndpoints x__)
                   (Control.DeepSeq.deepseq
                      (_LocalityLbEndpoints'loadBalancingWeight x__)
                      (Control.DeepSeq.deepseq
                         (_LocalityLbEndpoints'priority x__)
                         (Control.DeepSeq.deepseq
                            (_LocalityLbEndpoints'proximity x__) ())))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \2envoy/config/endpoint/v3/endpoint_components.proto\DC2\CANenvoy.config.endpoint.v3\SUB\"envoy/config/core/v3/address.proto\SUB\USenvoy/config/core/v3/base.proto\SUB'envoy/config/core/v3/health_check.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\129\ETX\n\
    \\bEndpoint\DC27\n\
    \\aaddress\CAN\SOH \SOH(\v2\GS.envoy.config.core.v3.AddressR\aaddress\DC2d\n\
    \\DC3health_check_config\CAN\STX \SOH(\v24.envoy.config.endpoint.v3.Endpoint.HealthCheckConfigR\DC1healthCheckConfig\DC2\SUB\n\
    \\bhostname\CAN\ETX \SOH(\tR\bhostname\SUB\146\SOH\n\
    \\DC1HealthCheckConfig\DC2(\n\
    \\n\
    \port_value\CAN\SOH \SOH(\rR\tportValueB\t\250B\ACK*\EOT\CAN\255\255\ETX\DC2\SUB\n\
    \\bhostname\CAN\STX \SOH(\tR\bhostname:7\154\197\136\RS2\n\
    \0envoy.api.v2.endpoint.Endpoint.HealthCheckConfig:%\154\197\136\RS \n\
    \\RSenvoy.api.v2.endpoint.Endpoint\"\145\ETX\n\
    \\n\
    \LbEndpoint\DC2@\n\
    \\bendpoint\CAN\SOH \SOH(\v2\".envoy.config.endpoint.v3.EndpointH\NULR\bendpoint\DC2%\n\
    \\rendpoint_name\CAN\ENQ \SOH(\tH\NULR\fendpointName\DC2G\n\
    \\rhealth_status\CAN\STX \SOH(\SO2\".envoy.config.core.v3.HealthStatusR\fhealthStatus\DC2:\n\
    \\bmetadata\CAN\ETX \SOH(\v2\RS.envoy.config.core.v3.MetadataR\bmetadata\DC2Y\n\
    \\NAKload_balancing_weight\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC3loadBalancingWeightB\a\250B\EOT*\STX(\SOHB\DC1\n\
    \\SIhost_identifier:'\154\197\136\RS\"\n\
    \ envoy.api.v2.endpoint.LbEndpoint\"\137\ETX\n\
    \\DC3LocalityLbEndpoints\DC2:\n\
    \\blocality\CAN\SOH \SOH(\v2\RS.envoy.config.core.v3.LocalityR\blocality\DC2G\n\
    \\flb_endpoints\CAN\STX \ETX(\v2$.envoy.config.endpoint.v3.LbEndpointR\vlbEndpoints\DC2Y\n\
    \\NAKload_balancing_weight\CAN\ETX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC3loadBalancingWeightB\a\250B\EOT*\STX(\SOH\DC2$\n\
    \\bpriority\CAN\ENQ \SOH(\rR\bpriorityB\b\250B\ENQ*\ETX\CAN\128\SOH\DC2:\n\
    \\tproximity\CAN\ACK \SOH(\v2\FS.google.protobuf.UInt32ValueR\tproximity:0\154\197\136\RS+\n\
    \)envoy.api.v2.endpoint.LocalityLbEndpointsBK\n\
    \&io.envoyproxy.envoy.config.endpoint.v3B\ETBEndpointComponentsProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\234\&2\n\
    \\a\DC2\ENQ\NUL\NUL\156\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL!\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL,\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL1\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL(\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL'\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL+\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\f\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL?\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\SO\NUL?\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL8\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SI\NUL8\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DLE\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC1\NULF\n\
    \G\n\
    \\STX\EOT\NUL\DC2\EOT\SYN\NULG\SOH\SUB\ESC Upstream host identifier.\n\
    \2\RS [#protodoc-title: Endpoints]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SYN\b\DLE\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\ETB\STX`\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\ETB\STX`\n\
    \8\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\SUB\STX,\ETX\SUB* The optional health check configuration.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\SUB\n\
    \\ESC\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT\ESC\EOT\FS;\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT\ESC\EOT\FS;\n\
    \\201\STX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX$\EOTC\SUB\185\STX Optional alternative health check port value.\n\
    \\n\
    \ By default the health check address port of an upstream host is the same\n\
    \ as the host's serving address port. This provides an alternative health\n\
    \ check port. Setting this with a non-zero value allows an upstream host\n\
    \ to have different health check address port.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX$\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX$\v\NAK\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX$\CAN\EM\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\b\DC2\ETX$\SUBB\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\NUL\b\175\b\ENQ\DC2\ETX$\ESCA\n\
    \\152\ETX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX+\EOT\CAN\SUB\136\ETX By default, the host header for L7 health checks is controlled by cluster level configuration\n\
    \ (see: :ref:`host <envoy_v3_api_field_config.core.v3.HealthCheck.HttpHealthCheck.host>` and\n\
    \ :ref:`authority <envoy_v3_api_field_config.core.v3.HealthCheck.GrpcHealthCheck.authority>`). Setting this\n\
    \ to a non-empty value allows overriding the cluster level configuration for a specific\n\
    \ endpoint.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETX+\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX+\v\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX+\SYN\ETB\n\
    \\166\ETX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX7\STX\RS\SUB\152\ETX The upstream host address.\n\
    \\n\
    \ .. attention::\n\
    \\n\
    \   The form of host address depends on the given cluster type. For STATIC or EDS,\n\
    \   it is expected to be a direct IP address (or something resolvable by the\n\
    \   specified :ref:`resolver <envoy_v3_api_field_config.core.v3.SocketAddress.resolver_name>`\n\
    \   in the Address). For LOGICAL or STRICT DNS, it is expected to be hostname,\n\
    \   and will be resolved via DNS.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX7\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX7\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX7\FS\GS\n\
    \\162\STX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX@\STX,\SUB\148\STX The optional health check configuration is used as configuration for the\n\
    \ health checker to contact the health checked host.\n\
    \\n\
    \ .. attention::\n\
    \\n\
    \   This takes into effect only for upstream clusters with\n\
    \   :ref:`active health checking <arch_overview_health_checking>` enabled.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX@\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX@\DC4'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX@*+\n\
    \\201\STX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXF\STX\SYN\SUB\187\STX The hostname associated with this endpoint. This hostname is not used for routing or address\n\
    \ resolution. If provided, it will be associated with the endpoint, and can be used for features\n\
    \ that require a hostname, like\n\
    \ :ref:`auto_host_rewrite <envoy_v3_api_field_config.route.v3.RouteAction.auto_host_rewrite>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETXF\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXF\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXF\DC4\NAK\n\
    \Q\n\
    \\STX\EOT\SOH\DC2\EOTK\NULl\SOH\SUBE An Endpoint that Envoy can route traffic to.\n\
    \ [#next-free-field: 6]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXK\b\DC2\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETXL\STXb\n\
    \\SI\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\ETXL\STXb\n\
    \>\n\
    \\EOT\EOT\SOH\b\NUL\DC2\EOTO\STXT\ETX\SUB0 Upstream host identifier or a named reference.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\ETXO\b\ETB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXP\EOT\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXP\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXP\r\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXP\CAN\EM\n\
    \'\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXS\EOT\GS\SUB\SUB [#not-implemented-hide:]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETXS\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXS\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXS\ESC\FS\n\
    \L\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETXW\STX)\SUB? Optional health status when known and supplied by EDS server.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETXW\STX\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETXW\ETB$\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETXW'(\n\
    \\243\ETX\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX`\STX \SUB\229\ETX The endpoint metadata specifies values that may be used by the load\n\
    \ balancer to select endpoints in a cluster for a given request. The filter\n\
    \ name should be specified as *envoy.lb*. An example boolean key-value pair\n\
    \ is *canary*, providing the optional canary status of the upstream host.\n\
    \ This may be matched against in a route's\n\
    \ :ref:`RouteAction <envoy_v3_api_msg_config.route.v3.RouteAction>` metadata_match field\n\
    \ to subset the endpoints considered in cluster load balancing.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\ETX`\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX`\DC3\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX`\RS\US\n\
    \\145\ENQ\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETXk\STX]\SUB\131\ENQ The optional load balancing weight of the upstream host; at least 1.\n\
    \ Envoy uses the load balancing weight in some of the built in load\n\
    \ balancers. The load balancing weight for an endpoint is divided by the sum\n\
    \ of the weights of all endpoints in the endpoint's locality to produce a\n\
    \ percentage of traffic for the endpoint. This percentage is then further\n\
    \ weighted by the endpoint's locality's load balancing weight from\n\
    \ LocalityLbEndpoints. If unspecified, each host is presumed to have equal\n\
    \ weight in a locality. The sum of the weights of all endpoints in the\n\
    \ endpoint's locality must not exceed uint32_t maximal value (4294967295).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ACK\DC2\ETXk\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETXk\RS3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETXk67\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\b\DC2\ETXk8\\\n\
    \\SI\n\
    \\b\EOT\SOH\STX\EOT\b\175\b\ENQ\DC2\ETXk9[\n\
    \\144\STX\n\
    \\STX\EOT\STX\DC2\ENQs\NUL\156\SOH\SOH\SUB\130\STX A group of endpoints belonging to a Locality.\n\
    \ One can have multiple LocalityLbEndpoints for a locality, but this is\n\
    \ generally only done if the different groups need to have different load\n\
    \ balancing weights or different priorities.\n\
    \ [#next-free-field: 7]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXs\b\ESC\n\
    \\v\n\
    \\ETX\EOT\STX\a\DC2\EOTt\STXu2\n\
    \\DLE\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\EOTt\STXu2\n\
    \C\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXx\STX \SUB6 Identifies location of where the upstream hosts run.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETXx\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXx\DC3\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXx\RS\US\n\
    \J\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX{\STX'\SUB= The group of endpoints belonging to the locality specified.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX{\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX{\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX{\SYN\"\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX{%&\n\
    \\186\ENQ\n\
    \\EOT\EOT\STX\STX\STX\DC2\EOT\136\SOH\STX]\SUB\171\ENQ Optional: Per priority/region/zone/sub_zone weight; at least 1. The load\n\
    \ balancing weight for a locality is divided by the sum of the weights of all\n\
    \ localities  at the same priority level to produce the effective percentage\n\
    \ of traffic for the locality. The sum of the weights of all localities at\n\
    \ the same priority level must not exceed uint32_t maximal value (4294967295).\n\
    \\n\
    \ Locality weights are only considered when :ref:`locality weighted load\n\
    \ balancing <arch_overview_load_balancing_locality_weighted_lb>` is\n\
    \ configured. These weights are ignored otherwise. If no weights are\n\
    \ specified when locality weighted load balancing is enabled, the locality is\n\
    \ assigned no load.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\EOT\136\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\EOT\136\SOH\RS3\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\EOT\136\SOH67\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\b\DC2\EOT\136\SOH8\\\n\
    \\DLE\n\
    \\b\EOT\STX\STX\STX\b\175\b\ENQ\DC2\EOT\136\SOH9[\n\
    \\207\ETX\n\
    \\EOT\EOT\STX\STX\ETX\DC2\EOT\147\SOH\STX=\SUB\192\ETX Optional: the priority for this LocalityLbEndpoints. If unspecified this will\n\
    \ default to the highest priority (0).\n\
    \\n\
    \ Under usual circumstances, Envoy will only select endpoints for the highest\n\
    \ priority (0). In the event all endpoints for a particular priority are\n\
    \ unavailable/unhealthy, Envoy will fail over to selecting endpoints for the\n\
    \ next highest priority group.\n\
    \\n\
    \ Priorities should range from 0 (highest) to N (lowest) without skipping.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\EOT\147\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\EOT\147\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\EOT\147\SOH\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\b\DC2\EOT\147\SOH\SYN<\n\
    \\DLE\n\
    \\b\EOT\STX\STX\ETX\b\175\b\ENQ\DC2\EOT\147\SOH\ETB;\n\
    \\244\STX\n\
    \\EOT\EOT\STX\STX\EOT\DC2\EOT\155\SOH\STX,\SUB\229\STX Optional: Per locality proximity value which indicates how close this\n\
    \ locality is from the source locality. This value only provides ordering\n\
    \ information (lower the value, closer it is to the source locality).\n\
    \ This will be consumed by load balancing schemes that need proximity order\n\
    \ to determine where to route the requests.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\ACK\DC2\EOT\155\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\EOT\155\SOH\RS'\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\EOT\155\SOH*+b\ACKproto3"