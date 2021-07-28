{- This file was auto-generated from envoy/config/trace/v3/http_tracer.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Trace.V3.HttpTracer (
        Tracing(), Tracing'Http(), Tracing'Http'ConfigType(..),
        _Tracing'Http'TypedConfig
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
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Trace.V3.HttpTracer_Fields.http' @:: Lens' Tracing Tracing'Http@
         * 'Proto.Envoy.Config.Trace.V3.HttpTracer_Fields.maybe'http' @:: Lens' Tracing (Prelude.Maybe Tracing'Http)@ -}
data Tracing
  = Tracing'_constructor {_Tracing'http :: !(Prelude.Maybe Tracing'Http),
                          _Tracing'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Tracing where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Tracing "http" Tracing'Http where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tracing'http (\ x__ y__ -> x__ {_Tracing'http = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Tracing "maybe'http" (Prelude.Maybe Tracing'Http) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tracing'http (\ x__ y__ -> x__ {_Tracing'http = y__}))
        Prelude.id
instance Data.ProtoLens.Message Tracing where
  messageName _ = Data.Text.pack "envoy.config.trace.v3.Tracing"
  packedMessageDescriptor _
    = "\n\
      \\aTracing\DC27\n\
      \\EOThttp\CAN\SOH \SOH(\v2#.envoy.config.trace.v3.Tracing.HttpR\EOThttp\SUB\166\SOH\n\
      \\EOTHttp\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC29\n\
      \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfigB\r\n\
      \\vconfig_type:)\154\197\136\RS$\n\
      \\"envoy.config.trace.v2.Tracing.HttpJ\EOT\b\STX\DLE\ETXR\ACKconfig:$\154\197\136\RS\US\n\
      \\GSenvoy.config.trace.v2.Tracing"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        http__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Tracing'Http)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'http")) ::
              Data.ProtoLens.FieldDescriptor Tracing
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, http__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Tracing'_unknownFields
        (\ x__ y__ -> x__ {_Tracing'_unknownFields = y__})
  defMessage
    = Tracing'_constructor
        {_Tracing'http = Prelude.Nothing, _Tracing'_unknownFields = []}
  parseMessage
    = let
        loop :: Tracing -> Data.ProtoLens.Encoding.Bytes.Parser Tracing
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
                                       "http"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"http") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Tracing"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'http") _x
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
instance Control.DeepSeq.NFData Tracing where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Tracing'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Tracing'http x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Trace.V3.HttpTracer_Fields.name' @:: Lens' Tracing'Http Data.Text.Text@
         * 'Proto.Envoy.Config.Trace.V3.HttpTracer_Fields.maybe'configType' @:: Lens' Tracing'Http (Prelude.Maybe Tracing'Http'ConfigType)@
         * 'Proto.Envoy.Config.Trace.V3.HttpTracer_Fields.maybe'typedConfig' @:: Lens' Tracing'Http (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Config.Trace.V3.HttpTracer_Fields.typedConfig' @:: Lens' Tracing'Http Proto.Google.Protobuf.Any.Any@ -}
data Tracing'Http
  = Tracing'Http'_constructor {_Tracing'Http'name :: !Data.Text.Text,
                               _Tracing'Http'configType :: !(Prelude.Maybe Tracing'Http'ConfigType),
                               _Tracing'Http'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Tracing'Http where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Tracing'Http'ConfigType
  = Tracing'Http'TypedConfig !Proto.Google.Protobuf.Any.Any
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Tracing'Http "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tracing'Http'name (\ x__ y__ -> x__ {_Tracing'Http'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Tracing'Http "maybe'configType" (Prelude.Maybe Tracing'Http'ConfigType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tracing'Http'configType
           (\ x__ y__ -> x__ {_Tracing'Http'configType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Tracing'Http "maybe'typedConfig" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tracing'Http'configType
           (\ x__ y__ -> x__ {_Tracing'Http'configType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Tracing'Http'TypedConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Tracing'Http'TypedConfig y__))
instance Data.ProtoLens.Field.HasField Tracing'Http "typedConfig" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tracing'Http'configType
           (\ x__ y__ -> x__ {_Tracing'Http'configType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Tracing'Http'TypedConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Tracing'Http'TypedConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Tracing'Http where
  messageName _ = Data.Text.pack "envoy.config.trace.v3.Tracing.Http"
  packedMessageDescriptor _
    = "\n\
      \\EOTHttp\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC29\n\
      \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfigB\r\n\
      \\vconfig_type:)\154\197\136\RS$\n\
      \\"envoy.config.trace.v2.Tracing.HttpJ\EOT\b\STX\DLE\ETXR\ACKconfig"
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
              Data.ProtoLens.FieldDescriptor Tracing'Http
        typedConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "typed_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'typedConfig")) ::
              Data.ProtoLens.FieldDescriptor Tracing'Http
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 3, typedConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Tracing'Http'_unknownFields
        (\ x__ y__ -> x__ {_Tracing'Http'_unknownFields = y__})
  defMessage
    = Tracing'Http'_constructor
        {_Tracing'Http'name = Data.ProtoLens.fieldDefault,
         _Tracing'Http'configType = Prelude.Nothing,
         _Tracing'Http'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Tracing'Http -> Data.ProtoLens.Encoding.Bytes.Parser Tracing'Http
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
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "typed_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"typedConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Http"
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
                       (Data.ProtoLens.Field.field @"maybe'configType") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (Tracing'Http'TypedConfig v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
instance Control.DeepSeq.NFData Tracing'Http where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Tracing'Http'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Tracing'Http'name x__)
                (Control.DeepSeq.deepseq (_Tracing'Http'configType x__) ()))
instance Control.DeepSeq.NFData Tracing'Http'ConfigType where
  rnf (Tracing'Http'TypedConfig x__) = Control.DeepSeq.rnf x__
_Tracing'Http'TypedConfig ::
  Data.ProtoLens.Prism.Prism' Tracing'Http'ConfigType Proto.Google.Protobuf.Any.Any
_Tracing'Http'TypedConfig
  = Data.ProtoLens.Prism.prism'
      Tracing'Http'TypedConfig
      (\ p__
         -> case p__ of {
              (Tracing'Http'TypedConfig p__val) -> Prelude.Just p__val })
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \'envoy/config/trace/v3/http_tracer.proto\DC2\NAKenvoy.config.trace.v3\SUB\EMgoogle/protobuf/any.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\145\STX\n\
    \\aTracing\DC27\n\
    \\EOThttp\CAN\SOH \SOH(\v2#.envoy.config.trace.v3.Tracing.HttpR\EOThttp\SUB\166\SOH\n\
    \\EOTHttp\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC29\n\
    \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfigB\r\n\
    \\vconfig_type:)\154\197\136\RS$\n\
    \\"envoy.config.trace.v2.Tracing.HttpJ\EOT\b\STX\DLE\ETXR\ACKconfig:$\154\197\136\RS\US\n\
    \\GSenvoy.config.trace.v2.TracingB@\n\
    \#io.envoyproxy.envoy.config.trace.v3B\SIHttpTracerProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\220\SO\n\
    \\ACK\DC2\EOT\NUL\NUL:\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL#\n\
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
    \\SOH\b\DC2\ETX\v\NUL0\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\v\NUL0\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\f\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \\210\ETX\n\
    \\STX\EOT\NUL\DC2\EOT\ESC\NUL:\SOH\SUB\232\STX The tracing configuration specifies settings for an HTTP tracer provider used by Envoy.\n\
    \\n\
    \ Envoy may support other tracers in the future, but right now the HTTP tracer is the only one\n\
    \ supported.\n\
    \\n\
    \ .. attention::\n\
    \\n\
    \   Use of this message type has been deprecated in favor of direct use of\n\
    \   :ref:`Tracing.Http <envoy_v3_api_msg_config.trace.v3.Tracing.Http>`.\n\
    \2[ [#protodoc-title: Tracing]\n\
    \ Tracing :ref:`architecture overview <arch_overview_tracing>`.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ESC\b\SI\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\FS\STX_\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\FS\STX_\n\
    \\135\ETX\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT$\STX6\ETX\SUB\248\STX Configuration for an HTTP tracer provider used by Envoy.\n\
    \\n\
    \ The configuration is defined by the\n\
    \ :ref:`HttpConnectionManager.Tracing <envoy_v3_api_msg_extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.Tracing>`\n\
    \ :ref:`provider <envoy_v3_api_field_extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.Tracing.provider>`\n\
    \ field.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX$\n\
    \\SO\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT%\EOT&-\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT%\EOT&-\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\t\DC2\ETX(\EOT\SI\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\t\NUL\DC2\ETX(\r\SO\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\t\NUL\SOH\DC2\ETX(\r\SO\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\t\NUL\STX\DC2\ETX(\r\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\n\
    \\DC2\ETX*\EOT\SYN\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\n\
    \\NUL\DC2\ETX*\r\NAK\n\
    \\129\STX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX/\EOT=\SUB\241\SOH The name of the HTTP trace driver to instantiate. The name must match a\n\
    \ supported HTTP trace driver.\n\
    \ See the :ref:`extensions listed in typed_config below <extension_category_envoy.tracers>` for the default list of the HTTP trace driver.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX/\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX/\v\SI\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX/\DC2\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\b\DC2\ETX/\DC4<\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\NUL\b\175\b\SO\DC2\ETX/\NAK;\n\
    \\154\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\b\NUL\DC2\EOT3\EOT5\ENQ\SUB\137\SOH Trace driver specific configuration which must be set according to the driver being instantiated.\n\
    \ [#extension-category: envoy.tracers]\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\b\NUL\SOH\DC2\ETX3\n\
    \\NAK\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX4\ACK+\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ACK\DC2\ETX4\ACK\EM\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX4\SUB&\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX4)*\n\
    \:\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX9\STX\DLE\SUB- Provides configuration for the HTTP tracer.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX9\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX9\a\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX9\SO\SIb\ACKproto3"