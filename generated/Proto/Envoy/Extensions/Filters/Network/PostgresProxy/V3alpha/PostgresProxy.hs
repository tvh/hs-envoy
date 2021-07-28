{- This file was auto-generated from envoy/extensions/filters/network/postgres_proxy/v3alpha/postgres_proxy.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Network.PostgresProxy.V3alpha.PostgresProxy (
        PostgresProxy()
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
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.PostgresProxy.V3alpha.PostgresProxy_Fields.statPrefix' @:: Lens' PostgresProxy Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.PostgresProxy.V3alpha.PostgresProxy_Fields.enableSqlParsing' @:: Lens' PostgresProxy Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Extensions.Filters.Network.PostgresProxy.V3alpha.PostgresProxy_Fields.maybe'enableSqlParsing' @:: Lens' PostgresProxy (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Extensions.Filters.Network.PostgresProxy.V3alpha.PostgresProxy_Fields.terminateSsl' @:: Lens' PostgresProxy Prelude.Bool@ -}
data PostgresProxy
  = PostgresProxy'_constructor {_PostgresProxy'statPrefix :: !Data.Text.Text,
                                _PostgresProxy'enableSqlParsing :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                _PostgresProxy'terminateSsl :: !Prelude.Bool,
                                _PostgresProxy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PostgresProxy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PostgresProxy "statPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PostgresProxy'statPrefix
           (\ x__ y__ -> x__ {_PostgresProxy'statPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PostgresProxy "enableSqlParsing" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PostgresProxy'enableSqlParsing
           (\ x__ y__ -> x__ {_PostgresProxy'enableSqlParsing = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField PostgresProxy "maybe'enableSqlParsing" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PostgresProxy'enableSqlParsing
           (\ x__ y__ -> x__ {_PostgresProxy'enableSqlParsing = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PostgresProxy "terminateSsl" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PostgresProxy'terminateSsl
           (\ x__ y__ -> x__ {_PostgresProxy'terminateSsl = y__}))
        Prelude.id
instance Data.ProtoLens.Message PostgresProxy where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.postgres_proxy.v3alpha.PostgresProxy"
  packedMessageDescriptor _
    = "\n\
      \\rPostgresProxy\DC2(\n\
      \\vstat_prefix\CAN\SOH \SOH(\tR\n\
      \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2H\n\
      \\DC2enable_sql_parsing\CAN\STX \SOH(\v2\SUB.google.protobuf.BoolValueR\DLEenableSqlParsing\DC2#\n\
      \\rterminate_ssl\CAN\ETX \SOH(\bR\fterminateSsl"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        statPrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stat_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"statPrefix")) ::
              Data.ProtoLens.FieldDescriptor PostgresProxy
        enableSqlParsing__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enable_sql_parsing"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'enableSqlParsing")) ::
              Data.ProtoLens.FieldDescriptor PostgresProxy
        terminateSsl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "terminate_ssl"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"terminateSsl")) ::
              Data.ProtoLens.FieldDescriptor PostgresProxy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, statPrefix__field_descriptor),
           (Data.ProtoLens.Tag 2, enableSqlParsing__field_descriptor),
           (Data.ProtoLens.Tag 3, terminateSsl__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PostgresProxy'_unknownFields
        (\ x__ y__ -> x__ {_PostgresProxy'_unknownFields = y__})
  defMessage
    = PostgresProxy'_constructor
        {_PostgresProxy'statPrefix = Data.ProtoLens.fieldDefault,
         _PostgresProxy'enableSqlParsing = Prelude.Nothing,
         _PostgresProxy'terminateSsl = Data.ProtoLens.fieldDefault,
         _PostgresProxy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PostgresProxy -> Data.ProtoLens.Encoding.Bytes.Parser PostgresProxy
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
                                       "stat_prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"statPrefix") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "enable_sql_parsing"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"enableSqlParsing") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "terminate_ssl"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"terminateSsl") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PostgresProxy"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"statPrefix") _x
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'enableSqlParsing") _x
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
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"terminateSsl") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt
                               (\ b -> if b then 1 else 0)
                               _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData PostgresProxy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PostgresProxy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PostgresProxy'statPrefix x__)
                (Control.DeepSeq.deepseq
                   (_PostgresProxy'enableSqlParsing x__)
                   (Control.DeepSeq.deepseq (_PostgresProxy'terminateSsl x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Lenvoy/extensions/filters/network/postgres_proxy/v3alpha/postgres_proxy.proto\DC27envoy.extensions.filters.network.postgres_proxy.v3alpha\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\168\SOH\n\
    \\rPostgresProxy\DC2(\n\
    \\vstat_prefix\CAN\SOH \SOH(\tR\n\
    \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2H\n\
    \\DC2enable_sql_parsing\CAN\STX \SOH(\v2\SUB.google.protobuf.BoolValueR\DLEenableSqlParsing\DC2#\n\
    \\rterminate_ssl\CAN\ETX \SOH(\bR\fterminateSslBm\n\
    \Eio.envoyproxy.envoy.extensions.filters.network.postgres_proxy.v3alphaB\DC2PostgresProxyProtoP\SOH\186\128\200\209\ACK\STX\b\SOH\186\128\200\209\ACK\STX\DLE\STXJ\174\f\n\
    \\ACK\DC2\EOT\NUL\NUL(\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL@\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL^\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\t\NUL^\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL3\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\n\
    \\NUL3\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\v\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL>\n\
    \\r\n\
    \\ACK\b\135\128\153j\SOH\DC2\ETX\f\NUL>\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \\188\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC4\NUL(\SOH2\175\SOH [#protodoc-title: Postgres proxy]\n\
    \ Postgres Proxy :ref:`configuration overview\n\
    \ <config_network_filters_postgres_proxy>`.\n\
    \ [#extension: envoy.filters.network.postgres_proxy]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC4\b\NAK\n\
    \\DEL\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ETB\STXB\SUBr The human readable prefix to use when emitting :ref:`statistics\n\
    \ <config_network_filters_postgres_proxy_stats>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\ETB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ETB\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ETB\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\ETB\EMA\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\ETB\SUB@\n\
    \\178\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\FS\STX3\SUB\164\SOH Controls whether SQL statements received in Frontend Query messages\n\
    \ are parsed. Parsing is required to produce Postgres proxy filter\n\
    \ metadata. Defaults to true.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\FS\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\FS\FS.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\FS12\n\
    \\223\ENQ\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX'\STX\EM\SUB\209\ENQ Controls whether to terminate SSL session initiated by a client.\n\
    \ If the value is false, the Postgres proxy filter will not try to\n\
    \ terminate SSL session, but will pass all the packets to the upstream server.\n\
    \ If the value is true, the Postgres proxy filter will try to terminate SSL\n\
    \ session. In order to do that, the filter chain must use :ref:`starttls transport socket\n\
    \ <envoy_v3_api_msg_extensions.transport_sockets.starttls.v3.StartTlsConfig>`.\n\
    \ If the filter does not manage to terminate the SSL session, it will close the connection from the client.\n\
    \ Refer to official documentation for details\n\
    \ `SSL Session Encryption Message Flow <https://www.postgresql.org/docs/current/protocol-flow.html#id-1.10.5.7.11>`_.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX'\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX'\a\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX'\ETB\CANb\ACKproto3"