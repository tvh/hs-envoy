{- This file was auto-generated from envoy/extensions/retry/host/omit_canary_hosts/v3/omit_canary_hosts.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Retry.Host.OmitCanaryHosts.V3.OmitCanaryHosts (
        OmitCanaryHostsPredicate()
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
{- | Fields :
      -}
data OmitCanaryHostsPredicate
  = OmitCanaryHostsPredicate'_constructor {_OmitCanaryHostsPredicate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OmitCanaryHostsPredicate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message OmitCanaryHostsPredicate where
  messageName _
    = Data.Text.pack
        "envoy.extensions.retry.host.omit_canary_hosts.v3.OmitCanaryHostsPredicate"
  packedMessageDescriptor _
    = "\n\
      \\CANOmitCanaryHostsPredicate:G\154\197\136\RSB\n\
      \@envoy.config.retry.omit_canary_hosts.v2.OmitCanaryHostsPredicate"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OmitCanaryHostsPredicate'_unknownFields
        (\ x__ y__ -> x__ {_OmitCanaryHostsPredicate'_unknownFields = y__})
  defMessage
    = OmitCanaryHostsPredicate'_constructor
        {_OmitCanaryHostsPredicate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          OmitCanaryHostsPredicate
          -> Data.ProtoLens.Encoding.Bytes.Parser OmitCanaryHostsPredicate
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
          (do loop Data.ProtoLens.defMessage) "OmitCanaryHostsPredicate"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData OmitCanaryHostsPredicate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_OmitCanaryHostsPredicate'_unknownFields x__) ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Henvoy/extensions/retry/host/omit_canary_hosts/v3/omit_canary_hosts.proto\DC20envoy.extensions.retry.host.omit_canary_hosts.v3\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"c\n\
    \\CANOmitCanaryHostsPredicate:G\154\197\136\RSB\n\
    \@envoy.config.retry.omit_canary_hosts.v2.OmitCanaryHostsPredicateB`\n\
    \>io.envoyproxy.envoy.extensions.retry.host.omit_canary_hosts.v3B\DC4OmitCanaryHostsProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\176\STX\n\
    \\ACK\DC2\EOT\NUL\NUL\DC2\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL9\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NULW\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\a\NULW\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL5\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\b\NUL5\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\t\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\n\
    \\NULF\n\
    \y\n\
    \\STX\EOT\NUL\DC2\EOT\SI\NUL\DC2\SOH2m [#protodoc-title: Omit Canary Hosts Predicate]\n\
    \ [#extension: envoy.retry_host_predicates.omit_canary_hosts]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SI\b \n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\DLE\STX\DC1I\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\DLE\STX\DC1Ib\ACKproto3"