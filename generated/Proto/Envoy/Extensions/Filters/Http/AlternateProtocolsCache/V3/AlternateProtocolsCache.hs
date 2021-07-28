{- This file was auto-generated from envoy/extensions/filters/http/alternate_protocols_cache/v3/alternate_protocols_cache.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.AlternateProtocolsCache.V3.AlternateProtocolsCache (
        FilterConfig()
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
import qualified Proto.Envoy.Config.Core.V3.Protocol
import qualified Proto.Udpa.Annotations.Status
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.AlternateProtocolsCache.V3.AlternateProtocolsCache_Fields.alternateProtocolsCacheOptions' @:: Lens' FilterConfig Proto.Envoy.Config.Core.V3.Protocol.AlternateProtocolsCacheOptions@
         * 'Proto.Envoy.Extensions.Filters.Http.AlternateProtocolsCache.V3.AlternateProtocolsCache_Fields.maybe'alternateProtocolsCacheOptions' @:: Lens' FilterConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.AlternateProtocolsCacheOptions)@ -}
data FilterConfig
  = FilterConfig'_constructor {_FilterConfig'alternateProtocolsCacheOptions :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.AlternateProtocolsCacheOptions),
                               _FilterConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FilterConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FilterConfig "alternateProtocolsCacheOptions" Proto.Envoy.Config.Core.V3.Protocol.AlternateProtocolsCacheOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterConfig'alternateProtocolsCacheOptions
           (\ x__ y__
              -> x__ {_FilterConfig'alternateProtocolsCacheOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FilterConfig "maybe'alternateProtocolsCacheOptions" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.AlternateProtocolsCacheOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterConfig'alternateProtocolsCacheOptions
           (\ x__ y__
              -> x__ {_FilterConfig'alternateProtocolsCacheOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Message FilterConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.alternate_protocols_cache.v3.FilterConfig"
  packedMessageDescriptor _
    = "\n\
      \\fFilterConfig\DC2\DEL\n\
      \!alternate_protocols_cache_options\CAN\SOH \SOH(\v24.envoy.config.core.v3.AlternateProtocolsCacheOptionsR\RSalternateProtocolsCacheOptions"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        alternateProtocolsCacheOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "alternate_protocols_cache_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Protocol.AlternateProtocolsCacheOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'alternateProtocolsCacheOptions")) ::
              Data.ProtoLens.FieldDescriptor FilterConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, 
            alternateProtocolsCacheOptions__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FilterConfig'_unknownFields
        (\ x__ y__ -> x__ {_FilterConfig'_unknownFields = y__})
  defMessage
    = FilterConfig'_constructor
        {_FilterConfig'alternateProtocolsCacheOptions = Prelude.Nothing,
         _FilterConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FilterConfig -> Data.ProtoLens.Encoding.Bytes.Parser FilterConfig
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
                                       "alternate_protocols_cache_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"alternateProtocolsCacheOptions")
                                     y
                                     x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FilterConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field
                       @"maybe'alternateProtocolsCacheOptions")
                    _x
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
instance Control.DeepSeq.NFData FilterConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FilterConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FilterConfig'alternateProtocolsCacheOptions x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Zenvoy/extensions/filters/http/alternate_protocols_cache/v3/alternate_protocols_cache.proto\DC2:envoy.extensions.filters.http.alternate_protocols_cache.v3\SUB#envoy/config/core/v3/protocol.proto\SUB\GSudpa/annotations/status.proto\"\143\SOH\n\
    \\fFilterConfig\DC2\DEL\n\
    \!alternate_protocols_cache_options\CAN\SOH \SOH(\v24.envoy.config.core.v3.AlternateProtocolsCacheOptionsR\RSalternateProtocolsCacheOptionsBr\n\
    \Hio.envoyproxy.envoy.extensions.filters.http.alternate_protocols_cache.v3B\FSAlternateProtocolsCacheProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\240\ACK\n\
    \\ACK\DC2\EOT\NUL\NUL\SUB\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NULC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL-\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NULa\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\b\NULa\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL=\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\t\NUL=\n\
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
    \\218\STX\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NUL\SUB\SOH\SUB\157\STX Configuration for the alternate protocols cache HTTP filter.\n\
    \ [#extension: envoy.filters.http.alternate_protocols_cache]\n\
    \ TODO(RyanTheOptimist): Move content from source/docs/http3_upstream.md to\n\
    \ docs/root/intro/arch_overview/upstream/connection_pooling.rst when unhiding the proto.\n\
    \2. [#protodoc-title: Alternate Protocols Cache]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b\DC4\n\
    \\208\STX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\EM\STXV\SUB\194\STX [#not-implemented-hide:]\n\
    \ If set, causes the use of the alternate protocols cache, which is responsible for\n\
    \ parsing and caching HTTP Alt-Svc headers. This enables the use of HTTP/3 for upstream\n\
    \ servers that advertise supporting it.\n\
    \ TODO(RyanTheOptimist): Make this field required when HTTP/3 is enabled via auto_http.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\EM\STX/\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\EM0Q\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\EMTUb\ACKproto3"