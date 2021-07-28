{- This file was auto-generated from envoy/extensions/filters/http/csrf/v3/csrf.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.Csrf.V3.Csrf (
        CsrfPolicy()
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
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Type.Matcher.V3.String
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Csrf.V3.Csrf_Fields.filterEnabled' @:: Lens' CsrfPolicy Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent@
         * 'Proto.Envoy.Extensions.Filters.Http.Csrf.V3.Csrf_Fields.maybe'filterEnabled' @:: Lens' CsrfPolicy (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent)@
         * 'Proto.Envoy.Extensions.Filters.Http.Csrf.V3.Csrf_Fields.shadowEnabled' @:: Lens' CsrfPolicy Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent@
         * 'Proto.Envoy.Extensions.Filters.Http.Csrf.V3.Csrf_Fields.maybe'shadowEnabled' @:: Lens' CsrfPolicy (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent)@
         * 'Proto.Envoy.Extensions.Filters.Http.Csrf.V3.Csrf_Fields.additionalOrigins' @:: Lens' CsrfPolicy [Proto.Envoy.Type.Matcher.V3.String.StringMatcher]@
         * 'Proto.Envoy.Extensions.Filters.Http.Csrf.V3.Csrf_Fields.vec'additionalOrigins' @:: Lens' CsrfPolicy (Data.Vector.Vector Proto.Envoy.Type.Matcher.V3.String.StringMatcher)@ -}
data CsrfPolicy
  = CsrfPolicy'_constructor {_CsrfPolicy'filterEnabled :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent),
                             _CsrfPolicy'shadowEnabled :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent),
                             _CsrfPolicy'additionalOrigins :: !(Data.Vector.Vector Proto.Envoy.Type.Matcher.V3.String.StringMatcher),
                             _CsrfPolicy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CsrfPolicy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CsrfPolicy "filterEnabled" Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CsrfPolicy'filterEnabled
           (\ x__ y__ -> x__ {_CsrfPolicy'filterEnabled = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CsrfPolicy "maybe'filterEnabled" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CsrfPolicy'filterEnabled
           (\ x__ y__ -> x__ {_CsrfPolicy'filterEnabled = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CsrfPolicy "shadowEnabled" Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CsrfPolicy'shadowEnabled
           (\ x__ y__ -> x__ {_CsrfPolicy'shadowEnabled = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CsrfPolicy "maybe'shadowEnabled" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CsrfPolicy'shadowEnabled
           (\ x__ y__ -> x__ {_CsrfPolicy'shadowEnabled = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CsrfPolicy "additionalOrigins" [Proto.Envoy.Type.Matcher.V3.String.StringMatcher] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CsrfPolicy'additionalOrigins
           (\ x__ y__ -> x__ {_CsrfPolicy'additionalOrigins = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CsrfPolicy "vec'additionalOrigins" (Data.Vector.Vector Proto.Envoy.Type.Matcher.V3.String.StringMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CsrfPolicy'additionalOrigins
           (\ x__ y__ -> x__ {_CsrfPolicy'additionalOrigins = y__}))
        Prelude.id
instance Data.ProtoLens.Message CsrfPolicy where
  messageName _
    = Data.Text.pack "envoy.extensions.filters.http.csrf.v3.CsrfPolicy"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \CsrfPolicy\DC2_\n\
      \\SOfilter_enabled\CAN\SOH \SOH(\v2..envoy.config.core.v3.RuntimeFractionalPercentR\rfilterEnabledB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2U\n\
      \\SOshadow_enabled\CAN\STX \SOH(\v2..envoy.config.core.v3.RuntimeFractionalPercentR\rshadowEnabled\DC2S\n\
      \\DC2additional_origins\CAN\ETX \ETX(\v2$.envoy.type.matcher.v3.StringMatcherR\DC1additionalOrigins:2\154\197\136\RS-\n\
      \+envoy.config.filter.http.csrf.v2.CsrfPolicy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        filterEnabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "filter_enabled"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'filterEnabled")) ::
              Data.ProtoLens.FieldDescriptor CsrfPolicy
        shadowEnabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "shadow_enabled"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'shadowEnabled")) ::
              Data.ProtoLens.FieldDescriptor CsrfPolicy
        additionalOrigins__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "additional_origins"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.String.StringMatcher)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"additionalOrigins")) ::
              Data.ProtoLens.FieldDescriptor CsrfPolicy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, filterEnabled__field_descriptor),
           (Data.ProtoLens.Tag 2, shadowEnabled__field_descriptor),
           (Data.ProtoLens.Tag 3, additionalOrigins__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CsrfPolicy'_unknownFields
        (\ x__ y__ -> x__ {_CsrfPolicy'_unknownFields = y__})
  defMessage
    = CsrfPolicy'_constructor
        {_CsrfPolicy'filterEnabled = Prelude.Nothing,
         _CsrfPolicy'shadowEnabled = Prelude.Nothing,
         _CsrfPolicy'additionalOrigins = Data.Vector.Generic.empty,
         _CsrfPolicy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CsrfPolicy
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Type.Matcher.V3.String.StringMatcher
             -> Data.ProtoLens.Encoding.Bytes.Parser CsrfPolicy
        loop x mutable'additionalOrigins
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'additionalOrigins <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                       mutable'additionalOrigins)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields
                           (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'additionalOrigins")
                              frozen'additionalOrigins
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "filter_enabled"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"filterEnabled") y x)
                                  mutable'additionalOrigins
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "shadow_enabled"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"shadowEnabled") y x)
                                  mutable'additionalOrigins
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "additional_origins"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'additionalOrigins y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'additionalOrigins
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'additionalOrigins <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'additionalOrigins)
          "CsrfPolicy"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'filterEnabled") _x
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
                       (Data.ProtoLens.Field.field @"maybe'shadowEnabled") _x
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
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage
                                 _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'additionalOrigins") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData CsrfPolicy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CsrfPolicy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CsrfPolicy'filterEnabled x__)
                (Control.DeepSeq.deepseq
                   (_CsrfPolicy'shadowEnabled x__)
                   (Control.DeepSeq.deepseq (_CsrfPolicy'additionalOrigins x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \0envoy/extensions/filters/http/csrf/v3/csrf.proto\DC2%envoy.extensions.filters.http.csrf.v3\SUB\USenvoy/config/core/v3/base.proto\SUB\"envoy/type/matcher/v3/string.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\205\STX\n\
    \\n\
    \CsrfPolicy\DC2_\n\
    \\SOfilter_enabled\CAN\SOH \SOH(\v2..envoy.config.core.v3.RuntimeFractionalPercentR\rfilterEnabledB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2U\n\
    \\SOshadow_enabled\CAN\STX \SOH(\v2..envoy.config.core.v3.RuntimeFractionalPercentR\rshadowEnabled\DC2S\n\
    \\DC2additional_origins\CAN\ETX \ETX(\v2$.envoy.type.matcher.v3.StringMatcherR\DC1additionalOrigins:2\154\197\136\RS-\n\
    \+envoy.config.filter.http.csrf.v2.CsrfPolicyBJ\n\
    \3io.envoyproxy.envoy.extensions.filters.http.csrf.v3B\tCsrfProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\173\r\n\
    \\ACK\DC2\EOT\NUL\NUL5\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL.\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL,\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL+\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULL\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NULL\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL*\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL*\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\r\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SO\NULF\n\
    \\186\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\NAK\NUL5\SOH\SUB\NAK CSRF filter config.\n\
    \2\150\SOH [#protodoc-title: CSRF]\n\
    \ Cross-Site Request Forgery :ref:`configuration overview <config_http_filters_csrf>`.\n\
    \ [#extension: envoy.filters.http.csrf]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\NAK\b\DC2\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\SYN\STX\ETB4\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\SYN\STX\ETB4\n\
    \\141\ETX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\"\STX#4\SUB\254\STX Specifies the % of requests for which the CSRF filter is enabled.\n\
    \\n\
    \ If :ref:`runtime_key <envoy_v3_api_field_config.core.v3.RuntimeFractionalPercent.runtime_key>` is specified,\n\
    \ Envoy will lookup the runtime key to get the percentage of requests to filter.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \   This field defaults to 100/:ref:`HUNDRED\n\
    \   <envoy_v3_api_enum_type.v3.FractionalPercent.DenominatorType>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\"\STX)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\"*8\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\";<\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX#\ACK3\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DC1\DC2\ETX#\a2\n\
    \\252\ETX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX-\STX=\SUB\238\ETX Specifies that CSRF policies will be evaluated and tracked, but not enforced.\n\
    \\n\
    \ This is intended to be used when ``filter_enabled`` is off and will be ignored otherwise.\n\
    \\n\
    \ If :ref:`runtime_key <envoy_v3_api_field_config.core.v3.RuntimeFractionalPercent.runtime_key>` is specified,\n\
    \ Envoy will lookup the runtime key to get the percentage of requests for which it will evaluate\n\
    \ and track the request's *Origin* and *Destination* to determine if it's valid, but will not\n\
    \ enforce any policies.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX-\STX)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX-*8\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX-;<\n\
    \\221\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX4\STX@\SUB\207\SOH Specifies additional source origins that will be allowed in addition to\n\
    \ the destination origin.\n\
    \\n\
    \ More information on how this can be configured via runtime can be found\n\
    \ :ref:`here <csrf-configuration>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX4\v(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX4);\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX4>?b\ACKproto3"