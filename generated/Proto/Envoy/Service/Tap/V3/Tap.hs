{- This file was auto-generated from envoy/service/tap/v3/tap.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Service.Tap.V3.Tap (
        TapSinkService(..), StreamTapsRequest(),
        StreamTapsRequest'Identifier(), StreamTapsResponse()
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
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Data.Tap.V3.Wrapper
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Service.Tap.V3.Tap_Fields.identifier' @:: Lens' StreamTapsRequest StreamTapsRequest'Identifier@
         * 'Proto.Envoy.Service.Tap.V3.Tap_Fields.maybe'identifier' @:: Lens' StreamTapsRequest (Prelude.Maybe StreamTapsRequest'Identifier)@
         * 'Proto.Envoy.Service.Tap.V3.Tap_Fields.traceId' @:: Lens' StreamTapsRequest Data.Word.Word64@
         * 'Proto.Envoy.Service.Tap.V3.Tap_Fields.trace' @:: Lens' StreamTapsRequest Proto.Envoy.Data.Tap.V3.Wrapper.TraceWrapper@
         * 'Proto.Envoy.Service.Tap.V3.Tap_Fields.maybe'trace' @:: Lens' StreamTapsRequest (Prelude.Maybe Proto.Envoy.Data.Tap.V3.Wrapper.TraceWrapper)@ -}
data StreamTapsRequest
  = StreamTapsRequest'_constructor {_StreamTapsRequest'identifier :: !(Prelude.Maybe StreamTapsRequest'Identifier),
                                    _StreamTapsRequest'traceId :: !Data.Word.Word64,
                                    _StreamTapsRequest'trace :: !(Prelude.Maybe Proto.Envoy.Data.Tap.V3.Wrapper.TraceWrapper),
                                    _StreamTapsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StreamTapsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StreamTapsRequest "identifier" StreamTapsRequest'Identifier where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamTapsRequest'identifier
           (\ x__ y__ -> x__ {_StreamTapsRequest'identifier = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StreamTapsRequest "maybe'identifier" (Prelude.Maybe StreamTapsRequest'Identifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamTapsRequest'identifier
           (\ x__ y__ -> x__ {_StreamTapsRequest'identifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamTapsRequest "traceId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamTapsRequest'traceId
           (\ x__ y__ -> x__ {_StreamTapsRequest'traceId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamTapsRequest "trace" Proto.Envoy.Data.Tap.V3.Wrapper.TraceWrapper where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamTapsRequest'trace
           (\ x__ y__ -> x__ {_StreamTapsRequest'trace = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StreamTapsRequest "maybe'trace" (Prelude.Maybe Proto.Envoy.Data.Tap.V3.Wrapper.TraceWrapper) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamTapsRequest'trace
           (\ x__ y__ -> x__ {_StreamTapsRequest'trace = y__}))
        Prelude.id
instance Data.ProtoLens.Message StreamTapsRequest where
  messageName _
    = Data.Text.pack "envoy.service.tap.v3.StreamTapsRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC1StreamTapsRequest\DC2R\n\
      \\n\
      \identifier\CAN\SOH \SOH(\v22.envoy.service.tap.v3.StreamTapsRequest.IdentifierR\n\
      \identifier\DC2\EM\n\
      \\btrace_id\CAN\STX \SOH(\EOTR\atraceId\DC25\n\
      \\ENQtrace\CAN\ETX \SOH(\v2\US.envoy.data.tap.v3.TraceWrapperR\ENQtrace\SUB\156\SOH\n\
      \\n\
      \Identifier\DC28\n\
      \\EOTnode\CAN\SOH \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnodeB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\NAK\n\
      \\ACKtap_id\CAN\STX \SOH(\tR\ENQtapId:=\154\197\136\RS8\n\
      \6envoy.service.tap.v2alpha.StreamTapsRequest.Identifier:2\154\197\136\RS-\n\
      \+envoy.service.tap.v2alpha.StreamTapsRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        identifier__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "identifier"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StreamTapsRequest'Identifier)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'identifier")) ::
              Data.ProtoLens.FieldDescriptor StreamTapsRequest
        traceId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trace_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"traceId")) ::
              Data.ProtoLens.FieldDescriptor StreamTapsRequest
        trace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trace"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Data.Tap.V3.Wrapper.TraceWrapper)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'trace")) ::
              Data.ProtoLens.FieldDescriptor StreamTapsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, identifier__field_descriptor),
           (Data.ProtoLens.Tag 2, traceId__field_descriptor),
           (Data.ProtoLens.Tag 3, trace__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StreamTapsRequest'_unknownFields
        (\ x__ y__ -> x__ {_StreamTapsRequest'_unknownFields = y__})
  defMessage
    = StreamTapsRequest'_constructor
        {_StreamTapsRequest'identifier = Prelude.Nothing,
         _StreamTapsRequest'traceId = Data.ProtoLens.fieldDefault,
         _StreamTapsRequest'trace = Prelude.Nothing,
         _StreamTapsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StreamTapsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser StreamTapsRequest
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
                                       "identifier"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"identifier") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "trace_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"traceId") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "trace"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"trace") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StreamTapsRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'identifier") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"traceId") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'trace") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData StreamTapsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StreamTapsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StreamTapsRequest'identifier x__)
                (Control.DeepSeq.deepseq
                   (_StreamTapsRequest'traceId x__)
                   (Control.DeepSeq.deepseq (_StreamTapsRequest'trace x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Service.Tap.V3.Tap_Fields.node' @:: Lens' StreamTapsRequest'Identifier Proto.Envoy.Config.Core.V3.Base.Node@
         * 'Proto.Envoy.Service.Tap.V3.Tap_Fields.maybe'node' @:: Lens' StreamTapsRequest'Identifier (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node)@
         * 'Proto.Envoy.Service.Tap.V3.Tap_Fields.tapId' @:: Lens' StreamTapsRequest'Identifier Data.Text.Text@ -}
data StreamTapsRequest'Identifier
  = StreamTapsRequest'Identifier'_constructor {_StreamTapsRequest'Identifier'node :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node),
                                               _StreamTapsRequest'Identifier'tapId :: !Data.Text.Text,
                                               _StreamTapsRequest'Identifier'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StreamTapsRequest'Identifier where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StreamTapsRequest'Identifier "node" Proto.Envoy.Config.Core.V3.Base.Node where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamTapsRequest'Identifier'node
           (\ x__ y__ -> x__ {_StreamTapsRequest'Identifier'node = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StreamTapsRequest'Identifier "maybe'node" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamTapsRequest'Identifier'node
           (\ x__ y__ -> x__ {_StreamTapsRequest'Identifier'node = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamTapsRequest'Identifier "tapId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamTapsRequest'Identifier'tapId
           (\ x__ y__ -> x__ {_StreamTapsRequest'Identifier'tapId = y__}))
        Prelude.id
instance Data.ProtoLens.Message StreamTapsRequest'Identifier where
  messageName _
    = Data.Text.pack
        "envoy.service.tap.v3.StreamTapsRequest.Identifier"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Identifier\DC28\n\
      \\EOTnode\CAN\SOH \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnodeB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\NAK\n\
      \\ACKtap_id\CAN\STX \SOH(\tR\ENQtapId:=\154\197\136\RS8\n\
      \6envoy.service.tap.v2alpha.StreamTapsRequest.Identifier"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        node__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "node"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.Node)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'node")) ::
              Data.ProtoLens.FieldDescriptor StreamTapsRequest'Identifier
        tapId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tap_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"tapId")) ::
              Data.ProtoLens.FieldDescriptor StreamTapsRequest'Identifier
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, node__field_descriptor),
           (Data.ProtoLens.Tag 2, tapId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StreamTapsRequest'Identifier'_unknownFields
        (\ x__ y__
           -> x__ {_StreamTapsRequest'Identifier'_unknownFields = y__})
  defMessage
    = StreamTapsRequest'Identifier'_constructor
        {_StreamTapsRequest'Identifier'node = Prelude.Nothing,
         _StreamTapsRequest'Identifier'tapId = Data.ProtoLens.fieldDefault,
         _StreamTapsRequest'Identifier'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StreamTapsRequest'Identifier
          -> Data.ProtoLens.Encoding.Bytes.Parser StreamTapsRequest'Identifier
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
                                       "node"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"node") y x)
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
                                       "tap_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tapId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Identifier"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'node") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"tapId") _x
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
instance Control.DeepSeq.NFData StreamTapsRequest'Identifier where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StreamTapsRequest'Identifier'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StreamTapsRequest'Identifier'node x__)
                (Control.DeepSeq.deepseq
                   (_StreamTapsRequest'Identifier'tapId x__) ()))
{- | Fields :
      -}
data StreamTapsResponse
  = StreamTapsResponse'_constructor {_StreamTapsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StreamTapsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message StreamTapsResponse where
  messageName _
    = Data.Text.pack "envoy.service.tap.v3.StreamTapsResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC2StreamTapsResponse:3\154\197\136\RS.\n\
      \,envoy.service.tap.v2alpha.StreamTapsResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StreamTapsResponse'_unknownFields
        (\ x__ y__ -> x__ {_StreamTapsResponse'_unknownFields = y__})
  defMessage
    = StreamTapsResponse'_constructor
        {_StreamTapsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StreamTapsResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser StreamTapsResponse
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
          (do loop Data.ProtoLens.defMessage) "StreamTapsResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData StreamTapsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StreamTapsResponse'_unknownFields x__) ()
data TapSinkService = TapSinkService {}
instance Data.ProtoLens.Service.Types.Service TapSinkService where
  type ServiceName TapSinkService = "TapSinkService"
  type ServicePackage TapSinkService = "envoy.service.tap.v3"
  type ServiceMethods TapSinkService = '["streamTaps"]
instance Data.ProtoLens.Service.Types.HasMethodImpl TapSinkService "streamTaps" where
  type MethodName TapSinkService "streamTaps" = "StreamTaps"
  type MethodInput TapSinkService "streamTaps" = StreamTapsRequest
  type MethodOutput TapSinkService "streamTaps" = StreamTapsResponse
  type MethodStreamingType TapSinkService "streamTaps" = 'Data.ProtoLens.Service.Types.ClientStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\RSenvoy/service/tap/v3/tap.proto\DC2\DC4envoy.service.tap.v3\SUB\USenvoy/config/core/v3/base.proto\SUB\USenvoy/data/tap/v3/wrapper.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\140\ETX\n\
    \\DC1StreamTapsRequest\DC2R\n\
    \\n\
    \identifier\CAN\SOH \SOH(\v22.envoy.service.tap.v3.StreamTapsRequest.IdentifierR\n\
    \identifier\DC2\EM\n\
    \\btrace_id\CAN\STX \SOH(\EOTR\atraceId\DC25\n\
    \\ENQtrace\CAN\ETX \SOH(\v2\US.envoy.data.tap.v3.TraceWrapperR\ENQtrace\SUB\156\SOH\n\
    \\n\
    \Identifier\DC28\n\
    \\EOTnode\CAN\SOH \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnodeB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\NAK\n\
    \\ACKtap_id\CAN\STX \SOH(\tR\ENQtapId:=\154\197\136\RS8\n\
    \6envoy.service.tap.v2alpha.StreamTapsRequest.Identifier:2\154\197\136\RS-\n\
    \+envoy.service.tap.v2alpha.StreamTapsRequest\"I\n\
    \\DC2StreamTapsResponse:3\154\197\136\RS.\n\
    \,envoy.service.tap.v2alpha.StreamTapsResponse2u\n\
    \\SOTapSinkService\DC2c\n\
    \\n\
    \StreamTaps\DC2'.envoy.service.tap.v3.StreamTapsRequest\SUB(.envoy.service.tap.v3.StreamTapsResponse\"\NUL(\SOHB;\n\
    \\"io.envoyproxy.envoy.service.tap.v3B\bTapProtoP\SOH\136\SOH\SOH\186\128\200\209\ACK\STX\DLE\STXJ\196\SO\n\
    \\ACK\DC2\EOT\NUL\NUL?\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL+\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL;\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NUL;\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL)\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL)\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\r\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL$\n\
    \\t\n\
    \\STX\b\DC1\DC2\ETX\SO\NUL$\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SI\NULF\n\
    \\185\SOH\n\
    \\STX\ACK\NUL\DC2\EOT\NAK\NUL\ESC\SOH\SUB\133\SOH [#not-implemented-hide:] A tap service to receive incoming taps. Envoy will call\n\
    \ StreamTaps to deliver captured taps to the server\n\
    \2% [#protodoc-title: Tap Sink Service]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\NAK\b\SYN\n\
    \\237\SOH\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\EM\STX\SUB\ETX\SUB\222\SOH Envoy will connect and send StreamTapsRequest messages forever. It does not expect any\n\
    \ response to be sent as nothing would be done in the case of failure. The server should\n\
    \ disconnect if it expects Envoy to reconnect.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\EM\ACK\DLE\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ENQ\DC2\ETX\EM\DC1\ETB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\EM\CAN)\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\EM4F\n\
    \\162\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\US\NUL9\SOH\SUB\149\SOH [#not-implemented-hide:] Stream message for the Tap API. Envoy will open a stream to the server\n\
    \ and stream taps without ever expecting a response.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\US\b\EM\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT \STX!4\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT \STX!4\n\
    \\f\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT#\STX-\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX#\n\
    \\DC4\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT$\EOT%A\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT$\EOT%A\n\
    \7\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX(\EOTO\SUB( The node sending taps over the stream.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETX(\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX(\CAN\FS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX(\US \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\b\DC2\ETX(!N\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\NUL\b\175\b\DC1\DC2\ETX(\"M\n\
    \\141\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX,\EOT\SYN\SUB~ The opaque identifier that was set in the :ref:`output config\n\
    \ <envoy_v3_api_field_config.tap.v3.StreamingGrpcSink.tap_id>`.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETX,\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX,\v\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX,\DC4\NAK\n\
    \\159\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX1\STX\FS\SUB\145\SOH Identifier data effectively is a structured metadata. As a performance optimization this will\n\
    \ only be sent in the first message on the stream.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX1\STX\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX1\r\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX1\SUB\ESC\n\
    \\163\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX5\STX\SYN\SUB\149\SOH The trace id. this can be used to merge together a streaming trace. Note that the trace_id\n\
    \ is not guaranteed to be spatially or temporally unique.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX5\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX5\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX5\DC4\NAK\n\
    \\RS\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX8\STX%\SUB\DC1 The trace data.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX8\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX8\ESC \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX8#$\n\
    \&\n\
    \\STX\EOT\SOH\DC2\EOT<\NUL?\SOH\SUB\SUB [#not-implemented-hide:]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX<\b\SUB\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT=\STX>5\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT=\STX>5b\ACKproto3"