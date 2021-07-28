{- This file was auto-generated from envoy/extensions/filters/http/grpc_http1_reverse_bridge/v3/config.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.GrpcHttp1ReverseBridge.V3.Config (
        FilterConfig(), FilterConfigPerRoute()
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
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcHttp1ReverseBridge.V3.Config_Fields.contentType' @:: Lens' FilterConfig Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcHttp1ReverseBridge.V3.Config_Fields.withholdGrpcFrames' @:: Lens' FilterConfig Prelude.Bool@ -}
data FilterConfig
  = FilterConfig'_constructor {_FilterConfig'contentType :: !Data.Text.Text,
                               _FilterConfig'withholdGrpcFrames :: !Prelude.Bool,
                               _FilterConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FilterConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FilterConfig "contentType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterConfig'contentType
           (\ x__ y__ -> x__ {_FilterConfig'contentType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterConfig "withholdGrpcFrames" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterConfig'withholdGrpcFrames
           (\ x__ y__ -> x__ {_FilterConfig'withholdGrpcFrames = y__}))
        Prelude.id
instance Data.ProtoLens.Message FilterConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.grpc_http1_reverse_bridge.v3.FilterConfig"
  packedMessageDescriptor _
    = "\n\
      \\fFilterConfig\DC2*\n\
      \\fcontent_type\CAN\SOH \SOH(\tR\vcontentTypeB\a\250B\EOTr\STX\DLE\SOH\DC20\n\
      \\DC4withhold_grpc_frames\CAN\STX \SOH(\bR\DC2withholdGrpcFrames:O\154\197\136\RSJ\n\
      \Henvoy.config.filter.http.grpc_http1_reverse_bridge.v2alpha1.FilterConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        contentType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "content_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"contentType")) ::
              Data.ProtoLens.FieldDescriptor FilterConfig
        withholdGrpcFrames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "withhold_grpc_frames"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"withholdGrpcFrames")) ::
              Data.ProtoLens.FieldDescriptor FilterConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, contentType__field_descriptor),
           (Data.ProtoLens.Tag 2, withholdGrpcFrames__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FilterConfig'_unknownFields
        (\ x__ y__ -> x__ {_FilterConfig'_unknownFields = y__})
  defMessage
    = FilterConfig'_constructor
        {_FilterConfig'contentType = Data.ProtoLens.fieldDefault,
         _FilterConfig'withholdGrpcFrames = Data.ProtoLens.fieldDefault,
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
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "content_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"contentType") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "withhold_grpc_frames"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"withholdGrpcFrames") y x)
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
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"contentType") _x
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
                         (Data.ProtoLens.Field.field @"withholdGrpcFrames") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt
                            (\ b -> if b then 1 else 0)
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData FilterConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FilterConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FilterConfig'contentType x__)
                (Control.DeepSeq.deepseq
                   (_FilterConfig'withholdGrpcFrames x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcHttp1ReverseBridge.V3.Config_Fields.disabled' @:: Lens' FilterConfigPerRoute Prelude.Bool@ -}
data FilterConfigPerRoute
  = FilterConfigPerRoute'_constructor {_FilterConfigPerRoute'disabled :: !Prelude.Bool,
                                       _FilterConfigPerRoute'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FilterConfigPerRoute where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FilterConfigPerRoute "disabled" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterConfigPerRoute'disabled
           (\ x__ y__ -> x__ {_FilterConfigPerRoute'disabled = y__}))
        Prelude.id
instance Data.ProtoLens.Message FilterConfigPerRoute where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.grpc_http1_reverse_bridge.v3.FilterConfigPerRoute"
  packedMessageDescriptor _
    = "\n\
      \\DC4FilterConfigPerRoute\DC2\SUB\n\
      \\bdisabled\CAN\SOH \SOH(\bR\bdisabled:W\154\197\136\RSR\n\
      \Penvoy.config.filter.http.grpc_http1_reverse_bridge.v2alpha1.FilterConfigPerRoute"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        disabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "disabled"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"disabled")) ::
              Data.ProtoLens.FieldDescriptor FilterConfigPerRoute
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, disabled__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FilterConfigPerRoute'_unknownFields
        (\ x__ y__ -> x__ {_FilterConfigPerRoute'_unknownFields = y__})
  defMessage
    = FilterConfigPerRoute'_constructor
        {_FilterConfigPerRoute'disabled = Data.ProtoLens.fieldDefault,
         _FilterConfigPerRoute'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FilterConfigPerRoute
          -> Data.ProtoLens.Encoding.Bytes.Parser FilterConfigPerRoute
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "disabled"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"disabled") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FilterConfigPerRoute"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"disabled") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt
                         (\ b -> if b then 1 else 0)
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData FilterConfigPerRoute where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FilterConfigPerRoute'_unknownFields x__)
             (Control.DeepSeq.deepseq (_FilterConfigPerRoute'disabled x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Genvoy/extensions/filters/http/grpc_http1_reverse_bridge/v3/config.proto\DC2:envoy.extensions.filters.http.grpc_http1_reverse_bridge.v3\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\189\SOH\n\
    \\fFilterConfig\DC2*\n\
    \\fcontent_type\CAN\SOH \SOH(\tR\vcontentTypeB\a\250B\EOTr\STX\DLE\SOH\DC20\n\
    \\DC4withhold_grpc_frames\CAN\STX \SOH(\bR\DC2withholdGrpcFrames:O\154\197\136\RSJ\n\
    \Henvoy.config.filter.http.grpc_http1_reverse_bridge.v2alpha1.FilterConfig\"\139\SOH\n\
    \\DC4FilterConfigPerRoute\DC2\SUB\n\
    \\bdisabled\CAN\SOH \SOH(\bR\bdisabled:W\154\197\136\RSR\n\
    \Penvoy.config.filter.http.grpc_http1_reverse_bridge.v2alpha1.FilterConfigPerRouteBa\n\
    \Hio.envoyproxy.envoy.extensions.filters.http.grpc_http1_reverse_bridge.v3B\vConfigProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\174\v\n\
    \\ACK\DC2\EOT\NUL\NUL*\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NULC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL+\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NULa\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\b\NULa\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL,\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\t\NUL,\n\
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
    \\148\STX\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NUL \SOH\SUB* gRPC reverse bridge filter configuration\n\
    \2\219\SOH [#protodoc-title: gRPC HTTP/1.1 Reverse Bridge]\n\
    \ gRPC HTTP/1.1 Reverse Bridge :ref:`configuration overview\n\
    \ <config_http_filters_grpc_http1_reverse_bridge>`.\n\
    \ [#extension: envoy.filters.http.grpc_http1_reverse_bridge]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b\DC4\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\DC4\STX\NAKQ\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\DC4\STX\NAKQ\n\
    \\182\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\EM\STXC\SUB\168\SOH The content-type to pass to the upstream when the gRPC bridge filter is applied.\n\
    \ The filter will also validate that the upstream responds with the same content type.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\EM\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\EM\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\EM\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\EM\SUBB\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\EM\ESCA\n\
    \\172\STX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\US\STX \SUB\158\STX If true, Envoy will assume that the upstream doesn't understand gRPC frames and\n\
    \ strip the gRPC frame from the request, and add it back in to the response. This will\n\
    \ hide the gRPC semantics from the upstream, allowing it to receive and respond with a\n\
    \ simple binary encoded protobuf.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\US\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\US\a\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\US\RS\US\n\
    \d\n\
    \\STX\EOT\SOH\DC2\EOT#\NUL*\SOH\SUBX gRPC reverse bridge filter configuration per virtualhost/route/weighted-cluster level.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX#\b\FS\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT$\STX%Y\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT$\STX%Y\n\
    \\190\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX)\STX\DC4\SUB\176\SOH If true, disables gRPC reverse bridge filter for this particular vhost or route.\n\
    \ If disabled is specified in multiple per-filter-configs, the most specific one will be used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX)\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX)\a\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX)\DC2\DC3b\ACKproto3"