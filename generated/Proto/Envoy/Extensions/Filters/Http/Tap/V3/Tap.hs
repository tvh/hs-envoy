{- This file was auto-generated from envoy/extensions/filters/http/tap/v3/tap.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.Tap.V3.Tap (
        Tap()
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
import qualified Proto.Envoy.Extensions.Common.Tap.V3.Common
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Tap.V3.Tap_Fields.commonConfig' @:: Lens' Tap Proto.Envoy.Extensions.Common.Tap.V3.Common.CommonExtensionConfig@
         * 'Proto.Envoy.Extensions.Filters.Http.Tap.V3.Tap_Fields.maybe'commonConfig' @:: Lens' Tap (Prelude.Maybe Proto.Envoy.Extensions.Common.Tap.V3.Common.CommonExtensionConfig)@ -}
data Tap
  = Tap'_constructor {_Tap'commonConfig :: !(Prelude.Maybe Proto.Envoy.Extensions.Common.Tap.V3.Common.CommonExtensionConfig),
                      _Tap'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Tap where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Tap "commonConfig" Proto.Envoy.Extensions.Common.Tap.V3.Common.CommonExtensionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tap'commonConfig (\ x__ y__ -> x__ {_Tap'commonConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Tap "maybe'commonConfig" (Prelude.Maybe Proto.Envoy.Extensions.Common.Tap.V3.Common.CommonExtensionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tap'commonConfig (\ x__ y__ -> x__ {_Tap'commonConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message Tap where
  messageName _
    = Data.Text.pack "envoy.extensions.filters.http.tap.v3.Tap"
  packedMessageDescriptor _
    = "\n\
      \\ETXTap\DC2d\n\
      \\rcommon_config\CAN\SOH \SOH(\v25.envoy.extensions.common.tap.v3.CommonExtensionConfigR\fcommonConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOH:/\154\197\136\RS*\n\
      \(envoy.config.filter.http.tap.v2alpha.Tap"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        commonConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "common_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.Common.Tap.V3.Common.CommonExtensionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commonConfig")) ::
              Data.ProtoLens.FieldDescriptor Tap
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, commonConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Tap'_unknownFields (\ x__ y__ -> x__ {_Tap'_unknownFields = y__})
  defMessage
    = Tap'_constructor
        {_Tap'commonConfig = Prelude.Nothing, _Tap'_unknownFields = []}
  parseMessage
    = let
        loop :: Tap -> Data.ProtoLens.Encoding.Bytes.Parser Tap
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
                                       "common_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"commonConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Tap"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'commonConfig") _x
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
instance Control.DeepSeq.NFData Tap where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Tap'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Tap'commonConfig x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \.envoy/extensions/filters/http/tap/v3/tap.proto\DC2$envoy.extensions.filters.http.tap.v3\SUB+envoy/extensions/common/tap/v3/common.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\156\SOH\n\
    \\ETXTap\DC2d\n\
    \\rcommon_config\CAN\SOH \SOH(\v25.envoy.extensions.common.tap.v3.CommonExtensionConfigR\fcommonConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOH:/\154\197\136\RS*\n\
    \(envoy.config.filter.http.tap.v2alpha.TapBH\n\
    \2io.envoyproxy.envoy.extensions.filters.http.tap.v3B\bTapProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\141\EOT\n\
    \\ACK\DC2\EOT\NUL\NUL\ESC\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL-\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL5\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL+\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NULK\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\n\
    \\NULK\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL)\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\v\NUL)\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\f\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \\183\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC4\NUL\ESC\SOH\SUB- Top level configuration for the tap filter.\n\
    \2| [#protodoc-title: Tap]\n\
    \ Tap :ref:`configuration overview <config_http_filters_tap>`.\n\
    \ [#extension: envoy.filters.http.tap]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC4\b\v\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\NAK\STX\SYN1\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\NAK\STX\SYN1\n\
    \=\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\EM\STX\SUB4\SUB/ Common configuration for the HTTP tap filter.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\EM\STX%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\EM&3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\EM67\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\SUB\ACK3\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DC1\DC2\ETX\SUB\a2b\ACKproto3"