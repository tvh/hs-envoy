{- This file was auto-generated from envoy/extensions/upstreams/http/http/v3/http_connection_pool.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Upstreams.Http.Http.V3.HttpConnectionPool (
        HttpConnectionPoolProto()
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
{- | Fields :
      -}
data HttpConnectionPoolProto
  = HttpConnectionPoolProto'_constructor {_HttpConnectionPoolProto'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpConnectionPoolProto where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message HttpConnectionPoolProto where
  messageName _
    = Data.Text.pack
        "envoy.extensions.upstreams.http.http.v3.HttpConnectionPoolProto"
  packedMessageDescriptor _
    = "\n\
      \\ETBHttpConnectionPoolProto"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpConnectionPoolProto'_unknownFields
        (\ x__ y__ -> x__ {_HttpConnectionPoolProto'_unknownFields = y__})
  defMessage
    = HttpConnectionPoolProto'_constructor
        {_HttpConnectionPoolProto'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpConnectionPoolProto
          -> Data.ProtoLens.Encoding.Bytes.Parser HttpConnectionPoolProto
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
                      case tag of {
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x) }
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HttpConnectionPoolProto"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData HttpConnectionPoolProto where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpConnectionPoolProto'_unknownFields x__) ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Benvoy/extensions/upstreams/http/http/v3/http_connection_pool.proto\DC2'envoy.extensions.upstreams.http.http.v3\SUB\GSudpa/annotations/status.proto\"\EM\n\
    \\ETBHttpConnectionPoolProtoBd\n\
    \5io.envoyproxy.envoy.extensions.upstreams.http.http.v3B!HttpConnectionPoolProtoOuterClassP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\181\STX\n\
    \\ACK\DC2\EOT\NUL\NUL\DLE\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL0\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NULN\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\ACK\NULN\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NULB\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\a\NULB\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\b\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\t\NULF\n\
    \\167\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\SI\NUL\DLE\SOH\SUBp A connection pool which forwards downstream HTTP as HTTP to upstream.\n\
    \ [#extension: envoy.upstreams.http.http]\n\
    \2) [#protodoc-title: Http Connection Pool]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SI\b\USb\ACKproto3"