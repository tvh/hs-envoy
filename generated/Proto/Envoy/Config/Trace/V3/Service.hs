{- This file was auto-generated from envoy/config/trace/v3/service.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Trace.V3.Service (
        TraceServiceConfig()
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
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Trace.V3.Service_Fields.grpcService' @:: Lens' TraceServiceConfig Proto.Envoy.Config.Core.V3.GrpcService.GrpcService@
         * 'Proto.Envoy.Config.Trace.V3.Service_Fields.maybe'grpcService' @:: Lens' TraceServiceConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService)@ -}
data TraceServiceConfig
  = TraceServiceConfig'_constructor {_TraceServiceConfig'grpcService :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService),
                                     _TraceServiceConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TraceServiceConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TraceServiceConfig "grpcService" Proto.Envoy.Config.Core.V3.GrpcService.GrpcService where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceServiceConfig'grpcService
           (\ x__ y__ -> x__ {_TraceServiceConfig'grpcService = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TraceServiceConfig "maybe'grpcService" (Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceServiceConfig'grpcService
           (\ x__ y__ -> x__ {_TraceServiceConfig'grpcService = y__}))
        Prelude.id
instance Data.ProtoLens.Message TraceServiceConfig where
  messageName _
    = Data.Text.pack "envoy.config.trace.v3.TraceServiceConfig"
  packedMessageDescriptor _
    = "\n\
      \\DC2TraceServiceConfig\DC2N\n\
      \\fgrpc_service\CAN\SOH \SOH(\v2!.envoy.config.core.v3.GrpcServiceR\vgrpcServiceB\b\250B\ENQ\138\SOH\STX\DLE\SOH:/\154\197\136\RS*\n\
      \(envoy.config.trace.v2.TraceServiceConfig"
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
              Data.ProtoLens.FieldDescriptor TraceServiceConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, grpcService__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TraceServiceConfig'_unknownFields
        (\ x__ y__ -> x__ {_TraceServiceConfig'_unknownFields = y__})
  defMessage
    = TraceServiceConfig'_constructor
        {_TraceServiceConfig'grpcService = Prelude.Nothing,
         _TraceServiceConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TraceServiceConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser TraceServiceConfig
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TraceServiceConfig"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData TraceServiceConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TraceServiceConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq (_TraceServiceConfig'grpcService x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \#envoy/config/trace/v3/service.proto\DC2\NAKenvoy.config.trace.v3\SUB'envoy/config/core/v3/grpc_service.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\149\SOH\n\
    \\DC2TraceServiceConfig\DC2N\n\
    \\fgrpc_service\CAN\SOH \SOH(\v2!.envoy.config.core.v3.GrpcServiceR\vgrpcServiceB\b\250B\ENQ\138\SOH\STX\DLE\SOH:/\154\197\136\RS*\n\
    \(envoy.config.trace.v2.TraceServiceConfigB=\n\
    \#io.envoyproxy.envoy.config.trace.v3B\fServiceProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\170\ETX\n\
    \\ACK\DC2\EOT\NUL\NUL\CAN\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL1\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL+\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL<\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\n\
    \\NUL<\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL-\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\v\NUL-\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\f\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \J\n\
    \\STX\EOT\NUL\DC2\EOT\DC2\NUL\CAN\SOH\SUB\SUB Configuration structure.\n\
    \2\" [#protodoc-title: Trace Service]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC2\b\SUB\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\DC3\STX\DC41\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\DC3\STX\DC41\n\
    \H\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ETB\STXU\SUB; The upstream gRPC cluster that hosts the metrics service.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\ETB\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ETB\SYN\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ETB%&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\ETB'T\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DC1\DC2\ETX\ETB(Sb\ACKproto3"