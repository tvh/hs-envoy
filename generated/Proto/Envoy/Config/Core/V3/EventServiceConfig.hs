{- This file was auto-generated from envoy/config/core/v3/event_service_config.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Core.V3.EventServiceConfig (
        EventServiceConfig(), EventServiceConfig'ConfigSourceSpecifier(..),
        _EventServiceConfig'GrpcService
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
     
         * 'Proto.Envoy.Config.Core.V3.EventServiceConfig_Fields.maybe'configSourceSpecifier' @:: Lens' EventServiceConfig (Prelude.Maybe EventServiceConfig'ConfigSourceSpecifier)@
         * 'Proto.Envoy.Config.Core.V3.EventServiceConfig_Fields.maybe'grpcService' @:: Lens' EventServiceConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService)@
         * 'Proto.Envoy.Config.Core.V3.EventServiceConfig_Fields.grpcService' @:: Lens' EventServiceConfig Proto.Envoy.Config.Core.V3.GrpcService.GrpcService@ -}
data EventServiceConfig
  = EventServiceConfig'_constructor {_EventServiceConfig'configSourceSpecifier :: !(Prelude.Maybe EventServiceConfig'ConfigSourceSpecifier),
                                     _EventServiceConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventServiceConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data EventServiceConfig'ConfigSourceSpecifier
  = EventServiceConfig'GrpcService !Proto.Envoy.Config.Core.V3.GrpcService.GrpcService
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField EventServiceConfig "maybe'configSourceSpecifier" (Prelude.Maybe EventServiceConfig'ConfigSourceSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventServiceConfig'configSourceSpecifier
           (\ x__ y__
              -> x__ {_EventServiceConfig'configSourceSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventServiceConfig "maybe'grpcService" (Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventServiceConfig'configSourceSpecifier
           (\ x__ y__
              -> x__ {_EventServiceConfig'configSourceSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (EventServiceConfig'GrpcService x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap EventServiceConfig'GrpcService y__))
instance Data.ProtoLens.Field.HasField EventServiceConfig "grpcService" Proto.Envoy.Config.Core.V3.GrpcService.GrpcService where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventServiceConfig'configSourceSpecifier
           (\ x__ y__
              -> x__ {_EventServiceConfig'configSourceSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (EventServiceConfig'GrpcService x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap EventServiceConfig'GrpcService y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message EventServiceConfig where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.EventServiceConfig"
  packedMessageDescriptor _
    = "\n\
      \\DC2EventServiceConfig\DC2F\n\
      \\fgrpc_service\CAN\SOH \SOH(\v2!.envoy.config.core.v3.GrpcServiceH\NULR\vgrpcServiceB\RS\n\
      \\ETBconfig_source_specifier\DC2\ETX\248B\SOH:+\154\197\136\RS&\n\
      \$envoy.api.v2.core.EventServiceConfig"
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
              Data.ProtoLens.FieldDescriptor EventServiceConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, grpcService__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventServiceConfig'_unknownFields
        (\ x__ y__ -> x__ {_EventServiceConfig'_unknownFields = y__})
  defMessage
    = EventServiceConfig'_constructor
        {_EventServiceConfig'configSourceSpecifier = Prelude.Nothing,
         _EventServiceConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventServiceConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser EventServiceConfig
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
          (do loop Data.ProtoLens.defMessage) "EventServiceConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'configSourceSpecifier") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (EventServiceConfig'GrpcService v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
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
instance Control.DeepSeq.NFData EventServiceConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventServiceConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventServiceConfig'configSourceSpecifier x__) ())
instance Control.DeepSeq.NFData EventServiceConfig'ConfigSourceSpecifier where
  rnf (EventServiceConfig'GrpcService x__) = Control.DeepSeq.rnf x__
_EventServiceConfig'GrpcService ::
  Data.ProtoLens.Prism.Prism' EventServiceConfig'ConfigSourceSpecifier Proto.Envoy.Config.Core.V3.GrpcService.GrpcService
_EventServiceConfig'GrpcService
  = Data.ProtoLens.Prism.prism'
      EventServiceConfig'GrpcService
      (\ p__
         -> case p__ of {
              (EventServiceConfig'GrpcService p__val) -> Prelude.Just p__val })
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \/envoy/config/core/v3/event_service_config.proto\DC2\DC4envoy.config.core.v3\SUB'envoy/config/core/v3/grpc_service.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\169\SOH\n\
    \\DC2EventServiceConfig\DC2F\n\
    \\fgrpc_service\CAN\SOH \SOH(\v2!.envoy.config.core.v3.GrpcServiceH\NULR\vgrpcServiceB\RS\n\
    \\ETBconfig_source_specifier\DC2\ETX\248B\SOH:+\154\197\136\RS&\n\
    \$envoy.api.v2.core.EventServiceConfigBG\n\
    \\"io.envoyproxy.envoy.config.core.v3B\ETBEventServiceConfigProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\226\ETX\n\
    \\ACK\DC2\EOT\NUL\NUL\ESC\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\GS\n\
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
    \\NUL;\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\n\
    \\NUL;\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL8\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\v\NUL8\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\f\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \^\n\
    \\STX\EOT\NUL\DC2\EOT\DC1\NUL\ESC\SOH\SUBR [#not-implemented-hide:]\n\
    \ Configuration of the event reporting service endpoint.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC1\b\SUB\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\DC2\STX\DC3-\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\DC2\STX\DC3-\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\NAK\STX\SUB\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\NAK\b\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\ETX\SYN\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\ETX\SYN\EOT&\n\
    \Q\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\EM\EOT!\SUBD Specifies the gRPC service that hosts the event reporting service.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\EM\EOT\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\EM\DLE\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\EM\US b\ACKproto3"