{- This file was auto-generated from envoy/config/core/v3/http_uri.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Core.V3.HttpUri (
        HttpUri(), HttpUri'HttpUpstreamType(..), _HttpUri'Cluster
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
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.HttpUri_Fields.uri' @:: Lens' HttpUri Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.HttpUri_Fields.timeout' @:: Lens' HttpUri Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Core.V3.HttpUri_Fields.maybe'timeout' @:: Lens' HttpUri (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Core.V3.HttpUri_Fields.maybe'httpUpstreamType' @:: Lens' HttpUri (Prelude.Maybe HttpUri'HttpUpstreamType)@
         * 'Proto.Envoy.Config.Core.V3.HttpUri_Fields.maybe'cluster' @:: Lens' HttpUri (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Config.Core.V3.HttpUri_Fields.cluster' @:: Lens' HttpUri Data.Text.Text@ -}
data HttpUri
  = HttpUri'_constructor {_HttpUri'uri :: !Data.Text.Text,
                          _HttpUri'timeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                          _HttpUri'httpUpstreamType :: !(Prelude.Maybe HttpUri'HttpUpstreamType),
                          _HttpUri'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpUri where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data HttpUri'HttpUpstreamType
  = HttpUri'Cluster !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField HttpUri "uri" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpUri'uri (\ x__ y__ -> x__ {_HttpUri'uri = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpUri "timeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpUri'timeout (\ x__ y__ -> x__ {_HttpUri'timeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpUri "maybe'timeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpUri'timeout (\ x__ y__ -> x__ {_HttpUri'timeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpUri "maybe'httpUpstreamType" (Prelude.Maybe HttpUri'HttpUpstreamType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpUri'httpUpstreamType
           (\ x__ y__ -> x__ {_HttpUri'httpUpstreamType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpUri "maybe'cluster" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpUri'httpUpstreamType
           (\ x__ y__ -> x__ {_HttpUri'httpUpstreamType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpUri'Cluster x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HttpUri'Cluster y__))
instance Data.ProtoLens.Field.HasField HttpUri "cluster" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpUri'httpUpstreamType
           (\ x__ y__ -> x__ {_HttpUri'httpUpstreamType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpUri'Cluster x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HttpUri'Cluster y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message HttpUri where
  messageName _ = Data.Text.pack "envoy.config.core.v3.HttpUri"
  packedMessageDescriptor _
    = "\n\
      \\aHttpUri\DC2\EM\n\
      \\ETXuri\CAN\SOH \SOH(\tR\ETXuriB\a\250B\EOTr\STX\DLE\SOH\DC2#\n\
      \\acluster\CAN\STX \SOH(\tH\NULR\aclusterB\a\250B\EOTr\STX\DLE\SOH\DC2?\n\
      \\atimeout\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\atimeoutB\n\
      \\250B\a\170\SOH\EOT\b\SOH2\NULB\EM\n\
      \\DC2http_upstream_type\DC2\ETX\248B\SOH: \154\197\136\RS\ESC\n\
      \\EMenvoy.api.v2.core.HttpUri"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        uri__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uri"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"uri")) ::
              Data.ProtoLens.FieldDescriptor HttpUri
        timeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timeout")) ::
              Data.ProtoLens.FieldDescriptor HttpUri
        cluster__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cluster")) ::
              Data.ProtoLens.FieldDescriptor HttpUri
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, uri__field_descriptor),
           (Data.ProtoLens.Tag 3, timeout__field_descriptor),
           (Data.ProtoLens.Tag 2, cluster__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpUri'_unknownFields
        (\ x__ y__ -> x__ {_HttpUri'_unknownFields = y__})
  defMessage
    = HttpUri'_constructor
        {_HttpUri'uri = Data.ProtoLens.fieldDefault,
         _HttpUri'timeout = Prelude.Nothing,
         _HttpUri'httpUpstreamType = Prelude.Nothing,
         _HttpUri'_unknownFields = []}
  parseMessage
    = let
        loop :: HttpUri -> Data.ProtoLens.Encoding.Bytes.Parser HttpUri
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
                                       "uri"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"uri") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "timeout"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"timeout") y x)
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
                                       "cluster"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cluster") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HttpUri"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"uri") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'timeout") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
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
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'httpUpstreamType") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just (HttpUri'Cluster v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.Text.Encoding.encodeUtf8
                                v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData HttpUri where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpUri'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpUri'uri x__)
                (Control.DeepSeq.deepseq
                   (_HttpUri'timeout x__)
                   (Control.DeepSeq.deepseq (_HttpUri'httpUpstreamType x__) ())))
instance Control.DeepSeq.NFData HttpUri'HttpUpstreamType where
  rnf (HttpUri'Cluster x__) = Control.DeepSeq.rnf x__
_HttpUri'Cluster ::
  Data.ProtoLens.Prism.Prism' HttpUri'HttpUpstreamType Data.Text.Text
_HttpUri'Cluster
  = Data.ProtoLens.Prism.prism'
      HttpUri'Cluster
      (\ p__
         -> case p__ of { (HttpUri'Cluster p__val) -> Prelude.Just p__val })
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \#envoy/config/core/v3/http_uri.proto\DC2\DC4envoy.config.core.v3\SUB\RSgoogle/protobuf/duration.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\199\SOH\n\
    \\aHttpUri\DC2\EM\n\
    \\ETXuri\CAN\SOH \SOH(\tR\ETXuriB\a\250B\EOTr\STX\DLE\SOH\DC2#\n\
    \\acluster\CAN\STX \SOH(\tH\NULR\aclusterB\a\250B\EOTr\STX\DLE\SOH\DC2?\n\
    \\atimeout\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\atimeoutB\n\
    \\250B\a\170\SOH\EOT\b\SOH2\NULB\EM\n\
    \\DC2http_upstream_type\DC2\ETX\248B\SOH: \154\197\136\RS\ESC\n\
    \\EMenvoy.api.v2.core.HttpUriB<\n\
    \\"io.envoyproxy.envoy.config.core.v3B\fHttpUriProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\253\t\n\
    \\ACK\DC2\EOT\NUL\NUL7\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL+\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL;\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\n\
    \\NUL;\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL-\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\v\NUL-\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\f\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \S\n\
    \\STX\EOT\NUL\DC2\EOT\DC2\NUL7\SOH\SUB\US Envoy external URI descriptor\n\
    \2& [#protodoc-title: HTTP Service URI ]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC2\b\SI\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DC3\STX[\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\DC3\STX[\n\
    \\179\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\GS\STX:\SUB\165\SOH The HTTP server URI. It should be a full FQDN with protocol, host and path.\n\
    \\n\
    \ Example:\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \    uri: https://www.googleapis.com/oauth2/v1/certs\n\
    \\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\GS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\GS\t\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\GS\SI\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\GS\DC19\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\GS\DC28\n\
    \\245\SOH\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT#\STX0\ETX\SUB\230\SOH Specify how `uri` is to be fetched. Today, this requires an explicit\n\
    \ cluster, but in the future we may support dynamic cluster creation or\n\
    \ inline DNS resolution. See `issue\n\
    \ <https://github.com/envoyproxy/envoy/issues/1606>`_.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX#\b\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\ETX$\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\ETX$\EOT&\n\
    \\185\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX/\EOT@\SUB\171\SOH A cluster is created in the Envoy \"cluster_manager\" config\n\
    \ section. This field specifies the cluster name.\n\
    \\n\
    \ Example:\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \    cluster: jwks_cluster\n\
    \\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX/\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX/\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX/\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX/\ETB?\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\SO\DC2\ETX/\CAN>\n\
    \j\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOT3\STX6\ENQ\SUB\\ Sets the maximum duration in milliseconds that a response can take to arrive upon request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX3\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX3\ESC\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX3%&\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\EOT3'6\EOT\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\STX\b\175\b\NAK\DC2\EOT3(6\ETXb\ACKproto3"