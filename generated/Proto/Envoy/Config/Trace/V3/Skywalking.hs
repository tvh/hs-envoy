{- This file was auto-generated from envoy/config/trace/v3/skywalking.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Trace.V3.Skywalking (
        ClientConfig(), ClientConfig'BackendTokenSpecifier(..),
        _ClientConfig'BackendToken, SkyWalkingConfig()
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
import qualified Proto.Envoy.Config.Core.V3.GrpcService
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Sensitive
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Trace.V3.Skywalking_Fields.serviceName' @:: Lens' ClientConfig Data.Text.Text@
         * 'Proto.Envoy.Config.Trace.V3.Skywalking_Fields.instanceName' @:: Lens' ClientConfig Data.Text.Text@
         * 'Proto.Envoy.Config.Trace.V3.Skywalking_Fields.maxCacheSize' @:: Lens' ClientConfig Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Trace.V3.Skywalking_Fields.maybe'maxCacheSize' @:: Lens' ClientConfig (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Trace.V3.Skywalking_Fields.maybe'backendTokenSpecifier' @:: Lens' ClientConfig (Prelude.Maybe ClientConfig'BackendTokenSpecifier)@
         * 'Proto.Envoy.Config.Trace.V3.Skywalking_Fields.maybe'backendToken' @:: Lens' ClientConfig (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Config.Trace.V3.Skywalking_Fields.backendToken' @:: Lens' ClientConfig Data.Text.Text@ -}
data ClientConfig
  = ClientConfig'_constructor {_ClientConfig'serviceName :: !Data.Text.Text,
                               _ClientConfig'instanceName :: !Data.Text.Text,
                               _ClientConfig'maxCacheSize :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                               _ClientConfig'backendTokenSpecifier :: !(Prelude.Maybe ClientConfig'BackendTokenSpecifier),
                               _ClientConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClientConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ClientConfig'BackendTokenSpecifier
  = ClientConfig'BackendToken !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ClientConfig "serviceName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientConfig'serviceName
           (\ x__ y__ -> x__ {_ClientConfig'serviceName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClientConfig "instanceName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientConfig'instanceName
           (\ x__ y__ -> x__ {_ClientConfig'instanceName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClientConfig "maxCacheSize" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientConfig'maxCacheSize
           (\ x__ y__ -> x__ {_ClientConfig'maxCacheSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClientConfig "maybe'maxCacheSize" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientConfig'maxCacheSize
           (\ x__ y__ -> x__ {_ClientConfig'maxCacheSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClientConfig "maybe'backendTokenSpecifier" (Prelude.Maybe ClientConfig'BackendTokenSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientConfig'backendTokenSpecifier
           (\ x__ y__ -> x__ {_ClientConfig'backendTokenSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClientConfig "maybe'backendToken" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientConfig'backendTokenSpecifier
           (\ x__ y__ -> x__ {_ClientConfig'backendTokenSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ClientConfig'BackendToken x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ClientConfig'BackendToken y__))
instance Data.ProtoLens.Field.HasField ClientConfig "backendToken" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClientConfig'backendTokenSpecifier
           (\ x__ y__ -> x__ {_ClientConfig'backendTokenSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ClientConfig'BackendToken x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ClientConfig'BackendToken y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message ClientConfig where
  messageName _ = Data.Text.pack "envoy.config.trace.v3.ClientConfig"
  packedMessageDescriptor _
    = "\n\
      \\fClientConfig\DC2!\n\
      \\fservice_name\CAN\SOH \SOH(\tR\vserviceName\DC2#\n\
      \\rinstance_name\CAN\STX \SOH(\tR\finstanceName\DC2-\n\
      \\rbackend_token\CAN\ETX \SOH(\tH\NULR\fbackendTokenB\ACK\184\183\139\164\STX\SOH\DC2B\n\
      \\SOmax_cache_size\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\fmaxCacheSizeB\EM\n\
      \\ETBbackend_token_specifier"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        serviceName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"serviceName")) ::
              Data.ProtoLens.FieldDescriptor ClientConfig
        instanceName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "instance_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"instanceName")) ::
              Data.ProtoLens.FieldDescriptor ClientConfig
        maxCacheSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_cache_size"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxCacheSize")) ::
              Data.ProtoLens.FieldDescriptor ClientConfig
        backendToken__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "backend_token"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'backendToken")) ::
              Data.ProtoLens.FieldDescriptor ClientConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, serviceName__field_descriptor),
           (Data.ProtoLens.Tag 2, instanceName__field_descriptor),
           (Data.ProtoLens.Tag 4, maxCacheSize__field_descriptor),
           (Data.ProtoLens.Tag 3, backendToken__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClientConfig'_unknownFields
        (\ x__ y__ -> x__ {_ClientConfig'_unknownFields = y__})
  defMessage
    = ClientConfig'_constructor
        {_ClientConfig'serviceName = Data.ProtoLens.fieldDefault,
         _ClientConfig'instanceName = Data.ProtoLens.fieldDefault,
         _ClientConfig'maxCacheSize = Prelude.Nothing,
         _ClientConfig'backendTokenSpecifier = Prelude.Nothing,
         _ClientConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClientConfig -> Data.ProtoLens.Encoding.Bytes.Parser ClientConfig
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
                                       "service_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"serviceName") y x)
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
                                       "instance_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"instanceName") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_cache_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxCacheSize") y x)
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
                                       "backend_token"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"backendToken") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ClientConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"serviceName") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"instanceName") _x
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
                          (Data.ProtoLens.Field.field @"maybe'maxCacheSize") _x
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
                             (Data.ProtoLens.Field.field @"maybe'backendTokenSpecifier") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just (ClientConfig'BackendToken v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
instance Control.DeepSeq.NFData ClientConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClientConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ClientConfig'serviceName x__)
                (Control.DeepSeq.deepseq
                   (_ClientConfig'instanceName x__)
                   (Control.DeepSeq.deepseq
                      (_ClientConfig'maxCacheSize x__)
                      (Control.DeepSeq.deepseq
                         (_ClientConfig'backendTokenSpecifier x__) ()))))
instance Control.DeepSeq.NFData ClientConfig'BackendTokenSpecifier where
  rnf (ClientConfig'BackendToken x__) = Control.DeepSeq.rnf x__
_ClientConfig'BackendToken ::
  Data.ProtoLens.Prism.Prism' ClientConfig'BackendTokenSpecifier Data.Text.Text
_ClientConfig'BackendToken
  = Data.ProtoLens.Prism.prism'
      ClientConfig'BackendToken
      (\ p__
         -> case p__ of {
              (ClientConfig'BackendToken p__val) -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.Envoy.Config.Trace.V3.Skywalking_Fields.grpcService' @:: Lens' SkyWalkingConfig Proto.Envoy.Config.Core.V3.GrpcService.GrpcService@
         * 'Proto.Envoy.Config.Trace.V3.Skywalking_Fields.maybe'grpcService' @:: Lens' SkyWalkingConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService)@
         * 'Proto.Envoy.Config.Trace.V3.Skywalking_Fields.clientConfig' @:: Lens' SkyWalkingConfig ClientConfig@
         * 'Proto.Envoy.Config.Trace.V3.Skywalking_Fields.maybe'clientConfig' @:: Lens' SkyWalkingConfig (Prelude.Maybe ClientConfig)@ -}
data SkyWalkingConfig
  = SkyWalkingConfig'_constructor {_SkyWalkingConfig'grpcService :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService),
                                   _SkyWalkingConfig'clientConfig :: !(Prelude.Maybe ClientConfig),
                                   _SkyWalkingConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SkyWalkingConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SkyWalkingConfig "grpcService" Proto.Envoy.Config.Core.V3.GrpcService.GrpcService where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SkyWalkingConfig'grpcService
           (\ x__ y__ -> x__ {_SkyWalkingConfig'grpcService = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SkyWalkingConfig "maybe'grpcService" (Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SkyWalkingConfig'grpcService
           (\ x__ y__ -> x__ {_SkyWalkingConfig'grpcService = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SkyWalkingConfig "clientConfig" ClientConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SkyWalkingConfig'clientConfig
           (\ x__ y__ -> x__ {_SkyWalkingConfig'clientConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SkyWalkingConfig "maybe'clientConfig" (Prelude.Maybe ClientConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SkyWalkingConfig'clientConfig
           (\ x__ y__ -> x__ {_SkyWalkingConfig'clientConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message SkyWalkingConfig where
  messageName _
    = Data.Text.pack "envoy.config.trace.v3.SkyWalkingConfig"
  packedMessageDescriptor _
    = "\n\
      \\DLESkyWalkingConfig\DC2N\n\
      \\fgrpc_service\CAN\SOH \SOH(\v2!.envoy.config.core.v3.GrpcServiceR\vgrpcServiceB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2H\n\
      \\rclient_config\CAN\STX \SOH(\v2#.envoy.config.trace.v3.ClientConfigR\fclientConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        grpcService__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grpc_service"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.GrpcService.GrpcService)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'grpcService")) ::
              Data.ProtoLens.FieldDescriptor SkyWalkingConfig
        clientConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "client_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ClientConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'clientConfig")) ::
              Data.ProtoLens.FieldDescriptor SkyWalkingConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, grpcService__field_descriptor),
           (Data.ProtoLens.Tag 2, clientConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SkyWalkingConfig'_unknownFields
        (\ x__ y__ -> x__ {_SkyWalkingConfig'_unknownFields = y__})
  defMessage
    = SkyWalkingConfig'_constructor
        {_SkyWalkingConfig'grpcService = Prelude.Nothing,
         _SkyWalkingConfig'clientConfig = Prelude.Nothing,
         _SkyWalkingConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SkyWalkingConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser SkyWalkingConfig
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
                                       "grpc_service"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"grpcService") y x)
                        18
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
          (do loop Data.ProtoLens.defMessage) "SkyWalkingConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'grpcService") _x
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
                       (Data.ProtoLens.Field.field @"maybe'clientConfig") _x
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
instance Control.DeepSeq.NFData SkyWalkingConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SkyWalkingConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SkyWalkingConfig'grpcService x__)
                (Control.DeepSeq.deepseq (_SkyWalkingConfig'clientConfig x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&envoy/config/trace/v3/skywalking.proto\DC2\NAKenvoy.config.trace.v3\SUB'envoy/config/core/v3/grpc_service.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\RSudpa/annotations/migrate.proto\SUB udpa/annotations/sensitive.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\172\SOH\n\
    \\DLESkyWalkingConfig\DC2N\n\
    \\fgrpc_service\CAN\SOH \SOH(\v2!.envoy.config.core.v3.GrpcServiceR\vgrpcServiceB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2H\n\
    \\rclient_config\CAN\STX \SOH(\v2#.envoy.config.trace.v3.ClientConfigR\fclientConfig\"\228\SOH\n\
    \\fClientConfig\DC2!\n\
    \\fservice_name\CAN\SOH \SOH(\tR\vserviceName\DC2#\n\
    \\rinstance_name\CAN\STX \SOH(\tR\finstanceName\DC2-\n\
    \\rbackend_token\CAN\ETX \SOH(\tH\NULR\fbackendTokenB\ACK\184\183\139\164\STX\SOH\DC2B\n\
    \\SOmax_cache_size\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\fmaxCacheSizeB\EM\n\
    \\ETBbackend_token_specifierBs\n\
    \#io.envoyproxy.envoy.config.trace.v3B\SISkywalkingProtoP\SOH\242\152\254\143\ENQ-\DC2+envoy.extensions.tracers.skywalking.v4alpha\186\128\200\209\ACK\STX\DLE\STXJ\245\DC4\n\
    \\ACK\DC2\EOT\NUL\NUL@\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL1\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL*\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL'\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL<\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\r\NUL<\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL0\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SO\NUL0\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SI\NUL\"\n\
    \\t\n\
    \\SOH\b\DC2\EOT\DLE\NUL\DC12\n\
    \\SO\n\
    \\ACK\b\142\227\255Q\STX\DC2\EOT\DLE\NUL\DC12\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC2\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC2\NULF\n\
    \\247\ETX\n\
    \\STX\EOT\NUL\DC2\EOT\FS\NUL!\SOH\SUB\194\ETX Configuration for the SkyWalking tracer. Please note that if SkyWalking tracer is used as the\n\
    \ provider of http tracer, then\n\
    \ :ref:`start_child_span <envoy_v3_api_field_extensions.filters.http.router.v3.Router.start_child_span>`\n\
    \ in the router must be set to true to get the correct topology and tracing data. Moreover, SkyWalking\n\
    \ Tracer does not support SkyWalking extension header (``sw8-x``) temporarily.\n\
    \ [#extension: envoy.tracers.skywalking]\n\
    \2& [#protodoc-title: SkyWalking tracer]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\FS\b\CAN\n\
    \,\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\RS\STXU\SUB\US SkyWalking collector service.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\RS\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\RS\SYN\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\RS%&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\RS'T\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DC1\DC2\ETX\RS(S\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX \STX!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX \STX\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX \SI\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX \US \n\
    \2\n\
    \\STX\EOT\SOH\DC2\EOT$\NUL@\SOH\SUB& Client config for SkyWalking tracer.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX$\b\DC4\n\
    \\213\ETX\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX*\STX\SUB\SUB\199\ETX Service name for SkyWalking tracer. If this field is empty, then local service cluster name\n\
    \ that configured by :ref:`Bootstrap node <envoy_v3_api_field_config.bootstrap.v3.Bootstrap.node>`\n\
    \ message's :ref:`cluster <envoy_v3_api_field_config.core.v3.Node.cluster>` field or command line\n\
    \ option :option:`--service-cluster` will be used. If both this field and local service cluster\n\
    \ name are empty, ``EnvoyProxy`` is used as the service name by default.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX*\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX*\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX*\CAN\EM\n\
    \\195\ETX\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX1\STX\ESC\SUB\181\ETX Service instance name for SkyWalking tracer. If this field is empty, then local service node\n\
    \ that configured by :ref:`Bootstrap node <envoy_v3_api_field_config.bootstrap.v3.Bootstrap.node>`\n\
    \ message's :ref:`id <envoy_v3_api_field_config.core.v3.Node.id>` field or command line  option\n\
    \ :option:`--service-node` will be used. If both this field and local service node are empty,\n\
    \ ``EnvoyProxy`` is used as the instance name by default.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX1\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX1\t\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX1\EM\SUB\n\
    \\159\STX\n\
    \\EOT\EOT\SOH\b\NUL\DC2\EOT7\STX:\ETX\SUB\144\STX Authentication token config for SkyWalking. SkyWalking can use token authentication to secure\n\
    \ that monitoring application data can be trusted. In current version, Token is considered as a\n\
    \ simple string.\n\
    \ [#comment:TODO(wbpcode): Get backend token through the SDS API.]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\ETX7\b\US\n\
    \2\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX9\EOTC\SUB% Inline authentication token string.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX9\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX9\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX9\ESC\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\b\DC2\ETX9\GSB\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\STX\b\247\182\193$\DC2\ETX9\RSA\n\
    \\227\SOH\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX?\STX1\SUB\213\SOH Envoy caches the segment in memory when the SkyWalking backend service is temporarily unavailable.\n\
    \ This field specifies the maximum number of segments that can be cached. If not specified, the\n\
    \ default is 1024.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\ETX?\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX?\RS,\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX?/0b\ACKproto3"