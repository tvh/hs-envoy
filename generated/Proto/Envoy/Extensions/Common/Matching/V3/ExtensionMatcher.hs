{- This file was auto-generated from envoy/extensions/common/matching/v3/extension_matcher.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Common.Matching.V3.ExtensionMatcher (
        ExtensionWithMatcher()
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
import qualified Proto.Envoy.Config.Common.Matcher.V3.Matcher
import qualified Proto.Envoy.Config.Core.V3.Extension
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Common.Matching.V3.ExtensionMatcher_Fields.matcher' @:: Lens' ExtensionWithMatcher Proto.Envoy.Config.Common.Matcher.V3.Matcher.Matcher@
         * 'Proto.Envoy.Extensions.Common.Matching.V3.ExtensionMatcher_Fields.maybe'matcher' @:: Lens' ExtensionWithMatcher (Prelude.Maybe Proto.Envoy.Config.Common.Matcher.V3.Matcher.Matcher)@
         * 'Proto.Envoy.Extensions.Common.Matching.V3.ExtensionMatcher_Fields.extensionConfig' @:: Lens' ExtensionWithMatcher Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig@
         * 'Proto.Envoy.Extensions.Common.Matching.V3.ExtensionMatcher_Fields.maybe'extensionConfig' @:: Lens' ExtensionWithMatcher (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)@ -}
data ExtensionWithMatcher
  = ExtensionWithMatcher'_constructor {_ExtensionWithMatcher'matcher :: !(Prelude.Maybe Proto.Envoy.Config.Common.Matcher.V3.Matcher.Matcher),
                                       _ExtensionWithMatcher'extensionConfig :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig),
                                       _ExtensionWithMatcher'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ExtensionWithMatcher where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ExtensionWithMatcher "matcher" Proto.Envoy.Config.Common.Matcher.V3.Matcher.Matcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtensionWithMatcher'matcher
           (\ x__ y__ -> x__ {_ExtensionWithMatcher'matcher = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ExtensionWithMatcher "maybe'matcher" (Prelude.Maybe Proto.Envoy.Config.Common.Matcher.V3.Matcher.Matcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtensionWithMatcher'matcher
           (\ x__ y__ -> x__ {_ExtensionWithMatcher'matcher = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtensionWithMatcher "extensionConfig" Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtensionWithMatcher'extensionConfig
           (\ x__ y__ -> x__ {_ExtensionWithMatcher'extensionConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ExtensionWithMatcher "maybe'extensionConfig" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtensionWithMatcher'extensionConfig
           (\ x__ y__ -> x__ {_ExtensionWithMatcher'extensionConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message ExtensionWithMatcher where
  messageName _
    = Data.Text.pack
        "envoy.extensions.common.matching.v3.ExtensionWithMatcher"
  packedMessageDescriptor _
    = "\n\
      \\DC4ExtensionWithMatcher\DC2K\n\
      \\amatcher\CAN\SOH \SOH(\v2'.envoy.config.common.matcher.v3.MatcherR\amatcherB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2_\n\
      \\DLEextension_config\CAN\STX \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\SIextensionConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        matcher__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "matcher"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Common.Matcher.V3.Matcher.Matcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'matcher")) ::
              Data.ProtoLens.FieldDescriptor ExtensionWithMatcher
        extensionConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extension_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'extensionConfig")) ::
              Data.ProtoLens.FieldDescriptor ExtensionWithMatcher
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, matcher__field_descriptor),
           (Data.ProtoLens.Tag 2, extensionConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ExtensionWithMatcher'_unknownFields
        (\ x__ y__ -> x__ {_ExtensionWithMatcher'_unknownFields = y__})
  defMessage
    = ExtensionWithMatcher'_constructor
        {_ExtensionWithMatcher'matcher = Prelude.Nothing,
         _ExtensionWithMatcher'extensionConfig = Prelude.Nothing,
         _ExtensionWithMatcher'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ExtensionWithMatcher
          -> Data.ProtoLens.Encoding.Bytes.Parser ExtensionWithMatcher
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
                                       "matcher"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"matcher") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "extension_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"extensionConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ExtensionWithMatcher"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'matcher") _x
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
                       (Data.ProtoLens.Field.field @"maybe'extensionConfig") _x
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
instance Control.DeepSeq.NFData ExtensionWithMatcher where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ExtensionWithMatcher'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ExtensionWithMatcher'matcher x__)
                (Control.DeepSeq.deepseq
                   (_ExtensionWithMatcher'extensionConfig x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \;envoy/extensions/common/matching/v3/extension_matcher.proto\DC2#envoy.extensions.common.matching.v3\SUB,envoy/config/common/matcher/v3/matcher.proto\SUB$envoy/config/core/v3/extension.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\196\SOH\n\
    \\DC4ExtensionWithMatcher\DC2K\n\
    \\amatcher\CAN\SOH \SOH(\v2'.envoy.config.common.matcher.v3.MatcherR\amatcherB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2_\n\
    \\DLEextension_config\CAN\STX \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\SIextensionConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOHBT\n\
    \1io.envoyproxy.envoy.extensions.common.matching.v3B\NAKExtensionMatcherProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\161\ENQ\n\
    \\ACK\DC2\EOT\NUL\NUL\GS\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL,\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL6\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL.\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NULJ\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\n\
    \\NULJ\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL6\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\v\NUL6\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\f\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \\134\STX\n\
    \\STX\EOT\NUL\DC2\EOT\SYN\NUL\GS\SOH\SUB\209\SOH Wrapper around an existing extension that provides an associated matcher. This allows\n\
    \ decorating an existing extension with a matcher, which can be used to match against\n\
    \ relevant protocol data.\n\
    \\n\
    \ [#alpha:]\n\
    \2& [#protodoc-title: Extension Matcher]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SYN\b\FS\n\
    \&\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\CAN\STX]\SUB\EM The associated matcher.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\CAN\STX\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\CAN#*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\CAN-.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\CAN/\\\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DC1\DC2\ETX\CAN0[\n\
    \0\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\ESC\STX\FS4\SUB\" The underlying extension config.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\ESC\STX%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\ESC&6\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\ESC9:\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\FS\ACK3\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DC1\DC2\ETX\FS\a2b\ACKproto3"