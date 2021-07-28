{- This file was auto-generated from envoy/extensions/filters/http/aws_request_signing/v3/aws_request_signing.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.AwsRequestSigning.V3.AwsRequestSigning (
        AwsRequestSigning()
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
     
         * 'Proto.Envoy.Extensions.Filters.Http.AwsRequestSigning.V3.AwsRequestSigning_Fields.serviceName' @:: Lens' AwsRequestSigning Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.AwsRequestSigning.V3.AwsRequestSigning_Fields.region' @:: Lens' AwsRequestSigning Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.AwsRequestSigning.V3.AwsRequestSigning_Fields.hostRewrite' @:: Lens' AwsRequestSigning Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.AwsRequestSigning.V3.AwsRequestSigning_Fields.useUnsignedPayload' @:: Lens' AwsRequestSigning Prelude.Bool@ -}
data AwsRequestSigning
  = AwsRequestSigning'_constructor {_AwsRequestSigning'serviceName :: !Data.Text.Text,
                                    _AwsRequestSigning'region :: !Data.Text.Text,
                                    _AwsRequestSigning'hostRewrite :: !Data.Text.Text,
                                    _AwsRequestSigning'useUnsignedPayload :: !Prelude.Bool,
                                    _AwsRequestSigning'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AwsRequestSigning where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AwsRequestSigning "serviceName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AwsRequestSigning'serviceName
           (\ x__ y__ -> x__ {_AwsRequestSigning'serviceName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AwsRequestSigning "region" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AwsRequestSigning'region
           (\ x__ y__ -> x__ {_AwsRequestSigning'region = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AwsRequestSigning "hostRewrite" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AwsRequestSigning'hostRewrite
           (\ x__ y__ -> x__ {_AwsRequestSigning'hostRewrite = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AwsRequestSigning "useUnsignedPayload" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AwsRequestSigning'useUnsignedPayload
           (\ x__ y__ -> x__ {_AwsRequestSigning'useUnsignedPayload = y__}))
        Prelude.id
instance Data.ProtoLens.Message AwsRequestSigning where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.aws_request_signing.v3.AwsRequestSigning"
  packedMessageDescriptor _
    = "\n\
      \\DC1AwsRequestSigning\DC2*\n\
      \\fservice_name\CAN\SOH \SOH(\tR\vserviceNameB\a\250B\EOTr\STX\DLE\SOH\DC2\US\n\
      \\ACKregion\CAN\STX \SOH(\tR\ACKregionB\a\250B\EOTr\STX\DLE\SOH\DC2!\n\
      \\fhost_rewrite\CAN\ETX \SOH(\tR\vhostRewrite\DC20\n\
      \\DC4use_unsigned_payload\CAN\EOT \SOH(\bR\DC2useUnsignedPayload:M\154\197\136\RSH\n\
      \Fenvoy.config.filter.http.aws_request_signing.v2alpha.AwsRequestSigning"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        serviceName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"serviceName")) ::
              Data.ProtoLens.FieldDescriptor AwsRequestSigning
        region__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "region"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"region")) ::
              Data.ProtoLens.FieldDescriptor AwsRequestSigning
        hostRewrite__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "host_rewrite"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"hostRewrite")) ::
              Data.ProtoLens.FieldDescriptor AwsRequestSigning
        useUnsignedPayload__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "use_unsigned_payload"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"useUnsignedPayload")) ::
              Data.ProtoLens.FieldDescriptor AwsRequestSigning
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, serviceName__field_descriptor),
           (Data.ProtoLens.Tag 2, region__field_descriptor),
           (Data.ProtoLens.Tag 3, hostRewrite__field_descriptor),
           (Data.ProtoLens.Tag 4, useUnsignedPayload__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AwsRequestSigning'_unknownFields
        (\ x__ y__ -> x__ {_AwsRequestSigning'_unknownFields = y__})
  defMessage
    = AwsRequestSigning'_constructor
        {_AwsRequestSigning'serviceName = Data.ProtoLens.fieldDefault,
         _AwsRequestSigning'region = Data.ProtoLens.fieldDefault,
         _AwsRequestSigning'hostRewrite = Data.ProtoLens.fieldDefault,
         _AwsRequestSigning'useUnsignedPayload = Data.ProtoLens.fieldDefault,
         _AwsRequestSigning'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AwsRequestSigning
          -> Data.ProtoLens.Encoding.Bytes.Parser AwsRequestSigning
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
                                       "service_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"serviceName") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "region"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"region") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "host_rewrite"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"hostRewrite") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "use_unsigned_payload"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"useUnsignedPayload") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AwsRequestSigning"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"serviceName") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"region") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"hostRewrite") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
                               (Data.ProtoLens.Field.field @"useUnsignedPayload") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (\ b -> if b then 1 else 0)
                                  _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData AwsRequestSigning where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AwsRequestSigning'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AwsRequestSigning'serviceName x__)
                (Control.DeepSeq.deepseq
                   (_AwsRequestSigning'region x__)
                   (Control.DeepSeq.deepseq
                      (_AwsRequestSigning'hostRewrite x__)
                      (Control.DeepSeq.deepseq
                         (_AwsRequestSigning'useUnsignedPayload x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Nenvoy/extensions/filters/http/aws_request_signing/v3/aws_request_signing.proto\DC24envoy.extensions.filters.http.aws_request_signing.v3\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\132\STX\n\
    \\DC1AwsRequestSigning\DC2*\n\
    \\fservice_name\CAN\SOH \SOH(\tR\vserviceNameB\a\250B\EOTr\STX\DLE\SOH\DC2\US\n\
    \\ACKregion\CAN\STX \SOH(\tR\ACKregionB\a\250B\EOTr\STX\DLE\SOH\DC2!\n\
    \\fhost_rewrite\CAN\ETX \SOH(\tR\vhostRewrite\DC20\n\
    \\DC4use_unsigned_payload\CAN\EOT \SOH(\bR\DC2useUnsignedPayload:M\154\197\136\RSH\n\
    \Fenvoy.config.filter.http.aws_request_signing.v2alpha.AwsRequestSigningBf\n\
    \Bio.envoyproxy.envoy.extensions.filters.http.aws_request_signing.v3B\SYNAwsRequestSigningProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\236\SO\n\
    \\ACK\DC2\EOT\NUL\NUL2\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL=\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL+\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL[\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\b\NUL[\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL7\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\t\NUL7\n\
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
    \\132\STX\n\
    \\STX\EOT\NUL\DC2\EOT\DC2\NUL2\SOH\SUB= Top level configuration for the AWS request signing filter.\n\
    \2\184\SOH [#protodoc-title: AwsRequestSigning]\n\
    \ AwsRequestSigning :ref:`configuration overview <config_http_filters_aws_request_signing>`.\n\
    \ [#extension: envoy.filters.http.aws_request_signing]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC2\b\EM\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\DC3\STX\DC4O\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\DC3\STX\DC4O\n\
    \\185\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ESC\STXC\SUB\171\SOH The `service namespace\n\
    \ <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces>`_\n\
    \ of the HTTP endpoint.\n\
    \\n\
    \ Example: s3\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\ESC\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ESC\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ESC\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\ESC\SUBB\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\ESC\ESCA\n\
    \\136\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX!\STX=\SUB{ The `region <https://docs.aws.amazon.com/general/latest/gr/rande.html>`_ hosting the HTTP\n\
    \ endpoint.\n\
    \\n\
    \ Example: us-west-2\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX!\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX!\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX!\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX!\DC4<\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\SO\DC2\ETX!\NAK;\n\
    \\190\EOT\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX,\STX\SUB\SUB\176\EOT Indicates that before signing headers, the host header will be swapped with\n\
    \ this value. If not set or empty, the original host header value\n\
    \ will be used and no rewrite will happen.\n\
    \\n\
    \ Note: this rewrite affects both signing and host header forwarding. However, this\n\
    \ option shouldn't be used with\n\
    \ :ref:`HCM host rewrite <envoy_v3_api_field_config.route.v3.RouteAction.host_rewrite_literal>` given that the\n\
    \ value set here would be used for signing whereas the value set in the HCM would be used\n\
    \ for host header forwarding which is not the desired outcome.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX,\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX,\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX,\CAN\EM\n\
    \\180\STX\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX1\STX \SUB\166\STX Instead of buffering the request to calculate the payload hash, use the literal string ``UNSIGNED-PAYLOAD``\n\
    \ to calculate the payload hash. Not all services support this option. See the `S3\n\
    \ <https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-header-based-auth.html>`_ policy for details.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX1\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX1\a\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX1\RS\USb\ACKproto3"