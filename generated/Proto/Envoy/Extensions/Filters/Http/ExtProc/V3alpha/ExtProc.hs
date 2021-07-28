{- This file was auto-generated from envoy/extensions/filters/http/ext_proc/v3alpha/ext_proc.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc (
        ExtProcOverrides(), ExtProcPerRoute(),
        ExtProcPerRoute'Override(..), _ExtProcPerRoute'Disabled,
        _ExtProcPerRoute'Overrides, ExternalProcessor()
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
import qualified Proto.Envoy.Config.Core.V3.GrpcService
import qualified Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc_Fields.processingMode' @:: Lens' ExtProcOverrides Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode.ProcessingMode@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc_Fields.maybe'processingMode' @:: Lens' ExtProcOverrides (Prelude.Maybe Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode.ProcessingMode)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc_Fields.asyncMode' @:: Lens' ExtProcOverrides Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc_Fields.requestProperties' @:: Lens' ExtProcOverrides [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc_Fields.vec'requestProperties' @:: Lens' ExtProcOverrides (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc_Fields.responseProperties' @:: Lens' ExtProcOverrides [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc_Fields.vec'responseProperties' @:: Lens' ExtProcOverrides (Data.Vector.Vector Data.Text.Text)@ -}
data ExtProcOverrides
  = ExtProcOverrides'_constructor {_ExtProcOverrides'processingMode :: !(Prelude.Maybe Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode.ProcessingMode),
                                   _ExtProcOverrides'asyncMode :: !Prelude.Bool,
                                   _ExtProcOverrides'requestProperties :: !(Data.Vector.Vector Data.Text.Text),
                                   _ExtProcOverrides'responseProperties :: !(Data.Vector.Vector Data.Text.Text),
                                   _ExtProcOverrides'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ExtProcOverrides where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ExtProcOverrides "processingMode" Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode.ProcessingMode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtProcOverrides'processingMode
           (\ x__ y__ -> x__ {_ExtProcOverrides'processingMode = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ExtProcOverrides "maybe'processingMode" (Prelude.Maybe Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode.ProcessingMode) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtProcOverrides'processingMode
           (\ x__ y__ -> x__ {_ExtProcOverrides'processingMode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtProcOverrides "asyncMode" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtProcOverrides'asyncMode
           (\ x__ y__ -> x__ {_ExtProcOverrides'asyncMode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtProcOverrides "requestProperties" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtProcOverrides'requestProperties
           (\ x__ y__ -> x__ {_ExtProcOverrides'requestProperties = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ExtProcOverrides "vec'requestProperties" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtProcOverrides'requestProperties
           (\ x__ y__ -> x__ {_ExtProcOverrides'requestProperties = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtProcOverrides "responseProperties" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtProcOverrides'responseProperties
           (\ x__ y__ -> x__ {_ExtProcOverrides'responseProperties = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ExtProcOverrides "vec'responseProperties" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtProcOverrides'responseProperties
           (\ x__ y__ -> x__ {_ExtProcOverrides'responseProperties = y__}))
        Prelude.id
instance Data.ProtoLens.Message ExtProcOverrides where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.ext_proc.v3alpha.ExtProcOverrides"
  packedMessageDescriptor _
    = "\n\
      \\DLEExtProcOverrides\DC2g\n\
      \\SIprocessing_mode\CAN\SOH \SOH(\v2>.envoy.extensions.filters.http.ext_proc.v3alpha.ProcessingModeR\SOprocessingMode\DC2\GS\n\
      \\n\
      \async_mode\CAN\STX \SOH(\bR\tasyncMode\DC2-\n\
      \\DC2request_properties\CAN\ETX \ETX(\tR\DC1requestProperties\DC2/\n\
      \\DC3response_properties\CAN\EOT \ETX(\tR\DC2responseProperties"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        processingMode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "processing_mode"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode.ProcessingMode)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'processingMode")) ::
              Data.ProtoLens.FieldDescriptor ExtProcOverrides
        asyncMode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "async_mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"asyncMode")) ::
              Data.ProtoLens.FieldDescriptor ExtProcOverrides
        requestProperties__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_properties"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"requestProperties")) ::
              Data.ProtoLens.FieldDescriptor ExtProcOverrides
        responseProperties__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_properties"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"responseProperties")) ::
              Data.ProtoLens.FieldDescriptor ExtProcOverrides
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, processingMode__field_descriptor),
           (Data.ProtoLens.Tag 2, asyncMode__field_descriptor),
           (Data.ProtoLens.Tag 3, requestProperties__field_descriptor),
           (Data.ProtoLens.Tag 4, responseProperties__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ExtProcOverrides'_unknownFields
        (\ x__ y__ -> x__ {_ExtProcOverrides'_unknownFields = y__})
  defMessage
    = ExtProcOverrides'_constructor
        {_ExtProcOverrides'processingMode = Prelude.Nothing,
         _ExtProcOverrides'asyncMode = Data.ProtoLens.fieldDefault,
         _ExtProcOverrides'requestProperties = Data.Vector.Generic.empty,
         _ExtProcOverrides'responseProperties = Data.Vector.Generic.empty,
         _ExtProcOverrides'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ExtProcOverrides
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Bytes.Parser ExtProcOverrides
        loop x mutable'requestProperties mutable'responseProperties
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'requestProperties <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                       mutable'requestProperties)
                      frozen'responseProperties <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'responseProperties)
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
                              (Data.ProtoLens.Field.field @"vec'requestProperties")
                              frozen'requestProperties
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'responseProperties")
                                 frozen'responseProperties
                                 x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "processing_mode"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"processingMode") y x)
                                  mutable'requestProperties
                                  mutable'responseProperties
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "async_mode"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"asyncMode") y x)
                                  mutable'requestProperties
                                  mutable'responseProperties
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "request_properties"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'requestProperties y)
                                loop x v mutable'responseProperties
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "response_properties"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'responseProperties y)
                                loop x mutable'requestProperties v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'requestProperties
                                  mutable'responseProperties
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'requestProperties <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             Data.ProtoLens.Encoding.Growing.new
              mutable'responseProperties <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'requestProperties
                mutable'responseProperties)
          "ExtProcOverrides"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'processingMode") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"asyncMode") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt
                            (\ b -> if b then 1 else 0)
                            _v))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.Text.Encoding.encodeUtf8
                                 _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'requestProperties") _x))
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.Text.Encoding.encodeUtf8
                                    _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'responseProperties") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData ExtProcOverrides where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ExtProcOverrides'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ExtProcOverrides'processingMode x__)
                (Control.DeepSeq.deepseq
                   (_ExtProcOverrides'asyncMode x__)
                   (Control.DeepSeq.deepseq
                      (_ExtProcOverrides'requestProperties x__)
                      (Control.DeepSeq.deepseq
                         (_ExtProcOverrides'responseProperties x__) ()))))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc_Fields.maybe'override' @:: Lens' ExtProcPerRoute (Prelude.Maybe ExtProcPerRoute'Override)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc_Fields.maybe'disabled' @:: Lens' ExtProcPerRoute (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc_Fields.disabled' @:: Lens' ExtProcPerRoute Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc_Fields.maybe'overrides' @:: Lens' ExtProcPerRoute (Prelude.Maybe ExtProcOverrides)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc_Fields.overrides' @:: Lens' ExtProcPerRoute ExtProcOverrides@ -}
data ExtProcPerRoute
  = ExtProcPerRoute'_constructor {_ExtProcPerRoute'override :: !(Prelude.Maybe ExtProcPerRoute'Override),
                                  _ExtProcPerRoute'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ExtProcPerRoute where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ExtProcPerRoute'Override
  = ExtProcPerRoute'Disabled !Prelude.Bool |
    ExtProcPerRoute'Overrides !ExtProcOverrides
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ExtProcPerRoute "maybe'override" (Prelude.Maybe ExtProcPerRoute'Override) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtProcPerRoute'override
           (\ x__ y__ -> x__ {_ExtProcPerRoute'override = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtProcPerRoute "maybe'disabled" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtProcPerRoute'override
           (\ x__ y__ -> x__ {_ExtProcPerRoute'override = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ExtProcPerRoute'Disabled x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ExtProcPerRoute'Disabled y__))
instance Data.ProtoLens.Field.HasField ExtProcPerRoute "disabled" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtProcPerRoute'override
           (\ x__ y__ -> x__ {_ExtProcPerRoute'override = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ExtProcPerRoute'Disabled x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ExtProcPerRoute'Disabled y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField ExtProcPerRoute "maybe'overrides" (Prelude.Maybe ExtProcOverrides) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtProcPerRoute'override
           (\ x__ y__ -> x__ {_ExtProcPerRoute'override = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ExtProcPerRoute'Overrides x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ExtProcPerRoute'Overrides y__))
instance Data.ProtoLens.Field.HasField ExtProcPerRoute "overrides" ExtProcOverrides where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtProcPerRoute'override
           (\ x__ y__ -> x__ {_ExtProcPerRoute'override = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ExtProcPerRoute'Overrides x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ExtProcPerRoute'Overrides y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ExtProcPerRoute where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.ext_proc.v3alpha.ExtProcPerRoute"
  packedMessageDescriptor _
    = "\n\
      \\SIExtProcPerRoute\DC2%\n\
      \\bdisabled\CAN\SOH \SOH(\bH\NULR\bdisabledB\a\250B\EOTj\STX\b\SOH\DC2`\n\
      \\toverrides\CAN\STX \SOH(\v2@.envoy.extensions.filters.http.ext_proc.v3alpha.ExtProcOverridesH\NULR\toverridesB\SI\n\
      \\boverride\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        disabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "disabled"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'disabled")) ::
              Data.ProtoLens.FieldDescriptor ExtProcPerRoute
        overrides__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "overrides"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ExtProcOverrides)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'overrides")) ::
              Data.ProtoLens.FieldDescriptor ExtProcPerRoute
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, disabled__field_descriptor),
           (Data.ProtoLens.Tag 2, overrides__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ExtProcPerRoute'_unknownFields
        (\ x__ y__ -> x__ {_ExtProcPerRoute'_unknownFields = y__})
  defMessage
    = ExtProcPerRoute'_constructor
        {_ExtProcPerRoute'override = Prelude.Nothing,
         _ExtProcPerRoute'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ExtProcPerRoute
          -> Data.ProtoLens.Encoding.Bytes.Parser ExtProcPerRoute
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "disabled"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"disabled") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "overrides"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"overrides") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ExtProcPerRoute"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'override") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (ExtProcPerRoute'Disabled v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt
                          (\ b -> if b then 1 else 0)
                          v)
                (Prelude.Just (ExtProcPerRoute'Overrides v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
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
instance Control.DeepSeq.NFData ExtProcPerRoute where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ExtProcPerRoute'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ExtProcPerRoute'override x__) ())
instance Control.DeepSeq.NFData ExtProcPerRoute'Override where
  rnf (ExtProcPerRoute'Disabled x__) = Control.DeepSeq.rnf x__
  rnf (ExtProcPerRoute'Overrides x__) = Control.DeepSeq.rnf x__
_ExtProcPerRoute'Disabled ::
  Data.ProtoLens.Prism.Prism' ExtProcPerRoute'Override Prelude.Bool
_ExtProcPerRoute'Disabled
  = Data.ProtoLens.Prism.prism'
      ExtProcPerRoute'Disabled
      (\ p__
         -> case p__ of
              (ExtProcPerRoute'Disabled p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ExtProcPerRoute'Overrides ::
  Data.ProtoLens.Prism.Prism' ExtProcPerRoute'Override ExtProcOverrides
_ExtProcPerRoute'Overrides
  = Data.ProtoLens.Prism.prism'
      ExtProcPerRoute'Overrides
      (\ p__
         -> case p__ of
              (ExtProcPerRoute'Overrides p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc_Fields.grpcService' @:: Lens' ExternalProcessor Proto.Envoy.Config.Core.V3.GrpcService.GrpcService@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc_Fields.maybe'grpcService' @:: Lens' ExternalProcessor (Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc_Fields.failureModeAllow' @:: Lens' ExternalProcessor Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc_Fields.processingMode' @:: Lens' ExternalProcessor Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode.ProcessingMode@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc_Fields.maybe'processingMode' @:: Lens' ExternalProcessor (Prelude.Maybe Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode.ProcessingMode)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc_Fields.asyncMode' @:: Lens' ExternalProcessor Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc_Fields.requestAttributes' @:: Lens' ExternalProcessor [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc_Fields.vec'requestAttributes' @:: Lens' ExternalProcessor (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc_Fields.responseAttributes' @:: Lens' ExternalProcessor [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc_Fields.vec'responseAttributes' @:: Lens' ExternalProcessor (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc_Fields.messageTimeout' @:: Lens' ExternalProcessor Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc_Fields.maybe'messageTimeout' @:: Lens' ExternalProcessor (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc_Fields.statPrefix' @:: Lens' ExternalProcessor Data.Text.Text@ -}
data ExternalProcessor
  = ExternalProcessor'_constructor {_ExternalProcessor'grpcService :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService),
                                    _ExternalProcessor'failureModeAllow :: !Prelude.Bool,
                                    _ExternalProcessor'processingMode :: !(Prelude.Maybe Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode.ProcessingMode),
                                    _ExternalProcessor'asyncMode :: !Prelude.Bool,
                                    _ExternalProcessor'requestAttributes :: !(Data.Vector.Vector Data.Text.Text),
                                    _ExternalProcessor'responseAttributes :: !(Data.Vector.Vector Data.Text.Text),
                                    _ExternalProcessor'messageTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                    _ExternalProcessor'statPrefix :: !Data.Text.Text,
                                    _ExternalProcessor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ExternalProcessor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ExternalProcessor "grpcService" Proto.Envoy.Config.Core.V3.GrpcService.GrpcService where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExternalProcessor'grpcService
           (\ x__ y__ -> x__ {_ExternalProcessor'grpcService = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ExternalProcessor "maybe'grpcService" (Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExternalProcessor'grpcService
           (\ x__ y__ -> x__ {_ExternalProcessor'grpcService = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExternalProcessor "failureModeAllow" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExternalProcessor'failureModeAllow
           (\ x__ y__ -> x__ {_ExternalProcessor'failureModeAllow = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExternalProcessor "processingMode" Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode.ProcessingMode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExternalProcessor'processingMode
           (\ x__ y__ -> x__ {_ExternalProcessor'processingMode = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ExternalProcessor "maybe'processingMode" (Prelude.Maybe Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode.ProcessingMode) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExternalProcessor'processingMode
           (\ x__ y__ -> x__ {_ExternalProcessor'processingMode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExternalProcessor "asyncMode" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExternalProcessor'asyncMode
           (\ x__ y__ -> x__ {_ExternalProcessor'asyncMode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExternalProcessor "requestAttributes" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExternalProcessor'requestAttributes
           (\ x__ y__ -> x__ {_ExternalProcessor'requestAttributes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ExternalProcessor "vec'requestAttributes" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExternalProcessor'requestAttributes
           (\ x__ y__ -> x__ {_ExternalProcessor'requestAttributes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExternalProcessor "responseAttributes" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExternalProcessor'responseAttributes
           (\ x__ y__ -> x__ {_ExternalProcessor'responseAttributes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ExternalProcessor "vec'responseAttributes" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExternalProcessor'responseAttributes
           (\ x__ y__ -> x__ {_ExternalProcessor'responseAttributes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExternalProcessor "messageTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExternalProcessor'messageTimeout
           (\ x__ y__ -> x__ {_ExternalProcessor'messageTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ExternalProcessor "maybe'messageTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExternalProcessor'messageTimeout
           (\ x__ y__ -> x__ {_ExternalProcessor'messageTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExternalProcessor "statPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExternalProcessor'statPrefix
           (\ x__ y__ -> x__ {_ExternalProcessor'statPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Message ExternalProcessor where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.ext_proc.v3alpha.ExternalProcessor"
  packedMessageDescriptor _
    = "\n\
      \\DC1ExternalProcessor\DC2D\n\
      \\fgrpc_service\CAN\SOH \SOH(\v2!.envoy.config.core.v3.GrpcServiceR\vgrpcService\DC2,\n\
      \\DC2failure_mode_allow\CAN\STX \SOH(\bR\DLEfailureModeAllow\DC2g\n\
      \\SIprocessing_mode\CAN\ETX \SOH(\v2>.envoy.extensions.filters.http.ext_proc.v3alpha.ProcessingModeR\SOprocessingMode\DC2\GS\n\
      \\n\
      \async_mode\CAN\EOT \SOH(\bR\tasyncMode\DC2-\n\
      \\DC2request_attributes\CAN\ENQ \ETX(\tR\DC1requestAttributes\DC2/\n\
      \\DC3response_attributes\CAN\ACK \ETX(\tR\DC2responseAttributes\DC2B\n\
      \\SImessage_timeout\CAN\a \SOH(\v2\EM.google.protobuf.DurationR\SOmessageTimeout\DC2\US\n\
      \\vstat_prefix\CAN\b \SOH(\tR\n\
      \statPrefix"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        grpcService__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grpc_service"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.GrpcService.GrpcService)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'grpcService")) ::
              Data.ProtoLens.FieldDescriptor ExternalProcessor
        failureModeAllow__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure_mode_allow"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"failureModeAllow")) ::
              Data.ProtoLens.FieldDescriptor ExternalProcessor
        processingMode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "processing_mode"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode.ProcessingMode)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'processingMode")) ::
              Data.ProtoLens.FieldDescriptor ExternalProcessor
        asyncMode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "async_mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"asyncMode")) ::
              Data.ProtoLens.FieldDescriptor ExternalProcessor
        requestAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_attributes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"requestAttributes")) ::
              Data.ProtoLens.FieldDescriptor ExternalProcessor
        responseAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_attributes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"responseAttributes")) ::
              Data.ProtoLens.FieldDescriptor ExternalProcessor
        messageTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "message_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'messageTimeout")) ::
              Data.ProtoLens.FieldDescriptor ExternalProcessor
        statPrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stat_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"statPrefix")) ::
              Data.ProtoLens.FieldDescriptor ExternalProcessor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, grpcService__field_descriptor),
           (Data.ProtoLens.Tag 2, failureModeAllow__field_descriptor),
           (Data.ProtoLens.Tag 3, processingMode__field_descriptor),
           (Data.ProtoLens.Tag 4, asyncMode__field_descriptor),
           (Data.ProtoLens.Tag 5, requestAttributes__field_descriptor),
           (Data.ProtoLens.Tag 6, responseAttributes__field_descriptor),
           (Data.ProtoLens.Tag 7, messageTimeout__field_descriptor),
           (Data.ProtoLens.Tag 8, statPrefix__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ExternalProcessor'_unknownFields
        (\ x__ y__ -> x__ {_ExternalProcessor'_unknownFields = y__})
  defMessage
    = ExternalProcessor'_constructor
        {_ExternalProcessor'grpcService = Prelude.Nothing,
         _ExternalProcessor'failureModeAllow = Data.ProtoLens.fieldDefault,
         _ExternalProcessor'processingMode = Prelude.Nothing,
         _ExternalProcessor'asyncMode = Data.ProtoLens.fieldDefault,
         _ExternalProcessor'requestAttributes = Data.Vector.Generic.empty,
         _ExternalProcessor'responseAttributes = Data.Vector.Generic.empty,
         _ExternalProcessor'messageTimeout = Prelude.Nothing,
         _ExternalProcessor'statPrefix = Data.ProtoLens.fieldDefault,
         _ExternalProcessor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ExternalProcessor
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Bytes.Parser ExternalProcessor
        loop x mutable'requestAttributes mutable'responseAttributes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'requestAttributes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                       mutable'requestAttributes)
                      frozen'responseAttributes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'responseAttributes)
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
                              (Data.ProtoLens.Field.field @"vec'requestAttributes")
                              frozen'requestAttributes
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'responseAttributes")
                                 frozen'responseAttributes
                                 x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "grpc_service"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"grpcService") y x)
                                  mutable'requestAttributes
                                  mutable'responseAttributes
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "failure_mode_allow"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"failureModeAllow") y x)
                                  mutable'requestAttributes
                                  mutable'responseAttributes
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "processing_mode"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"processingMode") y x)
                                  mutable'requestAttributes
                                  mutable'responseAttributes
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "async_mode"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"asyncMode") y x)
                                  mutable'requestAttributes
                                  mutable'responseAttributes
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "request_attributes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'requestAttributes y)
                                loop x v mutable'responseAttributes
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "response_attributes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'responseAttributes y)
                                loop x mutable'requestAttributes v
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "message_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"messageTimeout") y x)
                                  mutable'requestAttributes
                                  mutable'responseAttributes
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
                                       "stat_prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"statPrefix") y x)
                                  mutable'requestAttributes
                                  mutable'responseAttributes
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'requestAttributes
                                  mutable'responseAttributes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'requestAttributes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             Data.ProtoLens.Encoding.Growing.new
              mutable'responseAttributes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'requestAttributes
                mutable'responseAttributes)
          "ExternalProcessor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'grpcService") _x
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
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"failureModeAllow") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt
                            (\ b -> if b then 1 else 0)
                            _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'processingMode") _x
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
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"asyncMode") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (\ b -> if b then 1 else 0)
                                  _v))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                    ((Prelude..)
                                       (\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.Text.Encoding.encodeUtf8
                                       _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'requestAttributes") _x))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
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
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"vec'responseAttributes") _x))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'messageTimeout") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage
                                            _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"statPrefix") _x
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
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData ExternalProcessor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ExternalProcessor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ExternalProcessor'grpcService x__)
                (Control.DeepSeq.deepseq
                   (_ExternalProcessor'failureModeAllow x__)
                   (Control.DeepSeq.deepseq
                      (_ExternalProcessor'processingMode x__)
                      (Control.DeepSeq.deepseq
                         (_ExternalProcessor'asyncMode x__)
                         (Control.DeepSeq.deepseq
                            (_ExternalProcessor'requestAttributes x__)
                            (Control.DeepSeq.deepseq
                               (_ExternalProcessor'responseAttributes x__)
                               (Control.DeepSeq.deepseq
                                  (_ExternalProcessor'messageTimeout x__)
                                  (Control.DeepSeq.deepseq
                                     (_ExternalProcessor'statPrefix x__) ()))))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \=envoy/extensions/filters/http/ext_proc/v3alpha/ext_proc.proto\DC2.envoy.extensions.filters.http.ext_proc.v3alpha\SUB'envoy/config/core/v3/grpc_service.proto\SUBDenvoy/extensions/filters/http/ext_proc/v3alpha/processing_mode.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\212\ETX\n\
    \\DC1ExternalProcessor\DC2D\n\
    \\fgrpc_service\CAN\SOH \SOH(\v2!.envoy.config.core.v3.GrpcServiceR\vgrpcService\DC2,\n\
    \\DC2failure_mode_allow\CAN\STX \SOH(\bR\DLEfailureModeAllow\DC2g\n\
    \\SIprocessing_mode\CAN\ETX \SOH(\v2>.envoy.extensions.filters.http.ext_proc.v3alpha.ProcessingModeR\SOprocessingMode\DC2\GS\n\
    \\n\
    \async_mode\CAN\EOT \SOH(\bR\tasyncMode\DC2-\n\
    \\DC2request_attributes\CAN\ENQ \ETX(\tR\DC1requestAttributes\DC2/\n\
    \\DC3response_attributes\CAN\ACK \ETX(\tR\DC2responseAttributes\DC2B\n\
    \\SImessage_timeout\CAN\a \SOH(\v2\EM.google.protobuf.DurationR\SOmessageTimeout\DC2\US\n\
    \\vstat_prefix\CAN\b \SOH(\tR\n\
    \statPrefix\"\171\SOH\n\
    \\SIExtProcPerRoute\DC2%\n\
    \\bdisabled\CAN\SOH \SOH(\bH\NULR\bdisabledB\a\250B\EOTj\STX\b\SOH\DC2`\n\
    \\toverrides\CAN\STX \SOH(\v2@.envoy.extensions.filters.http.ext_proc.v3alpha.ExtProcOverridesH\NULR\toverridesB\SI\n\
    \\boverride\DC2\ETX\248B\SOH\"\250\SOH\n\
    \\DLEExtProcOverrides\DC2g\n\
    \\SIprocessing_mode\CAN\SOH \SOH(\v2>.envoy.extensions.filters.http.ext_proc.v3alpha.ProcessingModeR\SOprocessingMode\DC2\GS\n\
    \\n\
    \async_mode\CAN\STX \SOH(\bR\tasyncMode\DC2-\n\
    \\DC2request_properties\CAN\ETX \ETX(\tR\DC1requestProperties\DC2/\n\
    \\DC3response_properties\CAN\EOT \ETX(\tR\DC2responsePropertiesB^\n\
    \<io.envoyproxy.envoy.extensions.filters.http.ext_proc.v3alphaB\fExtProcProtoP\SOH\186\128\200\209\ACK\STX\b\SOH\186\128\200\209\ACK\STX\DLE\STXJ\142;\n\
    \\a\DC2\ENQ\NUL\NUL\168\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL7\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL1\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NULN\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL'\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULU\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NULU\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL-\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL-\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SO\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL>\n\
    \\r\n\
    \\ACK\b\135\128\153j\SOH\DC2\ETX\SI\NUL>\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DLE\NULF\n\
    \\188\CAN\n\
    \\STX\EOT\NUL\DC2\ENQQ\NUL\136\SOH\SOH\SUB\ETB [#next-free-field: 9]\n\
    \2v [#protodoc-title: External Processing Filter]\n\
    \ External Processing Filter\n\
    \ [#extension: envoy.filters.http.ext_proc]\n\
    \2e The External Processing filter allows an external service to act on HTTP traffic in a flexible way.\n\
    \2\146\EOT **Current Implementation Status:**\n\
    \ The filter will send the \"request_headers\" and \"response_headers\" messages by default.\n\
    \ In addition, if the \"processing mode\" is set , the \"request_body\" and \"response_body\"\n\
    \ messages will be sent if the corresponding fields of the \"processing_mode\" are\n\
    \ set to BUFFERED, and trailers will be sent if the corresponding fields are set\n\
    \ to SEND. The other body processing modes are not\n\
    \ implemented yet. The filter will also respond to \"immediate_response\" messages\n\
    \ at any point in the stream.\n\
    \2\227\STX As designed, the filter supports up to six different processing steps, which are in the\n\
    \ process of being implemented:\n\
    \ * Request headers: IMPLEMENTED\n\
    \ * Request body: Only BUFFERED mode is implemented\n\
    \ * Request trailers: IMPLEMENTED\n\
    \ * Response headers: IMPLEMENTED\n\
    \ * Response body: Only BUFFERED mode is implemented\n\
    \ * Response trailers: IMPLEMENTED\n\
    \2\187\SI The filter communicates with an external gRPC service that can use it to do a variety of things\n\
    \ with the request and response:\n\
    \\n\
    \ * Access and modify the HTTP headers on the request, response, or both\n\
    \ * Access and modify the HTTP request and response bodies\n\
    \ * Access and modify the dynamic stream metadata\n\
    \ * Immediately send an HTTP response downstream and terminate other processing\n\
    \\n\
    \ The filter communicates with the server using a gRPC bidirectional stream. After the initial\n\
    \ request, the external server is in control over what additional data is sent to it\n\
    \ and how it should be processed.\n\
    \\n\
    \ By implementing the protocol specified by the stream, the external server can choose:\n\
    \\n\
    \ * Whether it receives the response message at all\n\
    \ * Whether it receives the message body at all, in separate chunks, or as a single buffer\n\
    \ * Whether subsequent HTTP requests are transmitted synchronously or whether they are\n\
    \   sent asynchronously.\n\
    \ * To modify request or response trailers if they already exist\n\
    \ * To add request or response trailers where they are not present\n\
    \\n\
    \ All of this together allows a server to process the filter traffic in fairly\n\
    \ sophisticated ways. For example:\n\
    \\n\
    \ * A server may choose to examine all or part of the HTTP message bodies depending\n\
    \   on the content of the headers.\n\
    \ * A server may choose to immediately reject some messages based on their HTTP\n\
    \   headers (or other dynamic metadata) and more carefully examine others\n\
    \ * A server may asynchronously monitor traffic coming through the filter by inspecting\n\
    \   headers, bodies, or both, and then decide to switch to a synchronous processing\n\
    \   mode, either permanently or temporarily.\n\
    \\n\
    \ The protocol itself is based on a bidirectional gRPC stream. Envoy will send the\n\
    \ server\n\
    \ :ref:`ProcessingRequest <envoy_v3_api_msg_service.ext_proc.v3alpha.ProcessingRequest>`\n\
    \ messages, and the server must reply with\n\
    \ :ref:`ProcessingResponse <envoy_v3_api_msg_service.ext_proc.v3alpha.ProcessingResponse>`.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETXQ\b\EM\n\
    \\154\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXT\STX.\SUB\140\SOH Configuration for the gRPC service that the filter will communicate with.\n\
    \ The filter supports both the \"Envoy\" and \"Google\" gRPC clients.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETXT\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXT\GS)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXT,-\n\
    \\244\ETX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX]\STX\RS\SUB\230\ETX By default, if the gRPC stream cannot be established, or if it is closed\n\
    \ prematurely with an error, the filter will fail. Specifically, if the\n\
    \ response headers have not yet been delivered, then it will return a 500\n\
    \ error downstream. If they have been delivered, then instead the HTTP stream to the\n\
    \ downstream client will be reset.\n\
    \ With this parameter set to true, however, then if the gRPC stream is prematurely closed\n\
    \ or could not be opened, processing continues without error.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX]\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX]\a\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX]\FS\GS\n\
    \~\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXa\STX%\SUBq Specifies default options for how HTTP headers, trailers, and bodies are\n\
    \ sent. See ProcessingMode for details.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETXa\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXa\DC1 \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXa#$\n\
    \\132\ETX\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETXi\STX\SYN\SUB\246\STX [#not-implemented-hide:]\n\
    \ If true, send each part of the HTTP request or response specified by ProcessingMode\n\
    \ asynchronously -- in other words, send the message on the gRPC stream and then continue\n\
    \ filter processing. If false, which is the default, suspend filter execution after\n\
    \ each message is sent to the remote service and wait up to \"message_timeout\"\n\
    \ for a reply.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETXi\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETXi\a\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETXi\DC4\NAK\n\
    \\137\ETX\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXq\STX)\SUB\251\STX [#not-implemented-hide:]\n\
    \ Envoy provides a number of :ref:`attributes <arch_overview_attributes>`\n\
    \ for expressive policies. Each attribute name provided in this field will be\n\
    \ matched against that list and populated in the request_headers message.\n\
    \ See the :ref:`attribute documentation <arch_overview_request_attributes>`\n\
    \ for the list of supported attributes and their types.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETXq\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETXq\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXq\DC2$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXq'(\n\
    \\130\ETX\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXy\STX*\SUB\244\STX [#not-implemented-hide:]\n\
    \ Envoy provides a number of :ref:`attributes <arch_overview_attributes>`\n\
    \ for expressive policies. Each attribute name provided in this field will be\n\
    \ matched against that list and populated in the response_headers message.\n\
    \ See the :ref:`attribute documentation <arch_overview_attributes>`\n\
    \ for the list of supported attributes and their types.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETXy\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETXy\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXy\DC2%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXy()\n\
    \\226\ETX\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\EOT\130\SOH\STX/\SUB\211\ETX Specifies the timeout for each individual message sent on the stream and\n\
    \ when the filter is running in synchronous mode. Whenever\n\
    \ the proxy sends a message on the stream that requires a response, it will\n\
    \ reset this timer, and will stop processing and return an error (subject\n\
    \ to the processing mode) if the timer expires before a matching response.\n\
    \ is received. There is no timeout when the filter is running in asynchronous\n\
    \ mode. Default is 200 milliseconds.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\EOT\130\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\EOT\130\SOH\ESC*\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\EOT\130\SOH-.\n\
    \\212\SOH\n\
    \\EOT\EOT\NUL\STX\a\DC2\EOT\135\SOH\STX\EM\SUB\197\SOH [#not-implemented-hide:]\n\
    \ Optional additional prefix to use when emitting statistics. This allows to distinguish\n\
    \ emitted statistics between configured *ext_proc* filters in an HTTP filter chain.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\EOT\135\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\EOT\135\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\EOT\135\SOH\ETB\CAN\n\
    \\133\SOH\n\
    \\STX\EOT\SOH\DC2\ACK\141\SOH\NUL\152\SOH\SOH\SUBw [#not-implemented-hide:]\n\
    \ Extra settings that may be added to per-route configuration for a\n\
    \ virtual host or cluster.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SOH\SOH\DC2\EOT\141\SOH\b\ETB\n\
    \\SO\n\
    \\EOT\EOT\SOH\b\NUL\DC2\ACK\142\SOH\STX\151\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\EOT\142\SOH\b\DLE\n\
    \\r\n\
    \\ENQ\EOT\SOH\b\NUL\STX\DC2\EOT\143\SOH\EOT&\n\
    \\SI\n\
    \\a\EOT\SOH\b\NUL\STX\175\b\DC2\EOT\143\SOH\EOT&\n\
    \\165\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOT\147\SOH\EOT>\SUB\150\SOH Disable the filter for this particular vhost or route.\n\
    \ If disabled is specified in multiple per-filter-configs, the most specific one will be used.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\EOT\147\SOH\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\EOT\147\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\EOT\147\SOH\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\EOT\147\SOH\SYN=\n\
    \\DLE\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\r\DC2\EOT\147\SOH\ETB<\n\
    \D\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT\150\SOH\EOT#\SUB6 Override aspects of the configuration for this route\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\EOT\150\SOH\EOT\DC4\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\EOT\150\SOH\NAK\RS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\EOT\150\SOH!\"\n\
    \X\n\
    \\STX\EOT\STX\DC2\ACK\156\SOH\NUL\168\SOH\SOH\SUBJ [#not-implemented-hide:]\n\
    \ Overrides that may be set on a per-route basis\n\
    \\n\
    \\v\n\
    \\ETX\EOT\STX\SOH\DC2\EOT\156\SOH\b\CAN\n\
    \P\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\158\SOH\STX%\SUBB Set a different processing mode for this route than the default.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\EOT\158\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\158\SOH\DC1 \n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\158\SOH#$\n\
    \P\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOT\161\SOH\STX\SYN\SUBB Set a different asynchronous processing option than the default.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\EOT\161\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\EOT\161\SOH\a\DC1\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\EOT\161\SOH\DC4\NAK\n\
    \C\n\
    \\EOT\EOT\STX\STX\STX\DC2\EOT\164\SOH\STX)\SUB5 Set different optional properties than the default.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\EOT\164\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\EOT\164\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\EOT\164\SOH\DC2$\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\EOT\164\SOH'(\n\
    \C\n\
    \\EOT\EOT\STX\STX\ETX\DC2\EOT\167\SOH\STX*\SUB5 Set different optional properties than the default.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\EOT\DC2\EOT\167\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\EOT\167\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\EOT\167\SOH\DC2%\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\EOT\167\SOH()b\ACKproto3"