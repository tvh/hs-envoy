{- This file was auto-generated from envoy/extensions/filters/http/cdn_loop/v3alpha/cdn_loop.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.CdnLoop.V3alpha.CdnLoop (
        CdnLoopConfig()
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
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.CdnLoop.V3alpha.CdnLoop_Fields.cdnId' @:: Lens' CdnLoopConfig Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.CdnLoop.V3alpha.CdnLoop_Fields.maxAllowedOccurrences' @:: Lens' CdnLoopConfig Data.Word.Word32@ -}
data CdnLoopConfig
  = CdnLoopConfig'_constructor {_CdnLoopConfig'cdnId :: !Data.Text.Text,
                                _CdnLoopConfig'maxAllowedOccurrences :: !Data.Word.Word32,
                                _CdnLoopConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CdnLoopConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CdnLoopConfig "cdnId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CdnLoopConfig'cdnId
           (\ x__ y__ -> x__ {_CdnLoopConfig'cdnId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CdnLoopConfig "maxAllowedOccurrences" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CdnLoopConfig'maxAllowedOccurrences
           (\ x__ y__ -> x__ {_CdnLoopConfig'maxAllowedOccurrences = y__}))
        Prelude.id
instance Data.ProtoLens.Message CdnLoopConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.cdn_loop.v3alpha.CdnLoopConfig"
  packedMessageDescriptor _
    = "\n\
      \\rCdnLoopConfig\DC2\RS\n\
      \\ACKcdn_id\CAN\SOH \SOH(\tR\ENQcdnIdB\a\250B\EOTr\STX\DLE\SOH\DC26\n\
      \\ETBmax_allowed_occurrences\CAN\STX \SOH(\rR\NAKmaxAllowedOccurrences"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cdnId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cdn_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"cdnId")) ::
              Data.ProtoLens.FieldDescriptor CdnLoopConfig
        maxAllowedOccurrences__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_allowed_occurrences"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxAllowedOccurrences")) ::
              Data.ProtoLens.FieldDescriptor CdnLoopConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cdnId__field_descriptor),
           (Data.ProtoLens.Tag 2, maxAllowedOccurrences__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CdnLoopConfig'_unknownFields
        (\ x__ y__ -> x__ {_CdnLoopConfig'_unknownFields = y__})
  defMessage
    = CdnLoopConfig'_constructor
        {_CdnLoopConfig'cdnId = Data.ProtoLens.fieldDefault,
         _CdnLoopConfig'maxAllowedOccurrences = Data.ProtoLens.fieldDefault,
         _CdnLoopConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CdnLoopConfig -> Data.ProtoLens.Encoding.Bytes.Parser CdnLoopConfig
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
                                       "cdn_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cdnId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "max_allowed_occurrences"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxAllowedOccurrences") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CdnLoopConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"cdnId") _x
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
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"maxAllowedOccurrences") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData CdnLoopConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CdnLoopConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CdnLoopConfig'cdnId x__)
                (Control.DeepSeq.deepseq
                   (_CdnLoopConfig'maxAllowedOccurrences x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \=envoy/extensions/filters/http/cdn_loop/v3alpha/cdn_loop.proto\DC2.envoy.extensions.filters.http.cdn_loop.v3alpha\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"g\n\
    \\rCdnLoopConfig\DC2\RS\n\
    \\ACKcdn_id\CAN\SOH \SOH(\tR\ENQcdnIdB\a\250B\EOTr\STX\DLE\SOH\DC26\n\
    \\ETBmax_allowed_occurrences\CAN\STX \SOH(\rR\NAKmaxAllowedOccurrencesB^\n\
    \<io.envoyproxy.envoy.extensions.filters.http.cdn_loop.v3alphaB\fCdnLoopProtoP\SOH\186\128\200\209\ACK\STX\b\SOH\186\128\200\209\ACK\STX\DLE\STXJ\236\a\n\
    \\ACK\DC2\EOT\NUL\NUL#\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL7\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NULU\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\a\NULU\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL-\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\b\NUL-\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\t\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL>\n\
    \\r\n\
    \\ACK\b\135\128\153j\SOH\DC2\ETX\n\
    \\NUL>\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\v\NULF\n\
    \\222\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC2\NUL#\SOH\SUB| CDN-Loop Header filter config. See the :ref:`configuration overview\n\
    \ <config_http_filters_cdn_loop>` for more information.\n\
    \2T [#protodoc-title: HTTP CDN-Loop Filter]\n\
    \ [#extension: envoy.filters.http.cdn_loop]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC2\b\NAK\n\
    \\234\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SUB\STX=\SUB\220\SOH The CDN identifier to use for loop checks and to append to the\n\
    \ CDN-Loop header.\n\
    \\n\
    \ RFC 8586 calls this the cdn-id. The cdn-id can either be a\n\
    \ pseudonym or hostname the CDN is in control of.\n\
    \\n\
    \ cdn_id must not be empty.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SUB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SUB\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SUB\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\SUB\DC4<\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\SUB\NAK;\n\
    \\249\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\"\STX%\SUB\235\SOH The maximum allowed count of cdn_id in the downstream CDN-Loop\n\
    \ request header.\n\
    \\n\
    \ The default of 0 means a request can transit the CdnLoopFilter\n\
    \ once. A value of 1 means that a request can transit the\n\
    \ CdnLoopFilter twice and so on.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\"\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\"\t \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\"#$b\ACKproto3"