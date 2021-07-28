{- This file was auto-generated from envoy/config/grpc_credential/v3/aws_iam.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.GrpcCredential.V3.AwsIam (
        AwsIamConfig()
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
     
         * 'Proto.Envoy.Config.GrpcCredential.V3.AwsIam_Fields.serviceName' @:: Lens' AwsIamConfig Data.Text.Text@
         * 'Proto.Envoy.Config.GrpcCredential.V3.AwsIam_Fields.region' @:: Lens' AwsIamConfig Data.Text.Text@ -}
data AwsIamConfig
  = AwsIamConfig'_constructor {_AwsIamConfig'serviceName :: !Data.Text.Text,
                               _AwsIamConfig'region :: !Data.Text.Text,
                               _AwsIamConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AwsIamConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AwsIamConfig "serviceName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AwsIamConfig'serviceName
           (\ x__ y__ -> x__ {_AwsIamConfig'serviceName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AwsIamConfig "region" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AwsIamConfig'region
           (\ x__ y__ -> x__ {_AwsIamConfig'region = y__}))
        Prelude.id
instance Data.ProtoLens.Message AwsIamConfig where
  messageName _
    = Data.Text.pack "envoy.config.grpc_credential.v3.AwsIamConfig"
  packedMessageDescriptor _
    = "\n\
      \\fAwsIamConfig\DC2*\n\
      \\fservice_name\CAN\SOH \SOH(\tR\vserviceNameB\a\250B\EOTr\STX\DLE\SOH\DC2\SYN\n\
      \\ACKregion\CAN\STX \SOH(\tR\ACKregion:8\154\197\136\RS3\n\
      \1envoy.config.grpc_credential.v2alpha.AwsIamConfig"
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
              Data.ProtoLens.FieldDescriptor AwsIamConfig
        region__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "region"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"region")) ::
              Data.ProtoLens.FieldDescriptor AwsIamConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, serviceName__field_descriptor),
           (Data.ProtoLens.Tag 2, region__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AwsIamConfig'_unknownFields
        (\ x__ y__ -> x__ {_AwsIamConfig'_unknownFields = y__})
  defMessage
    = AwsIamConfig'_constructor
        {_AwsIamConfig'serviceName = Data.ProtoLens.fieldDefault,
         _AwsIamConfig'region = Data.ProtoLens.fieldDefault,
         _AwsIamConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AwsIamConfig -> Data.ProtoLens.Encoding.Bytes.Parser AwsIamConfig
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AwsIamConfig"
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData AwsIamConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AwsIamConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AwsIamConfig'serviceName x__)
                (Control.DeepSeq.deepseq (_AwsIamConfig'region x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \-envoy/config/grpc_credential/v3/aws_iam.proto\DC2\USenvoy.config.grpc_credential.v3\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\140\SOH\n\
    \\fAwsIamConfig\DC2*\n\
    \\fservice_name\CAN\SOH \SOH(\tR\vserviceNameB\a\250B\EOTr\STX\DLE\SOH\DC2\SYN\n\
    \\ACKregion\CAN\STX \SOH(\tR\ACKregion:8\154\197\136\RS3\n\
    \1envoy.config.grpc_credential.v2alpha.AwsIamConfigBF\n\
    \-io.envoyproxy.envoy.config.grpc_credential.v3B\vAwsIamProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\252\ACK\n\
    \\ACK\DC2\EOT\NUL\NUL\"\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL(\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL+\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NULF\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\b\NULF\n\
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
    \\155\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC1\NUL\"\SOH2\142\SOH [#protodoc-title: Grpc Credentials AWS IAM]\n\
    \ Configuration for AWS IAM Grpc Credentials Plugin\n\
    \ [#extension: envoy.grpc_credentials.aws_iam]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC1\b\DC4\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\DC2\STX\DC3:\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\DC2\STX\DC3:\n\
    \\190\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SUB\STXC\SUB\176\SOH The `service namespace\n\
    \ <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces>`_\n\
    \ of the Grpc endpoint.\n\
    \\n\
    \ Example: appmesh\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SUB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SUB\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SUB\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\SUB\SUBB\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\SUB\ESCA\n\
    \\231\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX!\STX\DC4\SUB\217\SOH The `region <https://docs.aws.amazon.com/general/latest/gr/rande.html>`_ hosting the Grpc\n\
    \ endpoint. If unspecified, the extension will use the value in the ``AWS_REGION`` environment\n\
    \ variable.\n\
    \\n\
    \ Example: us-west-2\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX!\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX!\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX!\DC2\DC3b\ACKproto3"