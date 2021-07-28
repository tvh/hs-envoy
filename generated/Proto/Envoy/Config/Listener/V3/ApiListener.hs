{- This file was auto-generated from envoy/config/listener/v3/api_listener.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Listener.V3.ApiListener (
        ApiListener()
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
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
{- | Fields :
     
         * 'Proto.Envoy.Config.Listener.V3.ApiListener_Fields.apiListener' @:: Lens' ApiListener Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Config.Listener.V3.ApiListener_Fields.maybe'apiListener' @:: Lens' ApiListener (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data ApiListener
  = ApiListener'_constructor {_ApiListener'apiListener :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                              _ApiListener'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ApiListener where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ApiListener "apiListener" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ApiListener'apiListener
           (\ x__ y__ -> x__ {_ApiListener'apiListener = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ApiListener "maybe'apiListener" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ApiListener'apiListener
           (\ x__ y__ -> x__ {_ApiListener'apiListener = y__}))
        Prelude.id
instance Data.ProtoLens.Message ApiListener where
  messageName _
    = Data.Text.pack "envoy.config.listener.v3.ApiListener"
  packedMessageDescriptor _
    = "\n\
      \\vApiListener\DC27\n\
      \\fapi_listener\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\vapiListener:+\154\197\136\RS&\n\
      \$envoy.config.listener.v2.ApiListener"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        apiListener__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "api_listener"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'apiListener")) ::
              Data.ProtoLens.FieldDescriptor ApiListener
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, apiListener__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ApiListener'_unknownFields
        (\ x__ y__ -> x__ {_ApiListener'_unknownFields = y__})
  defMessage
    = ApiListener'_constructor
        {_ApiListener'apiListener = Prelude.Nothing,
         _ApiListener'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ApiListener -> Data.ProtoLens.Encoding.Bytes.Parser ApiListener
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
                                       "api_listener"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"apiListener") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ApiListener"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'apiListener") _x
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
instance Control.DeepSeq.NFData ApiListener where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ApiListener'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ApiListener'apiListener x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \+envoy/config/listener/v3/api_listener.proto\DC2\CANenvoy.config.listener.v3\SUB\EMgoogle/protobuf/any.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"s\n\
    \\vApiListener\DC27\n\
    \\fapi_listener\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\vapiListener:+\154\197\136\RS&\n\
    \$envoy.config.listener.v2.ApiListenerBD\n\
    \&io.envoyproxy.envoy.config.listener.v3B\DLEApiListenerProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\183\b\n\
    \\ACK\DC2\EOT\NUL\NUL\US\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL!\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL#\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL?\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\t\NUL?\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL1\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\n\
    \\NUL1\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\v\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\f\NULF\n\
    \\210\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC2\NUL\US\SOH\SUB\162\SOH Describes a type of API listener, which is used in non-proxy clients. The type of API\n\
    \ exposed to the non-proxy application depends on the type of API listener.\n\
    \2! [#protodoc-title: API listener]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC2\b\DC3\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\DC3\STX\DC4-\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\DC3\STX\DC4-\n\
    \\245\EOT\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\RS\STX'\SUB\231\EOT The type in this field determines the type of API listener. At present, the following\n\
    \ types are supported:\n\
    \ envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager (HTTP)\n\
    \ [#next-major-version: In the v3 API, replace this Any field with a oneof containing the\n\
    \ specific config message for each type of API listener. We could not do this in v2 because\n\
    \ it would have caused circular dependencies for go protos: lds.proto depends on this file,\n\
    \ and http_connection_manager.proto depends on rds.proto, which is in the same directory as\n\
    \ lds.proto, so lds.proto cannot depend on this file.]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\RS\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\RS\SYN\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\RS%&b\ACKproto3"