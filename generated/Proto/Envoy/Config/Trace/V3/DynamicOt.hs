{- This file was auto-generated from envoy/config/trace/v3/dynamic_ot.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Trace.V3.DynamicOt (
        DynamicOtConfig()
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
import qualified Proto.Google.Protobuf.Struct
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Trace.V3.DynamicOt_Fields.library' @:: Lens' DynamicOtConfig Data.Text.Text@
         * 'Proto.Envoy.Config.Trace.V3.DynamicOt_Fields.config' @:: Lens' DynamicOtConfig Proto.Google.Protobuf.Struct.Struct@
         * 'Proto.Envoy.Config.Trace.V3.DynamicOt_Fields.maybe'config' @:: Lens' DynamicOtConfig (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct)@ -}
data DynamicOtConfig
  = DynamicOtConfig'_constructor {_DynamicOtConfig'library :: !Data.Text.Text,
                                  _DynamicOtConfig'config :: !(Prelude.Maybe Proto.Google.Protobuf.Struct.Struct),
                                  _DynamicOtConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DynamicOtConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DynamicOtConfig "library" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DynamicOtConfig'library
           (\ x__ y__ -> x__ {_DynamicOtConfig'library = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DynamicOtConfig "config" Proto.Google.Protobuf.Struct.Struct where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DynamicOtConfig'config
           (\ x__ y__ -> x__ {_DynamicOtConfig'config = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DynamicOtConfig "maybe'config" (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DynamicOtConfig'config
           (\ x__ y__ -> x__ {_DynamicOtConfig'config = y__}))
        Prelude.id
instance Data.ProtoLens.Message DynamicOtConfig where
  messageName _
    = Data.Text.pack "envoy.config.trace.v3.DynamicOtConfig"
  packedMessageDescriptor _
    = "\n\
      \\SIDynamicOtConfig\DC2!\n\
      \\alibrary\CAN\SOH \SOH(\tR\alibraryB\a\250B\EOTr\STX\DLE\SOH\DC2/\n\
      \\ACKconfig\CAN\STX \SOH(\v2\ETB.google.protobuf.StructR\ACKconfig:,\154\197\136\RS'\n\
      \%envoy.config.trace.v2.DynamicOtConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        library__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "library"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"library")) ::
              Data.ProtoLens.FieldDescriptor DynamicOtConfig
        config__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Struct.Struct)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'config")) ::
              Data.ProtoLens.FieldDescriptor DynamicOtConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, library__field_descriptor),
           (Data.ProtoLens.Tag 2, config__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DynamicOtConfig'_unknownFields
        (\ x__ y__ -> x__ {_DynamicOtConfig'_unknownFields = y__})
  defMessage
    = DynamicOtConfig'_constructor
        {_DynamicOtConfig'library = Data.ProtoLens.fieldDefault,
         _DynamicOtConfig'config = Prelude.Nothing,
         _DynamicOtConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DynamicOtConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser DynamicOtConfig
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
                                       "library"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"library") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "config"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"config") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DynamicOtConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"library") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'config") _x
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
instance Control.DeepSeq.NFData DynamicOtConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DynamicOtConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DynamicOtConfig'library x__)
                (Control.DeepSeq.deepseq (_DynamicOtConfig'config x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&envoy/config/trace/v3/dynamic_ot.proto\DC2\NAKenvoy.config.trace.v3\SUB\FSgoogle/protobuf/struct.proto\SUB\RSudpa/annotations/migrate.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\147\SOH\n\
    \\SIDynamicOtConfig\DC2!\n\
    \\alibrary\CAN\SOH \SOH(\tR\alibraryB\a\250B\EOTr\STX\DLE\SOH\DC2/\n\
    \\ACKconfig\CAN\STX \SOH(\v2\ETB.google.protobuf.StructR\ACKconfig:,\154\197\136\RS'\n\
    \%envoy.config.trace.v2.DynamicOtConfigBr\n\
    \#io.envoyproxy.envoy.config.trace.v3B\SODynamicOtProtoP\SOH\242\152\254\143\ENQ-\DC2+envoy.extensions.tracers.dynamic_ot.v4alpha\186\128\200\209\ACK\STX\DLE\STXJ\233\ACK\n\
    \\ACK\DC2\EOT\NUL\NUL#\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL&\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL+\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL<\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NUL<\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL/\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL/\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\SOH\b\DC2\EOT\SO\NUL\SI2\n\
    \\SO\n\
    \\ACK\b\142\227\255Q\STX\DC2\EOT\SO\NUL\SI2\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DLE\NULF\n\
    \\170\STX\n\
    \\STX\EOT\NUL\DC2\EOT\CAN\NUL#\SOH\SUB\223\SOH DynamicOtConfig is used to dynamically load a tracer from a shared library\n\
    \ that implements the `OpenTracing dynamic loading API\n\
    \ <https://github.com/opentracing/opentracing-cpp>`_.\n\
    \ [#extension: envoy.tracers.dynamic_ot]\n\
    \2< [#protodoc-title: Dynamically loadable OpenTracing tracer]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\CAN\b\ETB\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\EM\STX\SUB.\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\EM\STX\SUB.\n\
    \u\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\RS\STX>\SUBh Dynamic library implementing the `OpenTracing API\n\
    \ <https://github.com/opentracing/opentracing-cpp>`_.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\RS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\RS\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\RS\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\RS\NAK=\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\RS\SYN<\n\
    \_\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\"\STX$\SUBR The configuration to use when creating a tracer from the given dynamic\n\
    \ library.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\"\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\"\EM\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\"\"#b\ACKproto3"