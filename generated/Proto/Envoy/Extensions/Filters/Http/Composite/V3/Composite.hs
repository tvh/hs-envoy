{- This file was auto-generated from envoy/extensions/filters/http/composite/v3/composite.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.Composite.V3.Composite (
        Composite(), ExecuteFilterAction()
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
import qualified Proto.Envoy.Config.Core.V3.Extension
import qualified Proto.Udpa.Annotations.Status
{- | Fields :
      -}
data Composite
  = Composite'_constructor {_Composite'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Composite where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message Composite where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.composite.v3.Composite"
  packedMessageDescriptor _
    = "\n\
      \\tComposite"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Composite'_unknownFields
        (\ x__ y__ -> x__ {_Composite'_unknownFields = y__})
  defMessage
    = Composite'_constructor {_Composite'_unknownFields = []}
  parseMessage
    = let
        loop :: Composite -> Data.ProtoLens.Encoding.Bytes.Parser Composite
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
                      case tag of {
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x) }
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Composite"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData Composite where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_Composite'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Composite.V3.Composite_Fields.typedConfig' @:: Lens' ExecuteFilterAction Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig@
         * 'Proto.Envoy.Extensions.Filters.Http.Composite.V3.Composite_Fields.maybe'typedConfig' @:: Lens' ExecuteFilterAction (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)@ -}
data ExecuteFilterAction
  = ExecuteFilterAction'_constructor {_ExecuteFilterAction'typedConfig :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig),
                                      _ExecuteFilterAction'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ExecuteFilterAction where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ExecuteFilterAction "typedConfig" Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExecuteFilterAction'typedConfig
           (\ x__ y__ -> x__ {_ExecuteFilterAction'typedConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ExecuteFilterAction "maybe'typedConfig" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExecuteFilterAction'typedConfig
           (\ x__ y__ -> x__ {_ExecuteFilterAction'typedConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message ExecuteFilterAction where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.composite.v3.ExecuteFilterAction"
  packedMessageDescriptor _
    = "\n\
      \\DC3ExecuteFilterAction\DC2M\n\
      \\ftyped_config\CAN\SOH \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\vtypedConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        typedConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "typed_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'typedConfig")) ::
              Data.ProtoLens.FieldDescriptor ExecuteFilterAction
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, typedConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ExecuteFilterAction'_unknownFields
        (\ x__ y__ -> x__ {_ExecuteFilterAction'_unknownFields = y__})
  defMessage
    = ExecuteFilterAction'_constructor
        {_ExecuteFilterAction'typedConfig = Prelude.Nothing,
         _ExecuteFilterAction'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ExecuteFilterAction
          -> Data.ProtoLens.Encoding.Bytes.Parser ExecuteFilterAction
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
          (do loop Data.ProtoLens.defMessage) "ExecuteFilterAction"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'typedConfig") _x
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
instance Control.DeepSeq.NFData ExecuteFilterAction where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ExecuteFilterAction'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ExecuteFilterAction'typedConfig x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \:envoy/extensions/filters/http/composite/v3/composite.proto\DC2*envoy.extensions.filters.http.composite.v3\SUB$envoy/config/core/v3/extension.proto\SUB\GSudpa/annotations/status.proto\"\v\n\
    \\tComposite\"d\n\
    \\DC3ExecuteFilterAction\DC2M\n\
    \\ftyped_config\CAN\SOH \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\vtypedConfigBT\n\
    \8io.envoyproxy.envoy.extensions.filters.http.composite.v3B\SOCompositeProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\144\n\
    \\n\
    \\ACK\DC2\EOT\NUL\NUL$\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL3\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL.\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NULQ\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\b\NULQ\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL/\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\t\NUL/\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\n\
    \\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\v\NULF\n\
    \\187\ACK\n\
    \\STX\EOT\NUL\DC2\EOT\GS\NUL\RS\SOH\SUB\149\ENQ :ref:`Composite filter <config_http_filters_composite>` config. The composite filter config\n\
    \ allows delegating filter handling to another filter as determined by matching on the request\n\
    \ headers. This makes it possible to use different filters or filter configurations based on the\n\
    \ incoming request.\n\
    \\n\
    \ This is intended to be used with\n\
    \ :ref:`ExtensionWithMatcher <envoy_v3_api_msg_extensions.common.matching.v3.ExtensionWithMatcher>`\n\
    \ where a match tree is specified that indicates (via\n\
    \ :ref:`ExecuteFilterAction <envoy_v3_api_msg_extensions.filters.http.composite.v3.ExecuteFilterAction>`)\n\
    \ which filter configuration to create and delegate to.\n\
    \\n\
    \ [#alpha:]\n\
    \2\150\SOH [#protodoc-title: Composite]\n\
    \ Composite Filter :ref:`configuration overview <config_http_filters_cors>`.\n\
    \ [#extension: envoy.filters.http.composite]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\GS\b\DC1\n\
    \\246\SOH\n\
    \\STX\EOT\SOH\DC2\EOT\"\NUL$\SOH\SUB\233\SOH Composite match action (see :ref:`matching docs <arch_overview_matching_api>` for more info on match actions).\n\
    \ This specifies the filter configuration of the filter that the composite filter should delegate filter interactions to.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\"\b\ESC\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX#\STX7\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX#\STX%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX#&2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX#56b\ACKproto3"