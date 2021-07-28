{- This file was auto-generated from envoy/extensions/formatter/req_without_query/v3/req_without_query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Formatter.ReqWithoutQuery.V3.ReqWithoutQuery (
        ReqWithoutQuery()
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
data ReqWithoutQuery
  = ReqWithoutQuery'_constructor {_ReqWithoutQuery'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ReqWithoutQuery where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message ReqWithoutQuery where
  messageName _
    = Data.Text.pack
        "envoy.extensions.formatter.req_without_query.v3.ReqWithoutQuery"
  packedMessageDescriptor _
    = "\n\
      \\SIReqWithoutQuery"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ReqWithoutQuery'_unknownFields
        (\ x__ y__ -> x__ {_ReqWithoutQuery'_unknownFields = y__})
  defMessage
    = ReqWithoutQuery'_constructor
        {_ReqWithoutQuery'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ReqWithoutQuery
          -> Data.ProtoLens.Encoding.Bytes.Parser ReqWithoutQuery
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
          (do loop Data.ProtoLens.defMessage) "ReqWithoutQuery"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData ReqWithoutQuery where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_ReqWithoutQuery'_unknownFields x__) ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Genvoy/extensions/formatter/req_without_query/v3/req_without_query.proto\DC2/envoy.extensions.formatter.req_without_query.v3\SUB\GSudpa/annotations/status.proto\"\DC1\n\
    \\SIReqWithoutQueryB_\n\
    \=io.envoyproxy.envoy.extensions.formatter.req_without_query.v3B\DC4ReqWithoutQueryProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\201\b\n\
    \\ACK\DC2\EOT\NUL\NUL\FS\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL8\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NULV\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\ACK\NULV\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NUL5\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\a\NUL5\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\b\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\t\NULF\n\
    \\187\a\n\
    \\STX\EOT\NUL\DC2\EOT\ESC\NUL\FS\SOH\SUB8 Configuration for the request without query formatter.\n\
    \2\131\SOH [#protodoc-title: Formatter extension for printing request without query string]\n\
    \ [#extension: envoy.formatter.req_without_query]\n\
    \2\234\STX ReqWithoutQuery formatter extension implements REQ_WITHOUT_QUERY command operator that\n\
    \ works the same way as :ref:`REQ <config_access_log_format_req>` except that it will\n\
    \ remove the query string. It is used to avoid logging any sensitive information into\n\
    \ the access log.\n\
    \ See :ref:`here <config_access_log>` for more information on access log configuration.\n\
    \2\129\ETX %REQ_WITHOUT_QUERY(X?Y):Z%\n\
    \   An HTTP request header where X is the main HTTP header, Y is the alternative one, and Z is an\n\
    \   optional parameter denoting string truncation up to Z characters long. The value is taken from\n\
    \   the HTTP request header named X first and if it's not set, then request header Y is used. If\n\
    \   none of the headers are present '-' symbol will be in the log.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ESC\b\ETBb\ACKproto3"