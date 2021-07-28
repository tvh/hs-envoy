{- This file was auto-generated from envoy/type/matcher/node.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Type.Matcher.Node (
        NodeMatcher()
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
import qualified Proto.Envoy.Type.Matcher.String
import qualified Proto.Envoy.Type.Matcher.Struct
import qualified Proto.Udpa.Annotations.Status
{- | Fields :
     
         * 'Proto.Envoy.Type.Matcher.Node_Fields.nodeId' @:: Lens' NodeMatcher Proto.Envoy.Type.Matcher.String.StringMatcher@
         * 'Proto.Envoy.Type.Matcher.Node_Fields.maybe'nodeId' @:: Lens' NodeMatcher (Prelude.Maybe Proto.Envoy.Type.Matcher.String.StringMatcher)@
         * 'Proto.Envoy.Type.Matcher.Node_Fields.nodeMetadatas' @:: Lens' NodeMatcher [Proto.Envoy.Type.Matcher.Struct.StructMatcher]@
         * 'Proto.Envoy.Type.Matcher.Node_Fields.vec'nodeMetadatas' @:: Lens' NodeMatcher (Data.Vector.Vector Proto.Envoy.Type.Matcher.Struct.StructMatcher)@ -}
data NodeMatcher
  = NodeMatcher'_constructor {_NodeMatcher'nodeId :: !(Prelude.Maybe Proto.Envoy.Type.Matcher.String.StringMatcher),
                              _NodeMatcher'nodeMetadatas :: !(Data.Vector.Vector Proto.Envoy.Type.Matcher.Struct.StructMatcher),
                              _NodeMatcher'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NodeMatcher where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NodeMatcher "nodeId" Proto.Envoy.Type.Matcher.String.StringMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeMatcher'nodeId (\ x__ y__ -> x__ {_NodeMatcher'nodeId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NodeMatcher "maybe'nodeId" (Prelude.Maybe Proto.Envoy.Type.Matcher.String.StringMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeMatcher'nodeId (\ x__ y__ -> x__ {_NodeMatcher'nodeId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NodeMatcher "nodeMetadatas" [Proto.Envoy.Type.Matcher.Struct.StructMatcher] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeMatcher'nodeMetadatas
           (\ x__ y__ -> x__ {_NodeMatcher'nodeMetadatas = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField NodeMatcher "vec'nodeMetadatas" (Data.Vector.Vector Proto.Envoy.Type.Matcher.Struct.StructMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeMatcher'nodeMetadatas
           (\ x__ y__ -> x__ {_NodeMatcher'nodeMetadatas = y__}))
        Prelude.id
instance Data.ProtoLens.Message NodeMatcher where
  messageName _ = Data.Text.pack "envoy.type.matcher.NodeMatcher"
  packedMessageDescriptor _
    = "\n\
      \\vNodeMatcher\DC2:\n\
      \\anode_id\CAN\SOH \SOH(\v2!.envoy.type.matcher.StringMatcherR\ACKnodeId\DC2H\n\
      \\SOnode_metadatas\CAN\STX \ETX(\v2!.envoy.type.matcher.StructMatcherR\rnodeMetadatas"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nodeId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "node_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.String.StringMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nodeId")) ::
              Data.ProtoLens.FieldDescriptor NodeMatcher
        nodeMetadatas__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "node_metadatas"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.Struct.StructMatcher)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"nodeMetadatas")) ::
              Data.ProtoLens.FieldDescriptor NodeMatcher
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, nodeId__field_descriptor),
           (Data.ProtoLens.Tag 2, nodeMetadatas__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NodeMatcher'_unknownFields
        (\ x__ y__ -> x__ {_NodeMatcher'_unknownFields = y__})
  defMessage
    = NodeMatcher'_constructor
        {_NodeMatcher'nodeId = Prelude.Nothing,
         _NodeMatcher'nodeMetadatas = Data.Vector.Generic.empty,
         _NodeMatcher'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NodeMatcher
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Type.Matcher.Struct.StructMatcher
             -> Data.ProtoLens.Encoding.Bytes.Parser NodeMatcher
        loop x mutable'nodeMetadatas
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'nodeMetadatas <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'nodeMetadatas)
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
                              (Data.ProtoLens.Field.field @"vec'nodeMetadatas")
                              frozen'nodeMetadatas
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "node_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nodeId") y x)
                                  mutable'nodeMetadatas
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "node_metadatas"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'nodeMetadatas y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'nodeMetadatas
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'nodeMetadatas <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'nodeMetadatas)
          "NodeMatcher"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nodeId") _x
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
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
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
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'nodeMetadatas") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData NodeMatcher where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NodeMatcher'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_NodeMatcher'nodeId x__)
                (Control.DeepSeq.deepseq (_NodeMatcher'nodeMetadatas x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\GSenvoy/type/matcher/node.proto\DC2\DC2envoy.type.matcher\SUB\USenvoy/type/matcher/string.proto\SUB\USenvoy/type/matcher/struct.proto\SUB\GSudpa/annotations/status.proto\"\147\SOH\n\
    \\vNodeMatcher\DC2:\n\
    \\anode_id\CAN\SOH \SOH(\v2!.envoy.type.matcher.StringMatcherR\ACKnodeId\DC2H\n\
    \\SOnode_metadatas\CAN\STX \ETX(\v2!.envoy.type.matcher.StructMatcherR\rnodeMetadatasB7\n\
    \ io.envoyproxy.envoy.type.matcherB\tNodeProtoP\SOH\186\128\200\209\ACK\STX\DLE\SOHJ\242\ETX\n\
    \\ACK\DC2\EOT\NUL\NUL\CAN\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL'\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL9\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\t\NUL9\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL*\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\n\
    \\NUL*\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\v\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\f\NULF\n\
    \u\n\
    \\STX\EOT\NUL\DC2\EOT\DC2\NUL\CAN\SOH\SUBF Specifies the way to match a Node.\n\
    \ The match follows AND semantics.\n\
    \2! [#protodoc-title: Node matcher]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC2\b\DC3\n\
    \7\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DC4\STX\FS\SUB* Specifies match criteria on the node id.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\DC4\STX\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC4\DLE\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC4\SUB\ESC\n\
    \=\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\ETB\STX,\SUB0 Specifies match criteria on the node metadata.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\ETB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\ETB\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\ETB\EM'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\ETB*+b\ACKproto3"