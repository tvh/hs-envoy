{- This file was auto-generated from envoy/service/auth/v3/attribute_context.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Service.Auth.V3.AttributeContext (
        AttributeContext(), AttributeContext'ContextExtensionsEntry(),
        AttributeContext'HttpRequest(),
        AttributeContext'HttpRequest'HeadersEntry(),
        AttributeContext'Peer(), AttributeContext'Peer'LabelsEntry(),
        AttributeContext'Request()
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
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
{- | Fields :
     
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.source' @:: Lens' AttributeContext AttributeContext'Peer@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.maybe'source' @:: Lens' AttributeContext (Prelude.Maybe AttributeContext'Peer)@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.destination' @:: Lens' AttributeContext AttributeContext'Peer@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.maybe'destination' @:: Lens' AttributeContext (Prelude.Maybe AttributeContext'Peer)@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.request' @:: Lens' AttributeContext AttributeContext'Request@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.maybe'request' @:: Lens' AttributeContext (Prelude.Maybe AttributeContext'Request)@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.contextExtensions' @:: Lens' AttributeContext (Data.Map.Map Data.Text.Text Data.Text.Text)@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.metadataContext' @:: Lens' AttributeContext Proto.Envoy.Config.Core.V3.Base.Metadata@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.maybe'metadataContext' @:: Lens' AttributeContext (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata)@ -}
data AttributeContext
  = AttributeContext'_constructor {_AttributeContext'source :: !(Prelude.Maybe AttributeContext'Peer),
                                   _AttributeContext'destination :: !(Prelude.Maybe AttributeContext'Peer),
                                   _AttributeContext'request :: !(Prelude.Maybe AttributeContext'Request),
                                   _AttributeContext'contextExtensions :: !(Data.Map.Map Data.Text.Text Data.Text.Text),
                                   _AttributeContext'metadataContext :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata),
                                   _AttributeContext'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AttributeContext where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AttributeContext "source" AttributeContext'Peer where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'source
           (\ x__ y__ -> x__ {_AttributeContext'source = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AttributeContext "maybe'source" (Prelude.Maybe AttributeContext'Peer) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'source
           (\ x__ y__ -> x__ {_AttributeContext'source = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AttributeContext "destination" AttributeContext'Peer where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'destination
           (\ x__ y__ -> x__ {_AttributeContext'destination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AttributeContext "maybe'destination" (Prelude.Maybe AttributeContext'Peer) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'destination
           (\ x__ y__ -> x__ {_AttributeContext'destination = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AttributeContext "request" AttributeContext'Request where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'request
           (\ x__ y__ -> x__ {_AttributeContext'request = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AttributeContext "maybe'request" (Prelude.Maybe AttributeContext'Request) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'request
           (\ x__ y__ -> x__ {_AttributeContext'request = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AttributeContext "contextExtensions" (Data.Map.Map Data.Text.Text Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'contextExtensions
           (\ x__ y__ -> x__ {_AttributeContext'contextExtensions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AttributeContext "metadataContext" Proto.Envoy.Config.Core.V3.Base.Metadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'metadataContext
           (\ x__ y__ -> x__ {_AttributeContext'metadataContext = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AttributeContext "maybe'metadataContext" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'metadataContext
           (\ x__ y__ -> x__ {_AttributeContext'metadataContext = y__}))
        Prelude.id
instance Data.ProtoLens.Message AttributeContext where
  messageName _
    = Data.Text.pack "envoy.service.auth.v3.AttributeContext"
  packedMessageDescriptor _
    = "\n\
      \\DLEAttributeContext\DC2D\n\
      \\ACKsource\CAN\SOH \SOH(\v2,.envoy.service.auth.v3.AttributeContext.PeerR\ACKsource\DC2N\n\
      \\vdestination\CAN\STX \SOH(\v2,.envoy.service.auth.v3.AttributeContext.PeerR\vdestination\DC2I\n\
      \\arequest\CAN\EOT \SOH(\v2/.envoy.service.auth.v3.AttributeContext.RequestR\arequest\DC2m\n\
      \\DC2context_extensions\CAN\n\
      \ \ETX(\v2>.envoy.service.auth.v3.AttributeContext.ContextExtensionsEntryR\DC1contextExtensions\DC2I\n\
      \\DLEmetadata_context\CAN\v \SOH(\v2\RS.envoy.config.core.v3.MetadataR\SImetadataContext\SUB\218\STX\n\
      \\EOTPeer\DC27\n\
      \\aaddress\CAN\SOH \SOH(\v2\GS.envoy.config.core.v3.AddressR\aaddress\DC2\CAN\n\
      \\aservice\CAN\STX \SOH(\tR\aservice\DC2P\n\
      \\ACKlabels\CAN\ETX \ETX(\v28.envoy.service.auth.v3.AttributeContext.Peer.LabelsEntryR\ACKlabels\DC2\FS\n\
      \\tprincipal\CAN\EOT \SOH(\tR\tprincipal\DC2 \n\
      \\vcertificate\CAN\ENQ \SOH(\tR\vcertificate\SUB9\n\
      \\vLabelsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH:2\154\197\136\RS-\n\
      \+envoy.service.auth.v2.AttributeContext.Peer\SUB\185\SOH\n\
      \\aRequest\DC2.\n\
      \\EOTtime\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\EOTtime\DC2G\n\
      \\EOThttp\CAN\STX \SOH(\v23.envoy.service.auth.v3.AttributeContext.HttpRequestR\EOThttp:5\154\197\136\RS0\n\
      \.envoy.service.auth.v2.AttributeContext.Request\SUB\217\ETX\n\
      \\vHttpRequest\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\tR\STXid\DC2\SYN\n\
      \\ACKmethod\CAN\STX \SOH(\tR\ACKmethod\DC2Z\n\
      \\aheaders\CAN\ETX \ETX(\v2@.envoy.service.auth.v3.AttributeContext.HttpRequest.HeadersEntryR\aheaders\DC2\DC2\n\
      \\EOTpath\CAN\EOT \SOH(\tR\EOTpath\DC2\DC2\n\
      \\EOThost\CAN\ENQ \SOH(\tR\EOThost\DC2\SYN\n\
      \\ACKscheme\CAN\ACK \SOH(\tR\ACKscheme\DC2\DC4\n\
      \\ENQquery\CAN\a \SOH(\tR\ENQquery\DC2\SUB\n\
      \\bfragment\CAN\b \SOH(\tR\bfragment\DC2\DC2\n\
      \\EOTsize\CAN\t \SOH(\ETXR\EOTsize\DC2\SUB\n\
      \\bprotocol\CAN\n\
      \ \SOH(\tR\bprotocol\DC2\DC2\n\
      \\EOTbody\CAN\v \SOH(\tR\EOTbody\DC2\EM\n\
      \\braw_body\CAN\f \SOH(\fR\arawBody\SUB:\n\
      \\fHeadersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH:9\154\197\136\RS4\n\
      \2envoy.service.auth.v2.AttributeContext.HttpRequest\SUBD\n\
      \\SYNContextExtensionsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH:-\154\197\136\RS(\n\
      \&envoy.service.auth.v2.AttributeContext"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        source__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AttributeContext'Peer)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'source")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext
        destination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "destination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AttributeContext'Peer)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'destination")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext
        request__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AttributeContext'Request)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'request")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext
        contextExtensions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "context_extensions"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AttributeContext'ContextExtensionsEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"contextExtensions")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext
        metadataContext__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata_context"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.Metadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metadataContext")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, source__field_descriptor),
           (Data.ProtoLens.Tag 2, destination__field_descriptor),
           (Data.ProtoLens.Tag 4, request__field_descriptor),
           (Data.ProtoLens.Tag 10, contextExtensions__field_descriptor),
           (Data.ProtoLens.Tag 11, metadataContext__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AttributeContext'_unknownFields
        (\ x__ y__ -> x__ {_AttributeContext'_unknownFields = y__})
  defMessage
    = AttributeContext'_constructor
        {_AttributeContext'source = Prelude.Nothing,
         _AttributeContext'destination = Prelude.Nothing,
         _AttributeContext'request = Prelude.Nothing,
         _AttributeContext'contextExtensions = Data.Map.empty,
         _AttributeContext'metadataContext = Prelude.Nothing,
         _AttributeContext'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AttributeContext
          -> Data.ProtoLens.Encoding.Bytes.Parser AttributeContext
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
                                       "source"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"source") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "destination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"destination") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"request") y x)
                        82
                          -> do !(entry :: AttributeContext'ContextExtensionsEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                         (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                             Data.ProtoLens.Encoding.Bytes.isolate
                                                                                               (Prelude.fromIntegral
                                                                                                  len)
                                                                                               Data.ProtoLens.parseMessage)
                                                                                         "context_extensions"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"contextExtensions")
                                        (\ !t -> Data.Map.insert key value t)
                                        x))
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "metadata_context"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"metadataContext") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AttributeContext"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'source") _x
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'destination") _x
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
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'request") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage
                                _v))
                   ((Data.Monoid.<>)
                      (Data.Monoid.mconcat
                         (Prelude.map
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                    ((Prelude..)
                                       (\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.ProtoLens.encodeMessage
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"key")
                                          (Prelude.fst _v)
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"value")
                                             (Prelude.snd _v)
                                             (Data.ProtoLens.defMessage ::
                                                AttributeContext'ContextExtensionsEntry)))))
                            (Data.Map.toList
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"contextExtensions") _x))))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'metadataContext") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage
                                      _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData AttributeContext where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AttributeContext'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AttributeContext'source x__)
                (Control.DeepSeq.deepseq
                   (_AttributeContext'destination x__)
                   (Control.DeepSeq.deepseq
                      (_AttributeContext'request x__)
                      (Control.DeepSeq.deepseq
                         (_AttributeContext'contextExtensions x__)
                         (Control.DeepSeq.deepseq
                            (_AttributeContext'metadataContext x__) ())))))
{- | Fields :
     
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.key' @:: Lens' AttributeContext'ContextExtensionsEntry Data.Text.Text@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.value' @:: Lens' AttributeContext'ContextExtensionsEntry Data.Text.Text@ -}
data AttributeContext'ContextExtensionsEntry
  = AttributeContext'ContextExtensionsEntry'_constructor {_AttributeContext'ContextExtensionsEntry'key :: !Data.Text.Text,
                                                          _AttributeContext'ContextExtensionsEntry'value :: !Data.Text.Text,
                                                          _AttributeContext'ContextExtensionsEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AttributeContext'ContextExtensionsEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AttributeContext'ContextExtensionsEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'ContextExtensionsEntry'key
           (\ x__ y__
              -> x__ {_AttributeContext'ContextExtensionsEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AttributeContext'ContextExtensionsEntry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'ContextExtensionsEntry'value
           (\ x__ y__
              -> x__ {_AttributeContext'ContextExtensionsEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message AttributeContext'ContextExtensionsEntry where
  messageName _
    = Data.Text.pack
        "envoy.service.auth.v3.AttributeContext.ContextExtensionsEntry"
  packedMessageDescriptor _
    = "\n\
      \\SYNContextExtensionsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext'ContextExtensionsEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext'ContextExtensionsEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AttributeContext'ContextExtensionsEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_AttributeContext'ContextExtensionsEntry'_unknownFields = y__})
  defMessage
    = AttributeContext'ContextExtensionsEntry'_constructor
        {_AttributeContext'ContextExtensionsEntry'key = Data.ProtoLens.fieldDefault,
         _AttributeContext'ContextExtensionsEntry'value = Data.ProtoLens.fieldDefault,
         _AttributeContext'ContextExtensionsEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AttributeContext'ContextExtensionsEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser AttributeContext'ContextExtensionsEntry
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
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
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ContextExtensionsEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
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
instance Control.DeepSeq.NFData AttributeContext'ContextExtensionsEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AttributeContext'ContextExtensionsEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AttributeContext'ContextExtensionsEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_AttributeContext'ContextExtensionsEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.id' @:: Lens' AttributeContext'HttpRequest Data.Text.Text@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.method' @:: Lens' AttributeContext'HttpRequest Data.Text.Text@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.headers' @:: Lens' AttributeContext'HttpRequest (Data.Map.Map Data.Text.Text Data.Text.Text)@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.path' @:: Lens' AttributeContext'HttpRequest Data.Text.Text@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.host' @:: Lens' AttributeContext'HttpRequest Data.Text.Text@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.scheme' @:: Lens' AttributeContext'HttpRequest Data.Text.Text@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.query' @:: Lens' AttributeContext'HttpRequest Data.Text.Text@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.fragment' @:: Lens' AttributeContext'HttpRequest Data.Text.Text@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.size' @:: Lens' AttributeContext'HttpRequest Data.Int.Int64@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.protocol' @:: Lens' AttributeContext'HttpRequest Data.Text.Text@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.body' @:: Lens' AttributeContext'HttpRequest Data.Text.Text@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.rawBody' @:: Lens' AttributeContext'HttpRequest Data.ByteString.ByteString@ -}
data AttributeContext'HttpRequest
  = AttributeContext'HttpRequest'_constructor {_AttributeContext'HttpRequest'id :: !Data.Text.Text,
                                               _AttributeContext'HttpRequest'method :: !Data.Text.Text,
                                               _AttributeContext'HttpRequest'headers :: !(Data.Map.Map Data.Text.Text Data.Text.Text),
                                               _AttributeContext'HttpRequest'path :: !Data.Text.Text,
                                               _AttributeContext'HttpRequest'host :: !Data.Text.Text,
                                               _AttributeContext'HttpRequest'scheme :: !Data.Text.Text,
                                               _AttributeContext'HttpRequest'query :: !Data.Text.Text,
                                               _AttributeContext'HttpRequest'fragment :: !Data.Text.Text,
                                               _AttributeContext'HttpRequest'size :: !Data.Int.Int64,
                                               _AttributeContext'HttpRequest'protocol :: !Data.Text.Text,
                                               _AttributeContext'HttpRequest'body :: !Data.Text.Text,
                                               _AttributeContext'HttpRequest'rawBody :: !Data.ByteString.ByteString,
                                               _AttributeContext'HttpRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AttributeContext'HttpRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AttributeContext'HttpRequest "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'HttpRequest'id
           (\ x__ y__ -> x__ {_AttributeContext'HttpRequest'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AttributeContext'HttpRequest "method" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'HttpRequest'method
           (\ x__ y__ -> x__ {_AttributeContext'HttpRequest'method = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AttributeContext'HttpRequest "headers" (Data.Map.Map Data.Text.Text Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'HttpRequest'headers
           (\ x__ y__ -> x__ {_AttributeContext'HttpRequest'headers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AttributeContext'HttpRequest "path" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'HttpRequest'path
           (\ x__ y__ -> x__ {_AttributeContext'HttpRequest'path = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AttributeContext'HttpRequest "host" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'HttpRequest'host
           (\ x__ y__ -> x__ {_AttributeContext'HttpRequest'host = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AttributeContext'HttpRequest "scheme" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'HttpRequest'scheme
           (\ x__ y__ -> x__ {_AttributeContext'HttpRequest'scheme = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AttributeContext'HttpRequest "query" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'HttpRequest'query
           (\ x__ y__ -> x__ {_AttributeContext'HttpRequest'query = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AttributeContext'HttpRequest "fragment" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'HttpRequest'fragment
           (\ x__ y__ -> x__ {_AttributeContext'HttpRequest'fragment = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AttributeContext'HttpRequest "size" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'HttpRequest'size
           (\ x__ y__ -> x__ {_AttributeContext'HttpRequest'size = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AttributeContext'HttpRequest "protocol" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'HttpRequest'protocol
           (\ x__ y__ -> x__ {_AttributeContext'HttpRequest'protocol = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AttributeContext'HttpRequest "body" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'HttpRequest'body
           (\ x__ y__ -> x__ {_AttributeContext'HttpRequest'body = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AttributeContext'HttpRequest "rawBody" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'HttpRequest'rawBody
           (\ x__ y__ -> x__ {_AttributeContext'HttpRequest'rawBody = y__}))
        Prelude.id
instance Data.ProtoLens.Message AttributeContext'HttpRequest where
  messageName _
    = Data.Text.pack
        "envoy.service.auth.v3.AttributeContext.HttpRequest"
  packedMessageDescriptor _
    = "\n\
      \\vHttpRequest\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\tR\STXid\DC2\SYN\n\
      \\ACKmethod\CAN\STX \SOH(\tR\ACKmethod\DC2Z\n\
      \\aheaders\CAN\ETX \ETX(\v2@.envoy.service.auth.v3.AttributeContext.HttpRequest.HeadersEntryR\aheaders\DC2\DC2\n\
      \\EOTpath\CAN\EOT \SOH(\tR\EOTpath\DC2\DC2\n\
      \\EOThost\CAN\ENQ \SOH(\tR\EOThost\DC2\SYN\n\
      \\ACKscheme\CAN\ACK \SOH(\tR\ACKscheme\DC2\DC4\n\
      \\ENQquery\CAN\a \SOH(\tR\ENQquery\DC2\SUB\n\
      \\bfragment\CAN\b \SOH(\tR\bfragment\DC2\DC2\n\
      \\EOTsize\CAN\t \SOH(\ETXR\EOTsize\DC2\SUB\n\
      \\bprotocol\CAN\n\
      \ \SOH(\tR\bprotocol\DC2\DC2\n\
      \\EOTbody\CAN\v \SOH(\tR\EOTbody\DC2\EM\n\
      \\braw_body\CAN\f \SOH(\fR\arawBody\SUB:\n\
      \\fHeadersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH:9\154\197\136\RS4\n\
      \2envoy.service.auth.v2.AttributeContext.HttpRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext'HttpRequest
        method__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "method"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"method")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext'HttpRequest
        headers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AttributeContext'HttpRequest'HeadersEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"headers")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext'HttpRequest
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"path")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext'HttpRequest
        host__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "host"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"host")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext'HttpRequest
        scheme__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scheme"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"scheme")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext'HttpRequest
        query__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "query"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"query")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext'HttpRequest
        fragment__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fragment"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"fragment")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext'HttpRequest
        size__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"size")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext'HttpRequest
        protocol__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "protocol"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"protocol")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext'HttpRequest
        body__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "body"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"body")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext'HttpRequest
        rawBody__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "raw_body"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"rawBody")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext'HttpRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, method__field_descriptor),
           (Data.ProtoLens.Tag 3, headers__field_descriptor),
           (Data.ProtoLens.Tag 4, path__field_descriptor),
           (Data.ProtoLens.Tag 5, host__field_descriptor),
           (Data.ProtoLens.Tag 6, scheme__field_descriptor),
           (Data.ProtoLens.Tag 7, query__field_descriptor),
           (Data.ProtoLens.Tag 8, fragment__field_descriptor),
           (Data.ProtoLens.Tag 9, size__field_descriptor),
           (Data.ProtoLens.Tag 10, protocol__field_descriptor),
           (Data.ProtoLens.Tag 11, body__field_descriptor),
           (Data.ProtoLens.Tag 12, rawBody__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AttributeContext'HttpRequest'_unknownFields
        (\ x__ y__
           -> x__ {_AttributeContext'HttpRequest'_unknownFields = y__})
  defMessage
    = AttributeContext'HttpRequest'_constructor
        {_AttributeContext'HttpRequest'id = Data.ProtoLens.fieldDefault,
         _AttributeContext'HttpRequest'method = Data.ProtoLens.fieldDefault,
         _AttributeContext'HttpRequest'headers = Data.Map.empty,
         _AttributeContext'HttpRequest'path = Data.ProtoLens.fieldDefault,
         _AttributeContext'HttpRequest'host = Data.ProtoLens.fieldDefault,
         _AttributeContext'HttpRequest'scheme = Data.ProtoLens.fieldDefault,
         _AttributeContext'HttpRequest'query = Data.ProtoLens.fieldDefault,
         _AttributeContext'HttpRequest'fragment = Data.ProtoLens.fieldDefault,
         _AttributeContext'HttpRequest'size = Data.ProtoLens.fieldDefault,
         _AttributeContext'HttpRequest'protocol = Data.ProtoLens.fieldDefault,
         _AttributeContext'HttpRequest'body = Data.ProtoLens.fieldDefault,
         _AttributeContext'HttpRequest'rawBody = Data.ProtoLens.fieldDefault,
         _AttributeContext'HttpRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AttributeContext'HttpRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser AttributeContext'HttpRequest
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
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
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
                                       "method"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"method") y x)
                        26
                          -> do !(entry :: AttributeContext'HttpRequest'HeadersEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                           (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                               Data.ProtoLens.Encoding.Bytes.isolate
                                                                                                 (Prelude.fromIntegral
                                                                                                    len)
                                                                                                 Data.ProtoLens.parseMessage)
                                                                                           "headers"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"headers")
                                        (\ !t -> Data.Map.insert key value t)
                                        x))
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "host"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"host") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "scheme"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"scheme") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "query"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"query") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "fragment"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fragment") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "size"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"size") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "protocol"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"protocol") y x)
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "body"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"body") y x)
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "raw_body"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rawBody") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HttpRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"method") _x
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
                ((Data.Monoid.<>)
                   (Data.Monoid.mconcat
                      (Prelude.map
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.ProtoLens.encodeMessage
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"key")
                                       (Prelude.fst _v)
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"value")
                                          (Prelude.snd _v)
                                          (Data.ProtoLens.defMessage ::
                                             AttributeContext'HttpRequest'HeadersEntry)))))
                         (Data.Map.toList
                            (Lens.Family2.view (Data.ProtoLens.Field.field @"headers") _x))))
                   ((Data.Monoid.<>)
                      (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"path") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8
                                  _v))
                      ((Data.Monoid.<>)
                         (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"host") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"scheme") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                     ((Prelude..)
                                        (\ bs
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        Data.Text.Encoding.encodeUtf8
                                        _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v = Lens.Family2.view (Data.ProtoLens.Field.field @"query") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                        ((Prelude..)
                                           (\ bs
                                              -> (Data.Monoid.<>)
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                      (Prelude.fromIntegral
                                                         (Data.ByteString.length bs)))
                                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                           Data.Text.Encoding.encodeUtf8
                                           _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"fragment") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                           ((Prelude..)
                                              (\ bs
                                                 -> (Data.Monoid.<>)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                         (Prelude.fromIntegral
                                                            (Data.ByteString.length bs)))
                                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              Data.Text.Encoding.encodeUtf8
                                              _v))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"size") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                              ((Prelude..)
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 Prelude.fromIntegral
                                                 _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"protocol") _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                 ((Prelude..)
                                                    (\ bs
                                                       -> (Data.Monoid.<>)
                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                               (Prelude.fromIntegral
                                                                  (Data.ByteString.length bs)))
                                                            (Data.ProtoLens.Encoding.Bytes.putBytes
                                                               bs))
                                                    Data.Text.Encoding.encodeUtf8
                                                    _v))
                                        ((Data.Monoid.<>)
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field @"body") _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                                    ((Prelude..)
                                                       (\ bs
                                                          -> (Data.Monoid.<>)
                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                  (Prelude.fromIntegral
                                                                     (Data.ByteString.length bs)))
                                                               (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                  bs))
                                                       Data.Text.Encoding.encodeUtf8
                                                       _v))
                                           ((Data.Monoid.<>)
                                              (let
                                                 _v
                                                   = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field @"rawBody") _x
                                               in
                                                 if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                                       ((\ bs
                                                           -> (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (Prelude.fromIntegral
                                                                      (Data.ByteString.length bs)))
                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                   bs))
                                                          _v))
                                              (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                 (Lens.Family2.view
                                                    Data.ProtoLens.unknownFields _x)))))))))))))
instance Control.DeepSeq.NFData AttributeContext'HttpRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AttributeContext'HttpRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AttributeContext'HttpRequest'id x__)
                (Control.DeepSeq.deepseq
                   (_AttributeContext'HttpRequest'method x__)
                   (Control.DeepSeq.deepseq
                      (_AttributeContext'HttpRequest'headers x__)
                      (Control.DeepSeq.deepseq
                         (_AttributeContext'HttpRequest'path x__)
                         (Control.DeepSeq.deepseq
                            (_AttributeContext'HttpRequest'host x__)
                            (Control.DeepSeq.deepseq
                               (_AttributeContext'HttpRequest'scheme x__)
                               (Control.DeepSeq.deepseq
                                  (_AttributeContext'HttpRequest'query x__)
                                  (Control.DeepSeq.deepseq
                                     (_AttributeContext'HttpRequest'fragment x__)
                                     (Control.DeepSeq.deepseq
                                        (_AttributeContext'HttpRequest'size x__)
                                        (Control.DeepSeq.deepseq
                                           (_AttributeContext'HttpRequest'protocol x__)
                                           (Control.DeepSeq.deepseq
                                              (_AttributeContext'HttpRequest'body x__)
                                              (Control.DeepSeq.deepseq
                                                 (_AttributeContext'HttpRequest'rawBody x__)
                                                 ()))))))))))))
{- | Fields :
     
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.key' @:: Lens' AttributeContext'HttpRequest'HeadersEntry Data.Text.Text@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.value' @:: Lens' AttributeContext'HttpRequest'HeadersEntry Data.Text.Text@ -}
data AttributeContext'HttpRequest'HeadersEntry
  = AttributeContext'HttpRequest'HeadersEntry'_constructor {_AttributeContext'HttpRequest'HeadersEntry'key :: !Data.Text.Text,
                                                            _AttributeContext'HttpRequest'HeadersEntry'value :: !Data.Text.Text,
                                                            _AttributeContext'HttpRequest'HeadersEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AttributeContext'HttpRequest'HeadersEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AttributeContext'HttpRequest'HeadersEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'HttpRequest'HeadersEntry'key
           (\ x__ y__
              -> x__ {_AttributeContext'HttpRequest'HeadersEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AttributeContext'HttpRequest'HeadersEntry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'HttpRequest'HeadersEntry'value
           (\ x__ y__
              -> x__ {_AttributeContext'HttpRequest'HeadersEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message AttributeContext'HttpRequest'HeadersEntry where
  messageName _
    = Data.Text.pack
        "envoy.service.auth.v3.AttributeContext.HttpRequest.HeadersEntry"
  packedMessageDescriptor _
    = "\n\
      \\fHeadersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext'HttpRequest'HeadersEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext'HttpRequest'HeadersEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AttributeContext'HttpRequest'HeadersEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_AttributeContext'HttpRequest'HeadersEntry'_unknownFields = y__})
  defMessage
    = AttributeContext'HttpRequest'HeadersEntry'_constructor
        {_AttributeContext'HttpRequest'HeadersEntry'key = Data.ProtoLens.fieldDefault,
         _AttributeContext'HttpRequest'HeadersEntry'value = Data.ProtoLens.fieldDefault,
         _AttributeContext'HttpRequest'HeadersEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AttributeContext'HttpRequest'HeadersEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser AttributeContext'HttpRequest'HeadersEntry
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
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
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HeadersEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
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
instance Control.DeepSeq.NFData AttributeContext'HttpRequest'HeadersEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AttributeContext'HttpRequest'HeadersEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AttributeContext'HttpRequest'HeadersEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_AttributeContext'HttpRequest'HeadersEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.address' @:: Lens' AttributeContext'Peer Proto.Envoy.Config.Core.V3.Address.Address@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.maybe'address' @:: Lens' AttributeContext'Peer (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address)@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.service' @:: Lens' AttributeContext'Peer Data.Text.Text@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.labels' @:: Lens' AttributeContext'Peer (Data.Map.Map Data.Text.Text Data.Text.Text)@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.principal' @:: Lens' AttributeContext'Peer Data.Text.Text@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.certificate' @:: Lens' AttributeContext'Peer Data.Text.Text@ -}
data AttributeContext'Peer
  = AttributeContext'Peer'_constructor {_AttributeContext'Peer'address :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address),
                                        _AttributeContext'Peer'service :: !Data.Text.Text,
                                        _AttributeContext'Peer'labels :: !(Data.Map.Map Data.Text.Text Data.Text.Text),
                                        _AttributeContext'Peer'principal :: !Data.Text.Text,
                                        _AttributeContext'Peer'certificate :: !Data.Text.Text,
                                        _AttributeContext'Peer'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AttributeContext'Peer where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AttributeContext'Peer "address" Proto.Envoy.Config.Core.V3.Address.Address where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'Peer'address
           (\ x__ y__ -> x__ {_AttributeContext'Peer'address = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AttributeContext'Peer "maybe'address" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'Peer'address
           (\ x__ y__ -> x__ {_AttributeContext'Peer'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AttributeContext'Peer "service" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'Peer'service
           (\ x__ y__ -> x__ {_AttributeContext'Peer'service = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AttributeContext'Peer "labels" (Data.Map.Map Data.Text.Text Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'Peer'labels
           (\ x__ y__ -> x__ {_AttributeContext'Peer'labels = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AttributeContext'Peer "principal" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'Peer'principal
           (\ x__ y__ -> x__ {_AttributeContext'Peer'principal = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AttributeContext'Peer "certificate" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'Peer'certificate
           (\ x__ y__ -> x__ {_AttributeContext'Peer'certificate = y__}))
        Prelude.id
instance Data.ProtoLens.Message AttributeContext'Peer where
  messageName _
    = Data.Text.pack "envoy.service.auth.v3.AttributeContext.Peer"
  packedMessageDescriptor _
    = "\n\
      \\EOTPeer\DC27\n\
      \\aaddress\CAN\SOH \SOH(\v2\GS.envoy.config.core.v3.AddressR\aaddress\DC2\CAN\n\
      \\aservice\CAN\STX \SOH(\tR\aservice\DC2P\n\
      \\ACKlabels\CAN\ETX \ETX(\v28.envoy.service.auth.v3.AttributeContext.Peer.LabelsEntryR\ACKlabels\DC2\FS\n\
      \\tprincipal\CAN\EOT \SOH(\tR\tprincipal\DC2 \n\
      \\vcertificate\CAN\ENQ \SOH(\tR\vcertificate\SUB9\n\
      \\vLabelsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH:2\154\197\136\RS-\n\
      \+envoy.service.auth.v2.AttributeContext.Peer"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.Address)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'address")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext'Peer
        service__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"service")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext'Peer
        labels__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "labels"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AttributeContext'Peer'LabelsEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"labels")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext'Peer
        principal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "principal"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"principal")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext'Peer
        certificate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "certificate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"certificate")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext'Peer
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, service__field_descriptor),
           (Data.ProtoLens.Tag 3, labels__field_descriptor),
           (Data.ProtoLens.Tag 4, principal__field_descriptor),
           (Data.ProtoLens.Tag 5, certificate__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AttributeContext'Peer'_unknownFields
        (\ x__ y__ -> x__ {_AttributeContext'Peer'_unknownFields = y__})
  defMessage
    = AttributeContext'Peer'_constructor
        {_AttributeContext'Peer'address = Prelude.Nothing,
         _AttributeContext'Peer'service = Data.ProtoLens.fieldDefault,
         _AttributeContext'Peer'labels = Data.Map.empty,
         _AttributeContext'Peer'principal = Data.ProtoLens.fieldDefault,
         _AttributeContext'Peer'certificate = Data.ProtoLens.fieldDefault,
         _AttributeContext'Peer'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AttributeContext'Peer
          -> Data.ProtoLens.Encoding.Bytes.Parser AttributeContext'Peer
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
                                       "address"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
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
                                       "service"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"service") y x)
                        26
                          -> do !(entry :: AttributeContext'Peer'LabelsEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                   (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                       Data.ProtoLens.Encoding.Bytes.isolate
                                                                                         (Prelude.fromIntegral
                                                                                            len)
                                                                                         Data.ProtoLens.parseMessage)
                                                                                   "labels"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"labels")
                                        (\ !t -> Data.Map.insert key value t)
                                        x))
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "principal"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"principal") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "certificate"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"certificate") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Peer"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'address") _x
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
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"service") _x
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
                ((Data.Monoid.<>)
                   (Data.Monoid.mconcat
                      (Prelude.map
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.ProtoLens.encodeMessage
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"key")
                                       (Prelude.fst _v)
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"value")
                                          (Prelude.snd _v)
                                          (Data.ProtoLens.defMessage ::
                                             AttributeContext'Peer'LabelsEntry)))))
                         (Data.Map.toList
                            (Lens.Family2.view (Data.ProtoLens.Field.field @"labels") _x))))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"principal") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
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
                            _v
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"certificate") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                  ((Prelude..)
                                     (\ bs
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                                             (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     Data.Text.Encoding.encodeUtf8
                                     _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData AttributeContext'Peer where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AttributeContext'Peer'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AttributeContext'Peer'address x__)
                (Control.DeepSeq.deepseq
                   (_AttributeContext'Peer'service x__)
                   (Control.DeepSeq.deepseq
                      (_AttributeContext'Peer'labels x__)
                      (Control.DeepSeq.deepseq
                         (_AttributeContext'Peer'principal x__)
                         (Control.DeepSeq.deepseq
                            (_AttributeContext'Peer'certificate x__) ())))))
{- | Fields :
     
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.key' @:: Lens' AttributeContext'Peer'LabelsEntry Data.Text.Text@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.value' @:: Lens' AttributeContext'Peer'LabelsEntry Data.Text.Text@ -}
data AttributeContext'Peer'LabelsEntry
  = AttributeContext'Peer'LabelsEntry'_constructor {_AttributeContext'Peer'LabelsEntry'key :: !Data.Text.Text,
                                                    _AttributeContext'Peer'LabelsEntry'value :: !Data.Text.Text,
                                                    _AttributeContext'Peer'LabelsEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AttributeContext'Peer'LabelsEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AttributeContext'Peer'LabelsEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'Peer'LabelsEntry'key
           (\ x__ y__ -> x__ {_AttributeContext'Peer'LabelsEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AttributeContext'Peer'LabelsEntry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'Peer'LabelsEntry'value
           (\ x__ y__
              -> x__ {_AttributeContext'Peer'LabelsEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message AttributeContext'Peer'LabelsEntry where
  messageName _
    = Data.Text.pack
        "envoy.service.auth.v3.AttributeContext.Peer.LabelsEntry"
  packedMessageDescriptor _
    = "\n\
      \\vLabelsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext'Peer'LabelsEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext'Peer'LabelsEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AttributeContext'Peer'LabelsEntry'_unknownFields
        (\ x__ y__
           -> x__ {_AttributeContext'Peer'LabelsEntry'_unknownFields = y__})
  defMessage
    = AttributeContext'Peer'LabelsEntry'_constructor
        {_AttributeContext'Peer'LabelsEntry'key = Data.ProtoLens.fieldDefault,
         _AttributeContext'Peer'LabelsEntry'value = Data.ProtoLens.fieldDefault,
         _AttributeContext'Peer'LabelsEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AttributeContext'Peer'LabelsEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser AttributeContext'Peer'LabelsEntry
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
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
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "LabelsEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
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
instance Control.DeepSeq.NFData AttributeContext'Peer'LabelsEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AttributeContext'Peer'LabelsEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AttributeContext'Peer'LabelsEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_AttributeContext'Peer'LabelsEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.time' @:: Lens' AttributeContext'Request Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.maybe'time' @:: Lens' AttributeContext'Request (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.http' @:: Lens' AttributeContext'Request AttributeContext'HttpRequest@
         * 'Proto.Envoy.Service.Auth.V3.AttributeContext_Fields.maybe'http' @:: Lens' AttributeContext'Request (Prelude.Maybe AttributeContext'HttpRequest)@ -}
data AttributeContext'Request
  = AttributeContext'Request'_constructor {_AttributeContext'Request'time :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                           _AttributeContext'Request'http :: !(Prelude.Maybe AttributeContext'HttpRequest),
                                           _AttributeContext'Request'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AttributeContext'Request where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AttributeContext'Request "time" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'Request'time
           (\ x__ y__ -> x__ {_AttributeContext'Request'time = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AttributeContext'Request "maybe'time" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'Request'time
           (\ x__ y__ -> x__ {_AttributeContext'Request'time = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AttributeContext'Request "http" AttributeContext'HttpRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'Request'http
           (\ x__ y__ -> x__ {_AttributeContext'Request'http = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AttributeContext'Request "maybe'http" (Prelude.Maybe AttributeContext'HttpRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeContext'Request'http
           (\ x__ y__ -> x__ {_AttributeContext'Request'http = y__}))
        Prelude.id
instance Data.ProtoLens.Message AttributeContext'Request where
  messageName _
    = Data.Text.pack "envoy.service.auth.v3.AttributeContext.Request"
  packedMessageDescriptor _
    = "\n\
      \\aRequest\DC2.\n\
      \\EOTtime\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\EOTtime\DC2G\n\
      \\EOThttp\CAN\STX \SOH(\v23.envoy.service.auth.v3.AttributeContext.HttpRequestR\EOThttp:5\154\197\136\RS0\n\
      \.envoy.service.auth.v2.AttributeContext.Request"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        time__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'time")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext'Request
        http__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AttributeContext'HttpRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'http")) ::
              Data.ProtoLens.FieldDescriptor AttributeContext'Request
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, time__field_descriptor),
           (Data.ProtoLens.Tag 2, http__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AttributeContext'Request'_unknownFields
        (\ x__ y__ -> x__ {_AttributeContext'Request'_unknownFields = y__})
  defMessage
    = AttributeContext'Request'_constructor
        {_AttributeContext'Request'time = Prelude.Nothing,
         _AttributeContext'Request'http = Prelude.Nothing,
         _AttributeContext'Request'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AttributeContext'Request
          -> Data.ProtoLens.Encoding.Bytes.Parser AttributeContext'Request
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
                                       "time"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"time") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"http") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Request"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'time") _x
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
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'http") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData AttributeContext'Request where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AttributeContext'Request'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AttributeContext'Request'time x__)
                (Control.DeepSeq.deepseq (_AttributeContext'Request'http x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \-envoy/service/auth/v3/attribute_context.proto\DC2\NAKenvoy.service.auth.v3\SUB\"envoy/config/core/v3/address.proto\SUB\USenvoy/config/core/v3/base.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"\151\f\n\
    \\DLEAttributeContext\DC2D\n\
    \\ACKsource\CAN\SOH \SOH(\v2,.envoy.service.auth.v3.AttributeContext.PeerR\ACKsource\DC2N\n\
    \\vdestination\CAN\STX \SOH(\v2,.envoy.service.auth.v3.AttributeContext.PeerR\vdestination\DC2I\n\
    \\arequest\CAN\EOT \SOH(\v2/.envoy.service.auth.v3.AttributeContext.RequestR\arequest\DC2m\n\
    \\DC2context_extensions\CAN\n\
    \ \ETX(\v2>.envoy.service.auth.v3.AttributeContext.ContextExtensionsEntryR\DC1contextExtensions\DC2I\n\
    \\DLEmetadata_context\CAN\v \SOH(\v2\RS.envoy.config.core.v3.MetadataR\SImetadataContext\SUB\218\STX\n\
    \\EOTPeer\DC27\n\
    \\aaddress\CAN\SOH \SOH(\v2\GS.envoy.config.core.v3.AddressR\aaddress\DC2\CAN\n\
    \\aservice\CAN\STX \SOH(\tR\aservice\DC2P\n\
    \\ACKlabels\CAN\ETX \ETX(\v28.envoy.service.auth.v3.AttributeContext.Peer.LabelsEntryR\ACKlabels\DC2\FS\n\
    \\tprincipal\CAN\EOT \SOH(\tR\tprincipal\DC2 \n\
    \\vcertificate\CAN\ENQ \SOH(\tR\vcertificate\SUB9\n\
    \\vLabelsEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH:2\154\197\136\RS-\n\
    \+envoy.service.auth.v2.AttributeContext.Peer\SUB\185\SOH\n\
    \\aRequest\DC2.\n\
    \\EOTtime\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\EOTtime\DC2G\n\
    \\EOThttp\CAN\STX \SOH(\v23.envoy.service.auth.v3.AttributeContext.HttpRequestR\EOThttp:5\154\197\136\RS0\n\
    \.envoy.service.auth.v2.AttributeContext.Request\SUB\217\ETX\n\
    \\vHttpRequest\DC2\SO\n\
    \\STXid\CAN\SOH \SOH(\tR\STXid\DC2\SYN\n\
    \\ACKmethod\CAN\STX \SOH(\tR\ACKmethod\DC2Z\n\
    \\aheaders\CAN\ETX \ETX(\v2@.envoy.service.auth.v3.AttributeContext.HttpRequest.HeadersEntryR\aheaders\DC2\DC2\n\
    \\EOTpath\CAN\EOT \SOH(\tR\EOTpath\DC2\DC2\n\
    \\EOThost\CAN\ENQ \SOH(\tR\EOThost\DC2\SYN\n\
    \\ACKscheme\CAN\ACK \SOH(\tR\ACKscheme\DC2\DC4\n\
    \\ENQquery\CAN\a \SOH(\tR\ENQquery\DC2\SUB\n\
    \\bfragment\CAN\b \SOH(\tR\bfragment\DC2\DC2\n\
    \\EOTsize\CAN\t \SOH(\ETXR\EOTsize\DC2\SUB\n\
    \\bprotocol\CAN\n\
    \ \SOH(\tR\bprotocol\DC2\DC2\n\
    \\EOTbody\CAN\v \SOH(\tR\EOTbody\DC2\EM\n\
    \\braw_body\CAN\f \SOH(\fR\arawBody\SUB:\n\
    \\fHeadersEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH:9\154\197\136\RS4\n\
    \2envoy.service.auth.v2.AttributeContext.HttpRequest\SUBD\n\
    \\SYNContextExtensionsEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH:-\154\197\136\RS(\n\
    \&envoy.service.auth.v2.AttributeContextBF\n\
    \#io.envoyproxy.envoy.service.auth.v3B\NAKAttributeContextProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\166\&8\n\
    \\a\DC2\ENQ\NUL\NUL\176\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL,\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL)\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL'\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL<\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NUL<\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL6\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL6\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SO\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SI\NULF\n\
    \\182\b\n\
    \\STX\EOT\NUL\DC2\ENQ(\NUL\176\SOH\SOH\SUB\215\ACK An attribute is a piece of metadata that describes an activity on a network.\n\
    \ For example, the size of an HTTP request, or the status code of an HTTP response.\n\
    \\n\
    \ Each attribute has a type and a name, which is logically defined as a proto message field\n\
    \ of the `AttributeContext`. The `AttributeContext` is a collection of individual attributes\n\
    \ supported by Envoy authorization system.\n\
    \ [#comment: The following items are left out of this proto\n\
    \ Request.Auth field for jwt tokens\n\
    \ Request.Api for api management\n\
    \ Origin peer that originated the request\n\
    \ Caching Protocol\n\
    \ request_context return values to inject back into the filter chain\n\
    \ peer.claims -- from X.509 extensions\n\
    \ Configuration\n\
    \ - field mask to send\n\
    \ - which return values from request_context are copied back\n\
    \ - which return values are copied into request_headers]\n\
    \ [#next-free-field: 12]\n\
    \2' [#protodoc-title: Attribute Context ]\n\
    \2\165\SOH See :ref:`network filter configuration overview <config_network_filters_ext_authz>`\n\
    \ and :ref:`HTTP filter configuration overview <config_http_filters_ext_authz>`.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX(\b\CAN\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT)\STX*/\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT)\STX*/\n\
    \\173\STX\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT1\STXS\ETX\SUB\158\STX This message defines attributes for a node that handles a network request.\n\
    \ The node can be either a service or an application that sends, forwards,\n\
    \ or receives the request. Service peers should fill in the `service`,\n\
    \ `principal`, and `labels` as appropriate.\n\
    \ [#next-free-field: 6]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX1\n\
    \\SO\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT2\EOT36\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT2\EOT36\n\
    \p\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX7\EOT'\SUBa The address of the peer, this is typically the IP address.\n\
    \ It can also be UDS path, or others.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETX7\EOT\SUB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX7\ESC\"\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX7%&\n\
    \\167\STX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX>\EOT\ETB\SUB\151\STX The canonical service name of the peer.\n\
    \ It should be set to :ref:`the HTTP x-envoy-downstream-service-cluster\n\
    \ <config_http_conn_man_headers_downstream-service-cluster>`\n\
    \ If a more trusted source of the service name is available through mTLS/secure naming, it\n\
    \ should be used.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETX>\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX>\v\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX>\NAK\SYN\n\
    \\193\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\STX\DC2\ETXC\EOT#\SUB\177\SOH The labels associated with the peer.\n\
    \ These could be pod labels for Kubernetes or tags for VMs.\n\
    \ The source of the labels could be an X.509 certificate or other configuration.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ACK\DC2\ETXC\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\SOH\DC2\ETXC\CAN\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ETX\DC2\ETXC!\"\n\
    \\160\EOT\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ETX\DC2\ETXN\EOT\EM\SUB\144\EOT The authenticated identity of this peer.\n\
    \ For example, the identity associated with the workload such as a service account.\n\
    \ If an X.509 certificate is used to assert the identity this field should be sourced from\n\
    \ `URI Subject Alternative Names`, `DNS Subject Alternate Names` or `Subject` in that order.\n\
    \ The primary identity should be the principal. The principal format is issuer specific.\n\
    \\n\
    \ Example:\n\
    \ *    SPIFFE format is `spiffe://trust-domain/path`\n\
    \ *    Google account format is `https://accounts.google.com/{userid}`\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ENQ\DC2\ETXN\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\SOH\DC2\ETXN\v\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ETX\DC2\ETXN\ETB\CAN\n\
    \\162\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\EOT\DC2\ETXR\EOT\ESC\SUB\146\SOH The X.509 certificate used to authenticate the identify of this peer.\n\
    \ When present, the certificate contents are encoded in URL and PEM format.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\ENQ\DC2\ETXR\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\SOH\DC2\ETXR\v\SYN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\ETX\DC2\ETXR\EM\SUB\n\
    \F\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\EOTV\STX_\ETX\SUB8 Represents a network request, such as an HTTP request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETXV\n\
    \\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\SOH\a\DC2\EOTW\EOTX9\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\SOH\a\211\136\225\ETX\SOH\DC2\EOTW\EOTX9\n\
    \U\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\ETX[\EOT'\SUBF The timestamp when the proxy receives the first byte of the request.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ACK\DC2\ETX[\EOT\GS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETX[\RS\"\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETX[%&\n\
    \D\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\SOH\DC2\ETX^\EOT\EM\SUB5 Represents an HTTP request or an HTTP-like request.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ACK\DC2\ETX^\EOT\SI\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\SOH\DC2\ETX^\DLE\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ETX\DC2\ETX^\ETB\CAN\n\
    \\155\SOH\n\
    \\EOT\EOT\NUL\ETX\STX\DC2\ENQd\STX\153\SOH\ETX\SUB\139\SOH This message defines attributes for an HTTP request.\n\
    \ HTTP/1.x, HTTP/2, gRPC are all considered as HTTP requests.\n\
    \ [#next-free-field: 13]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\STX\SOH\DC2\ETXd\n\
    \\NAK\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\STX\a\DC2\EOTe\EOTf=\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\STX\a\211\136\225\ETX\SOH\DC2\EOTe\EOTf=\n\
    \\248\SOH\n\
    \\ACK\EOT\NUL\ETX\STX\STX\NUL\DC2\ETXl\EOT\DC2\SUB\232\SOH The unique ID for a request, which can be propagated to downstream\n\
    \ systems. The ID should have low probability of collision\n\
    \ within a single day for a specific service.\n\
    \ For HTTP requests, it should be X-Request-ID or equivalent.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ENQ\DC2\ETXl\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\SOH\DC2\ETXl\v\r\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ETX\DC2\ETXl\DLE\DC1\n\
    \@\n\
    \\ACK\EOT\NUL\ETX\STX\STX\SOH\DC2\ETXo\EOT\SYN\SUB1 The HTTP request method, such as `GET`, `POST`.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ENQ\DC2\ETXo\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\SOH\DC2\ETXo\v\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ETX\DC2\ETXo\DC4\NAK\n\
    \\217\SOH\n\
    \\ACK\EOT\NUL\ETX\STX\STX\STX\DC2\ETXt\EOT$\SUB\201\SOH The HTTP request headers. If multiple headers share the same key, they\n\
    \ must be merged according to the HTTP spec. All header keys must be\n\
    \ lower-cased, because HTTP header keys are case-insensitive.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ACK\DC2\ETXt\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\SOH\DC2\ETXt\CAN\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ETX\DC2\ETXt\"#\n\
    \\162\SOH\n\
    \\ACK\EOT\NUL\ETX\STX\STX\ETX\DC2\ETXx\EOT\DC4\SUB\146\SOH The request target, as it appears in the first line of the HTTP request. This includes\n\
    \ the URL path and query-string. No decoding is performed.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\ENQ\DC2\ETXx\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\SOH\DC2\ETXx\v\SI\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\ETX\DC2\ETXx\DC2\DC3\n\
    \E\n\
    \\ACK\EOT\NUL\ETX\STX\STX\EOT\DC2\ETX{\EOT\DC4\SUB6 The HTTP request `Host` or 'Authority` header value.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\EOT\ENQ\DC2\ETX{\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\EOT\SOH\DC2\ETX{\v\SI\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\EOT\ETX\DC2\ETX{\DC2\DC3\n\
    \A\n\
    \\ACK\EOT\NUL\ETX\STX\STX\ENQ\DC2\ETX~\EOT\SYN\SUB2 The HTTP URL scheme, such as `http` and `https`.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ENQ\ENQ\DC2\ETX~\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ENQ\SOH\DC2\ETX~\v\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ENQ\ETX\DC2\ETX~\DC4\NAK\n\
    \\132\SOH\n\
    \\ACK\EOT\NUL\ETX\STX\STX\ACK\DC2\EOT\130\SOH\EOT\NAK\SUBt This field is always empty, and exists for compatibility reasons. The HTTP URL query is\n\
    \ included in `path` field.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\ACK\ENQ\DC2\EOT\130\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\ACK\SOH\DC2\EOT\130\SOH\v\DLE\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\ACK\ETX\DC2\EOT\130\SOH\DC3\DC4\n\
    \\163\SOH\n\
    \\ACK\EOT\NUL\ETX\STX\STX\a\DC2\EOT\134\SOH\EOT\CAN\SUB\146\SOH This field is always empty, and exists for compatibility reasons. The URL fragment is\n\
    \ not submitted as part of HTTP requests; it is unknowable.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\a\ENQ\DC2\EOT\134\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\a\SOH\DC2\EOT\134\SOH\v\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\a\ETX\DC2\EOT\134\SOH\SYN\ETB\n\
    \L\n\
    \\ACK\EOT\NUL\ETX\STX\STX\b\DC2\EOT\137\SOH\EOT\DC3\SUB< The HTTP request size in bytes. If unknown, it must be -1.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\b\ENQ\DC2\EOT\137\SOH\EOT\t\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\b\SOH\DC2\EOT\137\SOH\n\
    \\SO\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\b\ETX\DC2\EOT\137\SOH\DC1\DC2\n\
    \\214\SOH\n\
    \\ACK\EOT\NUL\ETX\STX\STX\t\DC2\EOT\143\SOH\EOT\EM\SUB\197\SOH The network protocol used with the request, such as \"HTTP/1.0\", \"HTTP/1.1\", or \"HTTP/2\".\n\
    \\n\
    \ See :repo:`headers.h:ProtocolStrings <source/common/http/headers.h>` for a list of all\n\
    \ possible values.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\t\ENQ\DC2\EOT\143\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\t\SOH\DC2\EOT\143\SOH\v\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\t\ETX\DC2\EOT\143\SOH\SYN\CAN\n\
    \(\n\
    \\ACK\EOT\NUL\ETX\STX\STX\n\
    \\DC2\EOT\146\SOH\EOT\NAK\SUB\CAN The HTTP request body.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\n\
    \\ENQ\DC2\EOT\146\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\n\
    \\SOH\DC2\EOT\146\SOH\v\SI\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\n\
    \\ETX\DC2\EOT\146\SOH\DC2\DC4\n\
    \\161\STX\n\
    \\ACK\EOT\NUL\ETX\STX\STX\v\DC2\EOT\152\SOH\EOT\CAN\SUB\144\STX The HTTP request body in bytes. This is used instead of\n\
    \ :ref:`body <envoy_v3_api_field_service.auth.v3.AttributeContext.HttpRequest.body>` when\n\
    \ :ref:`pack_as_bytes <envoy_v3_api_field_extensions.filters.http.ext_authz.v3.BufferSettings.pack_as_bytes>`\n\
    \ is set to true.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\v\ENQ\DC2\EOT\152\SOH\EOT\t\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\v\SOH\DC2\EOT\152\SOH\n\
    \\DC2\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\v\ETX\DC2\EOT\152\SOH\NAK\ETB\n\
    \\170\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\158\SOH\STX\DC2\SUB\155\SOH The source of a network activity, such as starting a TCP connection.\n\
    \ In a multi hop network activity, the source represents the sender of the\n\
    \ last hop.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\EOT\158\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\EOT\158\SOH\a\r\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\EOT\158\SOH\DLE\DC1\n\
    \\183\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\163\SOH\STX\ETB\SUB\168\SOH The destination of a network activity, such as accepting a TCP connection.\n\
    \ In a multi hop network activity, the destination represents the receiver of\n\
    \ the last hop.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\EOT\163\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\EOT\163\SOH\a\DC2\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\EOT\163\SOH\NAK\SYN\n\
    \F\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOT\166\SOH\STX\SYN\SUB8 Represents a network request, such as an HTTP request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\EOT\166\SOH\STX\t\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\EOT\166\SOH\n\
    \\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\EOT\166\SOH\DC4\NAK\n\
    \\202\STX\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\EOT\172\SOH\STX.\SUB\187\STX This is analogous to http_request.headers, however these contents will not be sent to the\n\
    \ upstream server. Context_extensions provide an extension mechanism for sending additional\n\
    \ information to the auth server without modifying the proto definition. It maps to the\n\
    \ internal opaque context in the filter chain.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\EOT\172\SOH\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\EOT\172\SOH\SYN(\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\EOT\172\SOH+-\n\
    \=\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\EOT\175\SOH\STX0\SUB/ Dynamic metadata associated with the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\EOT\175\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\EOT\175\SOH\SUB*\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\EOT\175\SOH-/b\ACKproto3"