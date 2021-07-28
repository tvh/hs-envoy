{- This file was auto-generated from envoy/config/ratelimit/v3/rls.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Ratelimit.V3.Rls (
        RateLimitServiceConfig()
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
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Ratelimit.V3.Rls_Fields.grpcService' @:: Lens' RateLimitServiceConfig Proto.Envoy.Config.Core.V3.GrpcService.GrpcService@
         * 'Proto.Envoy.Config.Ratelimit.V3.Rls_Fields.maybe'grpcService' @:: Lens' RateLimitServiceConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService)@
         * 'Proto.Envoy.Config.Ratelimit.V3.Rls_Fields.transportApiVersion' @:: Lens' RateLimitServiceConfig Proto.Envoy.Config.Core.V3.ConfigSource.ApiVersion@ -}
data RateLimitServiceConfig
  = RateLimitServiceConfig'_constructor {_RateLimitServiceConfig'grpcService :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService),
                                         _RateLimitServiceConfig'transportApiVersion :: !Proto.Envoy.Config.Core.V3.ConfigSource.ApiVersion,
                                         _RateLimitServiceConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RateLimitServiceConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RateLimitServiceConfig "grpcService" Proto.Envoy.Config.Core.V3.GrpcService.GrpcService where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitServiceConfig'grpcService
           (\ x__ y__ -> x__ {_RateLimitServiceConfig'grpcService = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RateLimitServiceConfig "maybe'grpcService" (Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitServiceConfig'grpcService
           (\ x__ y__ -> x__ {_RateLimitServiceConfig'grpcService = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimitServiceConfig "transportApiVersion" Proto.Envoy.Config.Core.V3.ConfigSource.ApiVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitServiceConfig'transportApiVersion
           (\ x__ y__
              -> x__ {_RateLimitServiceConfig'transportApiVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Message RateLimitServiceConfig where
  messageName _
    = Data.Text.pack "envoy.config.ratelimit.v3.RateLimitServiceConfig"
  packedMessageDescriptor _
    = "\n\
      \\SYNRateLimitServiceConfig\DC2N\n\
      \\fgrpc_service\CAN\STX \SOH(\v2!.envoy.config.core.v3.GrpcServiceR\vgrpcServiceB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2^\n\
      \\NAKtransport_api_version\CAN\EOT \SOH(\SO2 .envoy.config.core.v3.ApiVersionR\DC3transportApiVersionB\b\250B\ENQ\130\SOH\STX\DLE\SOH:7\154\197\136\RS2\n\
      \0envoy.config.ratelimit.v2.RateLimitServiceConfigJ\EOT\b\SOH\DLE\STXJ\EOT\b\ETX\DLE\EOT"
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
              Data.ProtoLens.FieldDescriptor RateLimitServiceConfig
        transportApiVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "transport_api_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.ConfigSource.ApiVersion)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"transportApiVersion")) ::
              Data.ProtoLens.FieldDescriptor RateLimitServiceConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, grpcService__field_descriptor),
           (Data.ProtoLens.Tag 4, transportApiVersion__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RateLimitServiceConfig'_unknownFields
        (\ x__ y__ -> x__ {_RateLimitServiceConfig'_unknownFields = y__})
  defMessage
    = RateLimitServiceConfig'_constructor
        {_RateLimitServiceConfig'grpcService = Prelude.Nothing,
         _RateLimitServiceConfig'transportApiVersion = Data.ProtoLens.fieldDefault,
         _RateLimitServiceConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RateLimitServiceConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser RateLimitServiceConfig
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
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "grpc_service"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"grpcService") y x)
                        32
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RateLimitServiceConfig"
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
                         (Data.ProtoLens.Field.field @"transportApiVersion") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData RateLimitServiceConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RateLimitServiceConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RateLimitServiceConfig'grpcService x__)
                (Control.DeepSeq.deepseq
                   (_RateLimitServiceConfig'transportApiVersion x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \#envoy/config/ratelimit/v3/rls.proto\DC2\EMenvoy.config.ratelimit.v3\SUB(envoy/config/core/v3/config_source.proto\SUB'envoy/config/core/v3/grpc_service.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\141\STX\n\
    \\SYNRateLimitServiceConfig\DC2N\n\
    \\fgrpc_service\CAN\STX \SOH(\v2!.envoy.config.core.v3.GrpcServiceR\vgrpcServiceB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2^\n\
    \\NAKtransport_api_version\CAN\EOT \SOH(\SO2 .envoy.config.core.v3.ApiVersionR\DC3transportApiVersionB\b\250B\ENQ\130\SOH\STX\DLE\SOH:7\154\197\136\RS2\n\
    \0envoy.config.ratelimit.v2.RateLimitServiceConfigJ\EOT\b\SOH\DLE\STXJ\EOT\b\ETX\DLE\EOTB=\n\
    \'io.envoyproxy.envoy.config.ratelimit.v3B\bRlsProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\137\a\n\
    \\ACK\DC2\EOT\NUL\NUL!\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\"\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL2\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL1\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL+\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL@\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NUL@\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL)\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL)\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\r\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SO\NULF\n\
    \|\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NUL!\SOH\SUBG Rate limit :ref:`configuration overview <config_rate_limit_service>`.\n\
    \2' [#protodoc-title: Rate limit service]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b\RS\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\DC4\STX\NAK9\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\DC4\STX\NAK9\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\t\DC2\ETX\ETB\STX\DLE\n\
    \\v\n\
    \\EOT\EOT\NUL\t\NUL\DC2\ETX\ETB\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\SOH\DC2\ETX\ETB\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\STX\DC2\ETX\ETB\v\f\n\
    \\v\n\
    \\EOT\EOT\NUL\t\SOH\DC2\ETX\ETB\SO\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\SOH\SOH\DC2\ETX\ETB\SO\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\SOH\STX\DC2\ETX\ETB\SO\SI\n\
    \\170\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\FS\STXU\SUB\156\SOH Specifies the gRPC service that hosts the rate limit service. The client\n\
    \ will connect to this cluster when it needs to make rate limit service\n\
    \ requests.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\FS\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\FS\SYN\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\FS%&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\FS'T\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DC1\DC2\ETX\FS(S\n\
    \\149\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX \STX^\SUB\135\SOH API version for rate limit transport protocol. This describes the rate limit gRPC endpoint and\n\
    \ version of messages used on the wire.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX \STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX \NAK*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX -.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX /]\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DLE\DC2\ETX 0\\b\ACKproto3"