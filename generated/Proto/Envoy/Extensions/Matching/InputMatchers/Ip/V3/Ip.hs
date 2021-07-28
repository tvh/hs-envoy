{- This file was auto-generated from envoy/extensions/matching/input_matchers/ip/v3/ip.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Matching.InputMatchers.Ip.V3.Ip (
        Ip()
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
import qualified Proto.Envoy.Config.Core.V3.Address
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Matching.InputMatchers.Ip.V3.Ip_Fields.cidrRanges' @:: Lens' Ip [Proto.Envoy.Config.Core.V3.Address.CidrRange]@
         * 'Proto.Envoy.Extensions.Matching.InputMatchers.Ip.V3.Ip_Fields.vec'cidrRanges' @:: Lens' Ip (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.CidrRange)@
         * 'Proto.Envoy.Extensions.Matching.InputMatchers.Ip.V3.Ip_Fields.statPrefix' @:: Lens' Ip Data.Text.Text@ -}
data Ip
  = Ip'_constructor {_Ip'cidrRanges :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.CidrRange),
                     _Ip'statPrefix :: !Data.Text.Text,
                     _Ip'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Ip where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Ip "cidrRanges" [Proto.Envoy.Config.Core.V3.Address.CidrRange] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Ip'cidrRanges (\ x__ y__ -> x__ {_Ip'cidrRanges = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Ip "vec'cidrRanges" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.CidrRange) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Ip'cidrRanges (\ x__ y__ -> x__ {_Ip'cidrRanges = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Ip "statPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Ip'statPrefix (\ x__ y__ -> x__ {_Ip'statPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Message Ip where
  messageName _
    = Data.Text.pack
        "envoy.extensions.matching.input_matchers.ip.v3.Ip"
  packedMessageDescriptor _
    = "\n\
      \\STXIp\DC2J\n\
      \\vcidr_ranges\CAN\SOH \ETX(\v2\US.envoy.config.core.v3.CidrRangeR\n\
      \cidrRangesB\b\250B\ENQ\146\SOH\STX\b\SOH\DC2(\n\
      \\vstat_prefix\CAN\STX \SOH(\tR\n\
      \statPrefixB\a\250B\EOTr\STX\DLE\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cidrRanges__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cidr_ranges"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.CidrRange)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"cidrRanges")) ::
              Data.ProtoLens.FieldDescriptor Ip
        statPrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stat_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"statPrefix")) ::
              Data.ProtoLens.FieldDescriptor Ip
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cidrRanges__field_descriptor),
           (Data.ProtoLens.Tag 2, statPrefix__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Ip'_unknownFields (\ x__ y__ -> x__ {_Ip'_unknownFields = y__})
  defMessage
    = Ip'_constructor
        {_Ip'cidrRanges = Data.Vector.Generic.empty,
         _Ip'statPrefix = Data.ProtoLens.fieldDefault,
         _Ip'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Ip
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Address.CidrRange
             -> Data.ProtoLens.Encoding.Bytes.Parser Ip
        loop x mutable'cidrRanges
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'cidrRanges <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'cidrRanges)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields
                           (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'cidrRanges")
                              frozen'cidrRanges
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "cidr_ranges"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'cidrRanges y)
                                loop x v
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
                                       "stat_prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"statPrefix") y x)
                                  mutable'cidrRanges
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'cidrRanges
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'cidrRanges <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'cidrRanges)
          "Ip"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
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
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'cidrRanges") _x))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"statPrefix") _x
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
instance Control.DeepSeq.NFData Ip where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Ip'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Ip'cidrRanges x__)
                (Control.DeepSeq.deepseq (_Ip'statPrefix x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \7envoy/extensions/matching/input_matchers/ip/v3/ip.proto\DC2.envoy.extensions.matching.input_matchers.ip.v3\SUB\"envoy/config/core/v3/address.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"z\n\
    \\STXIp\DC2J\n\
    \\vcidr_ranges\CAN\SOH \ETX(\v2\US.envoy.config.core.v3.CidrRangeR\n\
    \cidrRangesB\b\250B\ENQ\146\SOH\STX\b\SOH\DC2(\n\
    \\vstat_prefix\CAN\STX \SOH(\tR\n\
    \statPrefixB\a\250B\EOTr\STX\DLE\SOHBQ\n\
    \<io.envoyproxy.envoy.extensions.matching.input_matchers.ip.v3B\aIpProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\183\n\
    \\n\
    \\ACK\DC2\EOT\NUL\NUL%\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL7\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL,\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NULU\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\t\NULU\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL(\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\n\
    \\NUL(\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\v\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\f\NULF\n\
    \\228\EOT\n\
    \\STX\EOT\NUL\DC2\EOT\CAN\NUL%\SOH\SUB\134\EOT This input matcher matches IPv4 or IPv6 addresses against a list of CIDR\n\
    \ ranges. It returns true if and only if the input IP belongs to at least one\n\
    \ of these CIDR ranges. Internally, it uses a Level-Compressed trie, as\n\
    \ described in the paper `IP-address lookup using LC-tries\n\
    \ <https://www.nada.kth.se/~snilsson/publications/IP-address-lookup-using-LC-tries/>`_\n\
    \ by S. Nilsson and G. Karlsson. For \"big\" lists of IPs, this matcher is more\n\
    \ efficient than multiple single IP matcher, that would have a linear cost.\n\
    \2O [#protodoc-title: IP matcher]\n\
    \ [#extension: envoy.matching.input_matchers.ip]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\CAN\b\n\
    \\n\
    \C\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SUB\STXa\SUB6 Match if the IP belongs to any of these CIDR ranges.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\SUB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\SUB\v#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SUB$/\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SUB23\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\SUB4`\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DC2\DC2\ETX\SUB5_\n\
    \\199\STX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX$\STXB\SUB\185\STX The human readable prefix to use when emitting statistics for the IP input\n\
    \ matcher. Names in the table below are concatenated to this prefix.\n\
    \\n\
    \ .. csv-table::\n\
    \    :header: Name, Type, Description\n\
    \    :widths: 1, 1, 2\n\
    \\n\
    \    ip_parsing_failed, Counter, Total number of IP addresses the matcher was unable to parse\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX$\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX$\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX$\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX$\EMA\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\SO\DC2\ETX$\SUB@b\ACKproto3"