{- This file was auto-generated from envoy/type/matcher/v3/path.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Type.Matcher.V3.Path (
        PathMatcher(), PathMatcher'Rule(..), _PathMatcher'Path
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
import qualified Proto.Envoy.Type.Matcher.V3.String
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Type.Matcher.V3.Path_Fields.maybe'rule' @:: Lens' PathMatcher (Prelude.Maybe PathMatcher'Rule)@
         * 'Proto.Envoy.Type.Matcher.V3.Path_Fields.maybe'path' @:: Lens' PathMatcher (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.StringMatcher)@
         * 'Proto.Envoy.Type.Matcher.V3.Path_Fields.path' @:: Lens' PathMatcher Proto.Envoy.Type.Matcher.V3.String.StringMatcher@ -}
data PathMatcher
  = PathMatcher'_constructor {_PathMatcher'rule :: !(Prelude.Maybe PathMatcher'Rule),
                              _PathMatcher'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PathMatcher where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data PathMatcher'Rule
  = PathMatcher'Path !Proto.Envoy.Type.Matcher.V3.String.StringMatcher
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField PathMatcher "maybe'rule" (Prelude.Maybe PathMatcher'Rule) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PathMatcher'rule (\ x__ y__ -> x__ {_PathMatcher'rule = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PathMatcher "maybe'path" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.StringMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PathMatcher'rule (\ x__ y__ -> x__ {_PathMatcher'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PathMatcher'Path x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PathMatcher'Path y__))
instance Data.ProtoLens.Field.HasField PathMatcher "path" Proto.Envoy.Type.Matcher.V3.String.StringMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PathMatcher'rule (\ x__ y__ -> x__ {_PathMatcher'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PathMatcher'Path x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PathMatcher'Path y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message PathMatcher where
  messageName _ = Data.Text.pack "envoy.type.matcher.v3.PathMatcher"
  packedMessageDescriptor _
    = "\n\
      \\vPathMatcher\DC2D\n\
      \\EOTpath\CAN\SOH \SOH(\v2$.envoy.type.matcher.v3.StringMatcherH\NULR\EOTpathB\b\250B\ENQ\138\SOH\STX\DLE\SOHB\v\n\
      \\EOTrule\DC2\ETX\248B\SOH:%\154\197\136\RS \n\
      \\RSenvoy.type.matcher.PathMatcher"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.String.StringMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'path")) ::
              Data.ProtoLens.FieldDescriptor PathMatcher
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, path__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PathMatcher'_unknownFields
        (\ x__ y__ -> x__ {_PathMatcher'_unknownFields = y__})
  defMessage
    = PathMatcher'_constructor
        {_PathMatcher'rule = Prelude.Nothing,
         _PathMatcher'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PathMatcher -> Data.ProtoLens.Encoding.Bytes.Parser PathMatcher
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
                                       "path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PathMatcher"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rule") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (PathMatcher'Path v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData PathMatcher where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PathMatcher'_unknownFields x__)
             (Control.DeepSeq.deepseq (_PathMatcher'rule x__) ())
instance Control.DeepSeq.NFData PathMatcher'Rule where
  rnf (PathMatcher'Path x__) = Control.DeepSeq.rnf x__
_PathMatcher'Path ::
  Data.ProtoLens.Prism.Prism' PathMatcher'Rule Proto.Envoy.Type.Matcher.V3.String.StringMatcher
_PathMatcher'Path
  = Data.ProtoLens.Prism.prism'
      PathMatcher'Path
      (\ p__
         -> case p__ of {
              (PathMatcher'Path p__val) -> Prelude.Just p__val })
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \ envoy/type/matcher/v3/path.proto\DC2\NAKenvoy.type.matcher.v3\SUB\"envoy/type/matcher/v3/string.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\135\SOH\n\
    \\vPathMatcher\DC2D\n\
    \\EOTpath\CAN\SOH \SOH(\v2$.envoy.type.matcher.v3.StringMatcherH\NULR\EOTpathB\b\250B\ENQ\138\SOH\STX\DLE\SOHB\v\n\
    \\EOTrule\DC2\ETX\248B\SOH:%\154\197\136\RS \n\
    \\RSenvoy.type.matcher.PathMatcherB:\n\
    \#io.envoyproxy.envoy.type.matcher.v3B\tPathProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\175\ENQ\n\
    \\ACK\DC2\EOT\NUL\NUL\GS\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL,\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL+\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL<\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\n\
    \\NUL<\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL*\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\v\NUL*\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\f\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \c\n\
    \\STX\EOT\NUL\DC2\EOT\DC2\NUL\GS\SOH\SUB4 Specifies the way to match a path on HTTP request.\n\
    \2! [#protodoc-title: Path matcher]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC2\b\DC3\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DC3\STX`\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\DC3\STX`\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\NAK\STX\FS\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\NAK\b\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\ETX\SYN\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\ETX\SYN\EOT&\n\
    \\251\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ESC\EOTI\SUB\237\SOH The `path` must match the URL path portion of the :path header. The query and fragment\n\
    \ string (if present) are removed in the URL path portion.\n\
    \ For example, the path */data* will match the *:path* header */data#fragment?param=value*.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\ESC\EOT\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ESC\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ESC\EM\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\ESC\ESCH\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DC1\DC2\ETX\ESC\FSGb\ACKproto3"