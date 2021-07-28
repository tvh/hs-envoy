{- This file was auto-generated from envoy/extensions/filters/network/ext_authz/v3/ext_authz.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Network.ExtAuthz.V3.ExtAuthz (
        ExtAuthz()
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
import qualified Proto.Envoy.Config.Core.V3.ConfigSource
import qualified Proto.Envoy.Config.Core.V3.GrpcService
import qualified Proto.Envoy.Type.Matcher.V3.Metadata
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.ExtAuthz.V3.ExtAuthz_Fields.statPrefix' @:: Lens' ExtAuthz Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.ExtAuthz.V3.ExtAuthz_Fields.grpcService' @:: Lens' ExtAuthz Proto.Envoy.Config.Core.V3.GrpcService.GrpcService@
         * 'Proto.Envoy.Extensions.Filters.Network.ExtAuthz.V3.ExtAuthz_Fields.maybe'grpcService' @:: Lens' ExtAuthz (Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService)@
         * 'Proto.Envoy.Extensions.Filters.Network.ExtAuthz.V3.ExtAuthz_Fields.failureModeAllow' @:: Lens' ExtAuthz Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.ExtAuthz.V3.ExtAuthz_Fields.includePeerCertificate' @:: Lens' ExtAuthz Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.ExtAuthz.V3.ExtAuthz_Fields.transportApiVersion' @:: Lens' ExtAuthz Proto.Envoy.Config.Core.V3.ConfigSource.ApiVersion@
         * 'Proto.Envoy.Extensions.Filters.Network.ExtAuthz.V3.ExtAuthz_Fields.filterEnabledMetadata' @:: Lens' ExtAuthz Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher@
         * 'Proto.Envoy.Extensions.Filters.Network.ExtAuthz.V3.ExtAuthz_Fields.maybe'filterEnabledMetadata' @:: Lens' ExtAuthz (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher)@
         * 'Proto.Envoy.Extensions.Filters.Network.ExtAuthz.V3.ExtAuthz_Fields.bootstrapMetadataLabelsKey' @:: Lens' ExtAuthz Data.Text.Text@ -}
data ExtAuthz
  = ExtAuthz'_constructor {_ExtAuthz'statPrefix :: !Data.Text.Text,
                           _ExtAuthz'grpcService :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService),
                           _ExtAuthz'failureModeAllow :: !Prelude.Bool,
                           _ExtAuthz'includePeerCertificate :: !Prelude.Bool,
                           _ExtAuthz'transportApiVersion :: !Proto.Envoy.Config.Core.V3.ConfigSource.ApiVersion,
                           _ExtAuthz'filterEnabledMetadata :: !(Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher),
                           _ExtAuthz'bootstrapMetadataLabelsKey :: !Data.Text.Text,
                           _ExtAuthz'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ExtAuthz where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ExtAuthz "statPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'statPrefix
           (\ x__ y__ -> x__ {_ExtAuthz'statPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtAuthz "grpcService" Proto.Envoy.Config.Core.V3.GrpcService.GrpcService where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'grpcService
           (\ x__ y__ -> x__ {_ExtAuthz'grpcService = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ExtAuthz "maybe'grpcService" (Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'grpcService
           (\ x__ y__ -> x__ {_ExtAuthz'grpcService = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtAuthz "failureModeAllow" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'failureModeAllow
           (\ x__ y__ -> x__ {_ExtAuthz'failureModeAllow = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtAuthz "includePeerCertificate" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'includePeerCertificate
           (\ x__ y__ -> x__ {_ExtAuthz'includePeerCertificate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtAuthz "transportApiVersion" Proto.Envoy.Config.Core.V3.ConfigSource.ApiVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'transportApiVersion
           (\ x__ y__ -> x__ {_ExtAuthz'transportApiVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtAuthz "filterEnabledMetadata" Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'filterEnabledMetadata
           (\ x__ y__ -> x__ {_ExtAuthz'filterEnabledMetadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ExtAuthz "maybe'filterEnabledMetadata" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'filterEnabledMetadata
           (\ x__ y__ -> x__ {_ExtAuthz'filterEnabledMetadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtAuthz "bootstrapMetadataLabelsKey" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtAuthz'bootstrapMetadataLabelsKey
           (\ x__ y__ -> x__ {_ExtAuthz'bootstrapMetadataLabelsKey = y__}))
        Prelude.id
instance Data.ProtoLens.Message ExtAuthz where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.ext_authz.v3.ExtAuthz"
  packedMessageDescriptor _
    = "\n\
      \\bExtAuthz\DC2(\n\
      \\vstat_prefix\CAN\SOH \SOH(\tR\n\
      \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2D\n\
      \\fgrpc_service\CAN\STX \SOH(\v2!.envoy.config.core.v3.GrpcServiceR\vgrpcService\DC2,\n\
      \\DC2failure_mode_allow\CAN\ETX \SOH(\bR\DLEfailureModeAllow\DC28\n\
      \\CANinclude_peer_certificate\CAN\EOT \SOH(\bR\SYNincludePeerCertificate\DC2^\n\
      \\NAKtransport_api_version\CAN\ENQ \SOH(\SO2 .envoy.config.core.v3.ApiVersionR\DC3transportApiVersionB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2^\n\
      \\ETBfilter_enabled_metadata\CAN\ACK \SOH(\v2&.envoy.type.matcher.v3.MetadataMatcherR\NAKfilterEnabledMetadata\DC2A\n\
      \\GSbootstrap_metadata_labels_key\CAN\a \SOH(\tR\SUBbootstrapMetadataLabelsKey:8\154\197\136\RS3\n\
      \1envoy.config.filter.network.ext_authz.v2.ExtAuthz"
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
              Data.ProtoLens.FieldDescriptor ExtAuthz
        grpcService__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grpc_service"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.GrpcService.GrpcService)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'grpcService")) ::
              Data.ProtoLens.FieldDescriptor ExtAuthz
        failureModeAllow__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure_mode_allow"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"failureModeAllow")) ::
              Data.ProtoLens.FieldDescriptor ExtAuthz
        includePeerCertificate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "include_peer_certificate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"includePeerCertificate")) ::
              Data.ProtoLens.FieldDescriptor ExtAuthz
        transportApiVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "transport_api_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.ConfigSource.ApiVersion)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"transportApiVersion")) ::
              Data.ProtoLens.FieldDescriptor ExtAuthz
        filterEnabledMetadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "filter_enabled_metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.Metadata.MetadataMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'filterEnabledMetadata")) ::
              Data.ProtoLens.FieldDescriptor ExtAuthz
        bootstrapMetadataLabelsKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bootstrap_metadata_labels_key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bootstrapMetadataLabelsKey")) ::
              Data.ProtoLens.FieldDescriptor ExtAuthz
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, statPrefix__field_descriptor),
           (Data.ProtoLens.Tag 2, grpcService__field_descriptor),
           (Data.ProtoLens.Tag 3, failureModeAllow__field_descriptor),
           (Data.ProtoLens.Tag 4, includePeerCertificate__field_descriptor),
           (Data.ProtoLens.Tag 5, transportApiVersion__field_descriptor),
           (Data.ProtoLens.Tag 6, filterEnabledMetadata__field_descriptor),
           (Data.ProtoLens.Tag 7, 
            bootstrapMetadataLabelsKey__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ExtAuthz'_unknownFields
        (\ x__ y__ -> x__ {_ExtAuthz'_unknownFields = y__})
  defMessage
    = ExtAuthz'_constructor
        {_ExtAuthz'statPrefix = Data.ProtoLens.fieldDefault,
         _ExtAuthz'grpcService = Prelude.Nothing,
         _ExtAuthz'failureModeAllow = Data.ProtoLens.fieldDefault,
         _ExtAuthz'includePeerCertificate = Data.ProtoLens.fieldDefault,
         _ExtAuthz'transportApiVersion = Data.ProtoLens.fieldDefault,
         _ExtAuthz'filterEnabledMetadata = Prelude.Nothing,
         _ExtAuthz'bootstrapMetadataLabelsKey = Data.ProtoLens.fieldDefault,
         _ExtAuthz'_unknownFields = []}
  parseMessage
    = let
        loop :: ExtAuthz -> Data.ProtoLens.Encoding.Bytes.Parser ExtAuthz
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
                                       "grpc_service"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"grpcService") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "failure_mode_allow"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"failureModeAllow") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "include_peer_certificate"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"includePeerCertificate") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "transport_api_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"transportApiVersion") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "filter_enabled_metadata"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"filterEnabledMetadata") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "bootstrap_metadata_labels_key"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"bootstrapMetadataLabelsKey") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ExtAuthz"
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
                       (Data.ProtoLens.Field.field @"maybe'grpcService") _x
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
                            (Data.ProtoLens.Field.field @"failureModeAllow") _x
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
                               (Data.ProtoLens.Field.field @"includePeerCertificate") _x
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
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"transportApiVersion") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        Prelude.fromIntegral)
                                     Prelude.fromEnum
                                     _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'filterEnabledMetadata") _x
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
                                        (Data.ProtoLens.Field.field @"bootstrapMetadataLabelsKey")
                                        _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                        ((Prelude..)
                                           (\ bs
                                              -> (Data.Monoid.<>)
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                      (Prelude.fromIntegral
                                                         (Data.ByteString.length bs)))
                                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                           Data.Text.Encoding.encodeUtf8
                                           _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData ExtAuthz where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ExtAuthz'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ExtAuthz'statPrefix x__)
                (Control.DeepSeq.deepseq
                   (_ExtAuthz'grpcService x__)
                   (Control.DeepSeq.deepseq
                      (_ExtAuthz'failureModeAllow x__)
                      (Control.DeepSeq.deepseq
                         (_ExtAuthz'includePeerCertificate x__)
                         (Control.DeepSeq.deepseq
                            (_ExtAuthz'transportApiVersion x__)
                            (Control.DeepSeq.deepseq
                               (_ExtAuthz'filterEnabledMetadata x__)
                               (Control.DeepSeq.deepseq
                                  (_ExtAuthz'bootstrapMetadataLabelsKey x__) ())))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \=envoy/extensions/filters/network/ext_authz/v3/ext_authz.proto\DC2-envoy.extensions.filters.network.ext_authz.v3\SUB(envoy/config/core/v3/config_source.proto\SUB'envoy/config/core/v3/grpc_service.proto\SUB$envoy/type/matcher/v3/metadata.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\159\EOT\n\
    \\bExtAuthz\DC2(\n\
    \\vstat_prefix\CAN\SOH \SOH(\tR\n\
    \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2D\n\
    \\fgrpc_service\CAN\STX \SOH(\v2!.envoy.config.core.v3.GrpcServiceR\vgrpcService\DC2,\n\
    \\DC2failure_mode_allow\CAN\ETX \SOH(\bR\DLEfailureModeAllow\DC28\n\
    \\CANinclude_peer_certificate\CAN\EOT \SOH(\bR\SYNincludePeerCertificate\DC2^\n\
    \\NAKtransport_api_version\CAN\ENQ \SOH(\SO2 .envoy.config.core.v3.ApiVersionR\DC3transportApiVersionB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2^\n\
    \\ETBfilter_enabled_metadata\CAN\ACK \SOH(\v2&.envoy.type.matcher.v3.MetadataMatcherR\NAKfilterEnabledMetadata\DC2A\n\
    \\GSbootstrap_metadata_labels_key\CAN\a \SOH(\tR\SUBbootstrapMetadataLabelsKey:8\154\197\136\RS3\n\
    \1envoy.config.filter.network.ext_authz.v2.ExtAuthzBV\n\
    \;io.envoyproxy.envoy.extensions.filters.network.ext_authz.v3B\rExtAuthzProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\164\DC3\n\
    \\ACK\DC2\EOT\NUL\NUL?\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL6\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL2\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL1\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL.\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL'\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL+\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\n\
    \\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULT\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NULT\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL.\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL.\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SO\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SI\NULF\n\
    \\131\EOT\n\
    \\STX\EOT\NUL\DC2\EOT\ESC\NUL?\SOH\SUB\141\STX External Authorization filter calls out to an external service over the\n\
    \ gRPC Authorization API defined by\n\
    \ :ref:`CheckRequest <envoy_v3_api_msg_service.auth.v3.CheckRequest>`.\n\
    \ A failed check will cause this filter to close the TCP connection.\n\
    \ [#next-free-field: 8]\n\
    \2\230\SOH [#protodoc-title: Network External Authorization ]\n\
    \ The network layer external authorization service configuration\n\
    \ :ref:`configuration overview <config_network_filters_ext_authz>`.\n\
    \ [#extension: envoy.filters.network.ext_authz]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ESC\b\DLE\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\FS\STX\GS:\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\FS\STX\GS:\n\
    \:\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX \STXB\SUB- The prefix to use when emitting statistics.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX \STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX \t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX \ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX \EMA\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX \SUB@\n\
    \z\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX$\STX.\SUBm The external authorization gRPC service configuration.\n\
    \ The default timeout is set to 200ms by this filter.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX$\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX$\GS)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX$,-\n\
    \\130\STX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX*\STX\RS\SUB\244\SOH The filter's behaviour in case the external authorization service does\n\
    \ not respond back. When it is set to true, Envoy will also allow traffic in case of\n\
    \ communication failure between authorization service and the proxy.\n\
    \ Defaults to false.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX*\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX*\a\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX*\FS\GS\n\
    \\140\STX\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX0\STX$\SUB\254\SOH Specifies if the peer certificate is sent to the external service.\n\
    \\n\
    \ When this field is true, Envoy will include the peer X.509 certificate, if available, in the\n\
    \ :ref:`certificate<envoy_v3_api_field_service.auth.v3.AttributeContext.Peer.certificate>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX0\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX0\a\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX0\"#\n\
    \\163\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\EOT4\STX55\SUB\148\SOH API version for ext_authz transport protocol. This describes the ext_authz gRPC endpoint and\n\
    \ version of Check{Request,Response} used on the wire.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX4\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX4\FS1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX445\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\ETX5\ACK4\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\175\b\DLE\DC2\ETX5\a3\n\
    \\151\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX9\STX>\SUB\137\SOH Specifies if the filter is enabled with metadata matcher.\n\
    \ If this field is not specified, the filter will be enabled for all requests.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX9\STX!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX9\"9\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX9<=\n\
    \\202\STX\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX>\STX+\SUB\188\STX Optional labels that will be passed to :ref:`labels<envoy_v3_api_field_service.auth.v3.AttributeContext.Peer.labels>` in\n\
    \ :ref:`destination<envoy_v3_api_field_service.auth.v3.AttributeContext.destination>`.\n\
    \ The labels will be read from :ref:`metadata<envoy_v3_api_msg_config.core.v3.Node>` with the specified key.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETX>\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX>\t&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX>)*b\ACKproto3"