{- This file was auto-generated from xds/core/v3/resource_locator.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Xds.Core.V3.ResourceLocator (
        ResourceLocator(), ResourceLocator'ContextParamSpecifier(..),
        _ResourceLocator'ExactContext, ResourceLocator'Directive(),
        ResourceLocator'Directive'Directive(..),
        _ResourceLocator'Directive'Alt, _ResourceLocator'Directive'Entry,
        ResourceLocator'Scheme(..), ResourceLocator'Scheme(),
        ResourceLocator'Scheme'UnrecognizedValue
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
import qualified Proto.Validate.Validate
import qualified Proto.Xds.Core.V3.ContextParams
{- | Fields :
     
         * 'Proto.Xds.Core.V3.ResourceLocator_Fields.scheme' @:: Lens' ResourceLocator ResourceLocator'Scheme@
         * 'Proto.Xds.Core.V3.ResourceLocator_Fields.id' @:: Lens' ResourceLocator Data.Text.Text@
         * 'Proto.Xds.Core.V3.ResourceLocator_Fields.authority' @:: Lens' ResourceLocator Data.Text.Text@
         * 'Proto.Xds.Core.V3.ResourceLocator_Fields.resourceType' @:: Lens' ResourceLocator Data.Text.Text@
         * 'Proto.Xds.Core.V3.ResourceLocator_Fields.directives' @:: Lens' ResourceLocator [ResourceLocator'Directive]@
         * 'Proto.Xds.Core.V3.ResourceLocator_Fields.vec'directives' @:: Lens' ResourceLocator (Data.Vector.Vector ResourceLocator'Directive)@
         * 'Proto.Xds.Core.V3.ResourceLocator_Fields.maybe'contextParamSpecifier' @:: Lens' ResourceLocator (Prelude.Maybe ResourceLocator'ContextParamSpecifier)@
         * 'Proto.Xds.Core.V3.ResourceLocator_Fields.maybe'exactContext' @:: Lens' ResourceLocator (Prelude.Maybe Proto.Xds.Core.V3.ContextParams.ContextParams)@
         * 'Proto.Xds.Core.V3.ResourceLocator_Fields.exactContext' @:: Lens' ResourceLocator Proto.Xds.Core.V3.ContextParams.ContextParams@ -}
data ResourceLocator
  = ResourceLocator'_constructor {_ResourceLocator'scheme :: !ResourceLocator'Scheme,
                                  _ResourceLocator'id :: !Data.Text.Text,
                                  _ResourceLocator'authority :: !Data.Text.Text,
                                  _ResourceLocator'resourceType :: !Data.Text.Text,
                                  _ResourceLocator'directives :: !(Data.Vector.Vector ResourceLocator'Directive),
                                  _ResourceLocator'contextParamSpecifier :: !(Prelude.Maybe ResourceLocator'ContextParamSpecifier),
                                  _ResourceLocator'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResourceLocator where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ResourceLocator'ContextParamSpecifier
  = ResourceLocator'ExactContext !Proto.Xds.Core.V3.ContextParams.ContextParams
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ResourceLocator "scheme" ResourceLocator'Scheme where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResourceLocator'scheme
           (\ x__ y__ -> x__ {_ResourceLocator'scheme = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResourceLocator "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResourceLocator'id (\ x__ y__ -> x__ {_ResourceLocator'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResourceLocator "authority" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResourceLocator'authority
           (\ x__ y__ -> x__ {_ResourceLocator'authority = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResourceLocator "resourceType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResourceLocator'resourceType
           (\ x__ y__ -> x__ {_ResourceLocator'resourceType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResourceLocator "directives" [ResourceLocator'Directive] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResourceLocator'directives
           (\ x__ y__ -> x__ {_ResourceLocator'directives = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ResourceLocator "vec'directives" (Data.Vector.Vector ResourceLocator'Directive) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResourceLocator'directives
           (\ x__ y__ -> x__ {_ResourceLocator'directives = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResourceLocator "maybe'contextParamSpecifier" (Prelude.Maybe ResourceLocator'ContextParamSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResourceLocator'contextParamSpecifier
           (\ x__ y__ -> x__ {_ResourceLocator'contextParamSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResourceLocator "maybe'exactContext" (Prelude.Maybe Proto.Xds.Core.V3.ContextParams.ContextParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResourceLocator'contextParamSpecifier
           (\ x__ y__ -> x__ {_ResourceLocator'contextParamSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ResourceLocator'ExactContext x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ResourceLocator'ExactContext y__))
instance Data.ProtoLens.Field.HasField ResourceLocator "exactContext" Proto.Xds.Core.V3.ContextParams.ContextParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResourceLocator'contextParamSpecifier
           (\ x__ y__ -> x__ {_ResourceLocator'contextParamSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ResourceLocator'ExactContext x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ResourceLocator'ExactContext y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ResourceLocator where
  messageName _ = Data.Text.pack "xds.core.v3.ResourceLocator"
  packedMessageDescriptor _
    = "\n\
      \\SIResourceLocator\DC2E\n\
      \\ACKscheme\CAN\SOH \SOH(\SO2#.xds.core.v3.ResourceLocator.SchemeR\ACKschemeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2\SO\n\
      \\STXid\CAN\STX \SOH(\tR\STXid\DC2\FS\n\
      \\tauthority\CAN\ETX \SOH(\tR\tauthority\DC2,\n\
      \\rresource_type\CAN\EOT \SOH(\tR\fresourceTypeB\a\250B\EOTr\STX\DLE\SOH\DC2A\n\
      \\rexact_context\CAN\ENQ \SOH(\v2\SUB.xds.core.v3.ContextParamsH\NULR\fexactContext\DC2F\n\
      \\n\
      \directives\CAN\ACK \ETX(\v2&.xds.core.v3.ResourceLocator.DirectiveR\n\
      \directives\SUB\136\SOH\n\
      \\tDirective\DC20\n\
      \\ETXalt\CAN\SOH \SOH(\v2\FS.xds.core.v3.ResourceLocatorH\NULR\ETXalt\DC27\n\
      \\ENQentry\CAN\STX \SOH(\tH\NULR\ENQentryB\US\250B\FSr\SUB\DLE\SOH2\SYN^[0-9a-zA-Z_\\-\\./~:]+$B\DLE\n\
      \\tdirective\DC2\ETX\248B\SOH\"'\n\
      \\ACKScheme\DC2\t\n\
      \\ENQXDSTP\DLE\NUL\DC2\b\n\
      \\EOTHTTP\DLE\SOH\DC2\b\n\
      \\EOTFILE\DLE\STXB\EM\n\
      \\ETBcontext_param_specifier"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        scheme__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scheme"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ResourceLocator'Scheme)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"scheme")) ::
              Data.ProtoLens.FieldDescriptor ResourceLocator
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor ResourceLocator
        authority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authority"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"authority")) ::
              Data.ProtoLens.FieldDescriptor ResourceLocator
        resourceType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resource_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"resourceType")) ::
              Data.ProtoLens.FieldDescriptor ResourceLocator
        directives__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "directives"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResourceLocator'Directive)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"directives")) ::
              Data.ProtoLens.FieldDescriptor ResourceLocator
        exactContext__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "exact_context"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Xds.Core.V3.ContextParams.ContextParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'exactContext")) ::
              Data.ProtoLens.FieldDescriptor ResourceLocator
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, scheme__field_descriptor),
           (Data.ProtoLens.Tag 2, id__field_descriptor),
           (Data.ProtoLens.Tag 3, authority__field_descriptor),
           (Data.ProtoLens.Tag 4, resourceType__field_descriptor),
           (Data.ProtoLens.Tag 6, directives__field_descriptor),
           (Data.ProtoLens.Tag 5, exactContext__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResourceLocator'_unknownFields
        (\ x__ y__ -> x__ {_ResourceLocator'_unknownFields = y__})
  defMessage
    = ResourceLocator'_constructor
        {_ResourceLocator'scheme = Data.ProtoLens.fieldDefault,
         _ResourceLocator'id = Data.ProtoLens.fieldDefault,
         _ResourceLocator'authority = Data.ProtoLens.fieldDefault,
         _ResourceLocator'resourceType = Data.ProtoLens.fieldDefault,
         _ResourceLocator'directives = Data.Vector.Generic.empty,
         _ResourceLocator'contextParamSpecifier = Prelude.Nothing,
         _ResourceLocator'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResourceLocator
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ResourceLocator'Directive
             -> Data.ProtoLens.Encoding.Bytes.Parser ResourceLocator
        loop x mutable'directives
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'directives <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'directives)
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
                              (Data.ProtoLens.Field.field @"vec'directives")
                              frozen'directives
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "scheme"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"scheme") y x)
                                  mutable'directives
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
                                       "id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                                  mutable'directives
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "authority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"authority") y x)
                                  mutable'directives
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
                                       "resource_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"resourceType") y x)
                                  mutable'directives
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "directives"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'directives y)
                                loop x v
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "exact_context"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"exactContext") y x)
                                  mutable'directives
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'directives
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'directives <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'directives)
          "ResourceLocator"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"scheme") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum
                         _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
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
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"authority") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"resourceType") _x
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
                                       Data.ProtoLens.encodeMessage
                                       _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'directives") _x))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'contextParamSpecifier") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just (ResourceLocator'ExactContext v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage
                                         v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData ResourceLocator where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResourceLocator'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResourceLocator'scheme x__)
                (Control.DeepSeq.deepseq
                   (_ResourceLocator'id x__)
                   (Control.DeepSeq.deepseq
                      (_ResourceLocator'authority x__)
                      (Control.DeepSeq.deepseq
                         (_ResourceLocator'resourceType x__)
                         (Control.DeepSeq.deepseq
                            (_ResourceLocator'directives x__)
                            (Control.DeepSeq.deepseq
                               (_ResourceLocator'contextParamSpecifier x__) ()))))))
instance Control.DeepSeq.NFData ResourceLocator'ContextParamSpecifier where
  rnf (ResourceLocator'ExactContext x__) = Control.DeepSeq.rnf x__
_ResourceLocator'ExactContext ::
  Data.ProtoLens.Prism.Prism' ResourceLocator'ContextParamSpecifier Proto.Xds.Core.V3.ContextParams.ContextParams
_ResourceLocator'ExactContext
  = Data.ProtoLens.Prism.prism'
      ResourceLocator'ExactContext
      (\ p__
         -> case p__ of {
              (ResourceLocator'ExactContext p__val) -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.Xds.Core.V3.ResourceLocator_Fields.maybe'directive' @:: Lens' ResourceLocator'Directive (Prelude.Maybe ResourceLocator'Directive'Directive)@
         * 'Proto.Xds.Core.V3.ResourceLocator_Fields.maybe'alt' @:: Lens' ResourceLocator'Directive (Prelude.Maybe ResourceLocator)@
         * 'Proto.Xds.Core.V3.ResourceLocator_Fields.alt' @:: Lens' ResourceLocator'Directive ResourceLocator@
         * 'Proto.Xds.Core.V3.ResourceLocator_Fields.maybe'entry' @:: Lens' ResourceLocator'Directive (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Xds.Core.V3.ResourceLocator_Fields.entry' @:: Lens' ResourceLocator'Directive Data.Text.Text@ -}
data ResourceLocator'Directive
  = ResourceLocator'Directive'_constructor {_ResourceLocator'Directive'directive :: !(Prelude.Maybe ResourceLocator'Directive'Directive),
                                            _ResourceLocator'Directive'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResourceLocator'Directive where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ResourceLocator'Directive'Directive
  = ResourceLocator'Directive'Alt !ResourceLocator |
    ResourceLocator'Directive'Entry !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ResourceLocator'Directive "maybe'directive" (Prelude.Maybe ResourceLocator'Directive'Directive) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResourceLocator'Directive'directive
           (\ x__ y__ -> x__ {_ResourceLocator'Directive'directive = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResourceLocator'Directive "maybe'alt" (Prelude.Maybe ResourceLocator) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResourceLocator'Directive'directive
           (\ x__ y__ -> x__ {_ResourceLocator'Directive'directive = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ResourceLocator'Directive'Alt x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ResourceLocator'Directive'Alt y__))
instance Data.ProtoLens.Field.HasField ResourceLocator'Directive "alt" ResourceLocator where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResourceLocator'Directive'directive
           (\ x__ y__ -> x__ {_ResourceLocator'Directive'directive = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ResourceLocator'Directive'Alt x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ResourceLocator'Directive'Alt y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ResourceLocator'Directive "maybe'entry" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResourceLocator'Directive'directive
           (\ x__ y__ -> x__ {_ResourceLocator'Directive'directive = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ResourceLocator'Directive'Entry x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ResourceLocator'Directive'Entry y__))
instance Data.ProtoLens.Field.HasField ResourceLocator'Directive "entry" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResourceLocator'Directive'directive
           (\ x__ y__ -> x__ {_ResourceLocator'Directive'directive = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ResourceLocator'Directive'Entry x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ResourceLocator'Directive'Entry y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message ResourceLocator'Directive where
  messageName _
    = Data.Text.pack "xds.core.v3.ResourceLocator.Directive"
  packedMessageDescriptor _
    = "\n\
      \\tDirective\DC20\n\
      \\ETXalt\CAN\SOH \SOH(\v2\FS.xds.core.v3.ResourceLocatorH\NULR\ETXalt\DC27\n\
      \\ENQentry\CAN\STX \SOH(\tH\NULR\ENQentryB\US\250B\FSr\SUB\DLE\SOH2\SYN^[0-9a-zA-Z_\\-\\./~:]+$B\DLE\n\
      \\tdirective\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        alt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "alt"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResourceLocator)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'alt")) ::
              Data.ProtoLens.FieldDescriptor ResourceLocator'Directive
        entry__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "entry"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'entry")) ::
              Data.ProtoLens.FieldDescriptor ResourceLocator'Directive
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, alt__field_descriptor),
           (Data.ProtoLens.Tag 2, entry__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResourceLocator'Directive'_unknownFields
        (\ x__ y__
           -> x__ {_ResourceLocator'Directive'_unknownFields = y__})
  defMessage
    = ResourceLocator'Directive'_constructor
        {_ResourceLocator'Directive'directive = Prelude.Nothing,
         _ResourceLocator'Directive'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResourceLocator'Directive
          -> Data.ProtoLens.Encoding.Bytes.Parser ResourceLocator'Directive
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
                                       "alt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"alt") y x)
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
                                       "entry"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"entry") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Directive"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'directive") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (ResourceLocator'Directive'Alt v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (ResourceLocator'Directive'Entry v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ResourceLocator'Directive where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResourceLocator'Directive'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResourceLocator'Directive'directive x__) ())
instance Control.DeepSeq.NFData ResourceLocator'Directive'Directive where
  rnf (ResourceLocator'Directive'Alt x__) = Control.DeepSeq.rnf x__
  rnf (ResourceLocator'Directive'Entry x__) = Control.DeepSeq.rnf x__
_ResourceLocator'Directive'Alt ::
  Data.ProtoLens.Prism.Prism' ResourceLocator'Directive'Directive ResourceLocator
_ResourceLocator'Directive'Alt
  = Data.ProtoLens.Prism.prism'
      ResourceLocator'Directive'Alt
      (\ p__
         -> case p__ of
              (ResourceLocator'Directive'Alt p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ResourceLocator'Directive'Entry ::
  Data.ProtoLens.Prism.Prism' ResourceLocator'Directive'Directive Data.Text.Text
_ResourceLocator'Directive'Entry
  = Data.ProtoLens.Prism.prism'
      ResourceLocator'Directive'Entry
      (\ p__
         -> case p__ of
              (ResourceLocator'Directive'Entry p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
newtype ResourceLocator'Scheme'UnrecognizedValue
  = ResourceLocator'Scheme'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ResourceLocator'Scheme
  = ResourceLocator'XDSTP |
    ResourceLocator'HTTP |
    ResourceLocator'FILE |
    ResourceLocator'Scheme'Unrecognized !ResourceLocator'Scheme'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ResourceLocator'Scheme where
  maybeToEnum 0 = Prelude.Just ResourceLocator'XDSTP
  maybeToEnum 1 = Prelude.Just ResourceLocator'HTTP
  maybeToEnum 2 = Prelude.Just ResourceLocator'FILE
  maybeToEnum k
    = Prelude.Just
        (ResourceLocator'Scheme'Unrecognized
           (ResourceLocator'Scheme'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum ResourceLocator'XDSTP = "XDSTP"
  showEnum ResourceLocator'HTTP = "HTTP"
  showEnum ResourceLocator'FILE = "FILE"
  showEnum
    (ResourceLocator'Scheme'Unrecognized (ResourceLocator'Scheme'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "XDSTP" = Prelude.Just ResourceLocator'XDSTP
    | (Prelude.==) k "HTTP" = Prelude.Just ResourceLocator'HTTP
    | (Prelude.==) k "FILE" = Prelude.Just ResourceLocator'FILE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ResourceLocator'Scheme where
  minBound = ResourceLocator'XDSTP
  maxBound = ResourceLocator'FILE
instance Prelude.Enum ResourceLocator'Scheme where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Scheme: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum ResourceLocator'XDSTP = 0
  fromEnum ResourceLocator'HTTP = 1
  fromEnum ResourceLocator'FILE = 2
  fromEnum
    (ResourceLocator'Scheme'Unrecognized (ResourceLocator'Scheme'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ ResourceLocator'FILE
    = Prelude.error
        "ResourceLocator'Scheme.succ: bad argument ResourceLocator'FILE. This value would be out of bounds."
  succ ResourceLocator'XDSTP = ResourceLocator'HTTP
  succ ResourceLocator'HTTP = ResourceLocator'FILE
  succ (ResourceLocator'Scheme'Unrecognized _)
    = Prelude.error
        "ResourceLocator'Scheme.succ: bad argument: unrecognized value"
  pred ResourceLocator'XDSTP
    = Prelude.error
        "ResourceLocator'Scheme.pred: bad argument ResourceLocator'XDSTP. This value would be out of bounds."
  pred ResourceLocator'HTTP = ResourceLocator'XDSTP
  pred ResourceLocator'FILE = ResourceLocator'HTTP
  pred (ResourceLocator'Scheme'Unrecognized _)
    = Prelude.error
        "ResourceLocator'Scheme.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ResourceLocator'Scheme where
  fieldDefault = ResourceLocator'XDSTP
instance Control.DeepSeq.NFData ResourceLocator'Scheme where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\"xds/core/v3/resource_locator.proto\DC2\vxds.core.v3\SUB\GSudpa/annotations/status.proto\SUB xds/core/v3/context_params.proto\SUB\ETBvalidate/validate.proto\"\142\EOT\n\
    \\SIResourceLocator\DC2E\n\
    \\ACKscheme\CAN\SOH \SOH(\SO2#.xds.core.v3.ResourceLocator.SchemeR\ACKschemeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2\SO\n\
    \\STXid\CAN\STX \SOH(\tR\STXid\DC2\FS\n\
    \\tauthority\CAN\ETX \SOH(\tR\tauthority\DC2,\n\
    \\rresource_type\CAN\EOT \SOH(\tR\fresourceTypeB\a\250B\EOTr\STX\DLE\SOH\DC2A\n\
    \\rexact_context\CAN\ENQ \SOH(\v2\SUB.xds.core.v3.ContextParamsH\NULR\fexactContext\DC2F\n\
    \\n\
    \directives\CAN\ACK \ETX(\v2&.xds.core.v3.ResourceLocator.DirectiveR\n\
    \directives\SUB\136\SOH\n\
    \\tDirective\DC20\n\
    \\ETXalt\CAN\SOH \SOH(\v2\FS.xds.core.v3.ResourceLocatorH\NULR\ETXalt\DC27\n\
    \\ENQentry\CAN\STX \SOH(\tH\NULR\ENQentryB\US\250B\FSr\SUB\DLE\SOH2\SYN^[0-9a-zA-Z_\\-\\./~:]+$B\DLE\n\
    \\tdirective\DC2\ETX\248B\SOH\"'\n\
    \\ACKScheme\DC2\t\n\
    \\ENQXDSTP\DLE\NUL\DC2\b\n\
    \\EOTHTTP\DLE\SOH\DC2\b\n\
    \\EOTFILE\DLE\STXB\EM\n\
    \\ETBcontext_param_specifierB=\n\
    \\ESCcom.github.udpa.xds.core.v3B\DC4ResourceLocatorProtoP\SOH\186\128\200\209\ACK\STX\b\SOHJ\152\"\n\
    \\ACK\DC2\EOT\NUL\NULt\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\DC4\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL*\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL5\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\t\NUL5\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\n\
    \\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL4\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NUL4\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL>\n\
    \\r\n\
    \\ACK\b\135\128\153j\SOH\DC2\ETX\r\NUL>\n\
    \\205\EOT\n\
    \\STX\EOT\NUL\DC2\EOT \NULt\SOH\SUB\192\EOT xDS resource locators identify a xDS resource name and instruct the\n\
    \ data-plane load balancer on how the resource may be located.\n\
    \\n\
    \ Resource locators have a canonical xdstp:// URI representation:\n\
    \\n\
    \   xdstp://{authority}/{type_url}/{id}?{context_params}{#directive,*}\n\
    \\n\
    \ where context_params take the form of URI query parameters.\n\
    \\n\
    \ Resource locators have a similar canonical http:// URI representation:\n\
    \\n\
    \   http://{authority}/{type_url}/{id}?{context_params}{#directive,*}\n\
    \\n\
    \ Resource locators also have a simplified file:// URI representation:\n\
    \\n\
    \   file:///{id}{#directive,*}\n\
    \\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX \b\ETB\n\
    \\f\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT!\STX%\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX!\a\r\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX\"\EOT\SO\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX\"\EOT\t\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX\"\f\r\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX#\EOT\r\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX#\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX#\v\f\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETX$\EOT\r\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX$\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETX$\v\f\n\
    \\SUB\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX(\STXC\SUB\r URI scheme.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX(\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX(\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX(\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX(\DC4B\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DLE\DC2\ETX(\NAKA\n\
    \\195\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX-\STX\DLE\SUB\181\SOH Opaque identifier for the resource. Any '/' will not be escaped during URI\n\
    \ encoding and will form part of the URI path. This may end\n\
    \ with \226\128\152*\226\128\153 for glob collection references.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX-\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX-\t\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX-\SO\SI\n\
    \\154\STX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX3\STX\ETB\SUB\140\STX Logical authority for resource (not necessarily transport network address).\n\
    \ Authorities are opaque in the xDS API, data-plane load balancers will map\n\
    \ them to concrete network transports such as an xDS management server, e.g.\n\
    \ via envoy.config.core.v3.ConfigSource.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX3\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX3\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX3\NAK\SYN\n\
    \d\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX7\STXD\SUBW Fully qualified resource type (as in type URL without types.googleapis.com/\n\
    \ prefix).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX7\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX7\t\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX7\EM\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETX7\ESCC\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\175\b\SO\DC2\ETX7\FSB\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT9\STXA\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX9\b\US\n\
    \\236\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX>\EOT$\SUB\222\SOH Additional parameters that can be used to select resource variants.\n\
    \ Matches must be exact, i.e. all context parameters must match exactly and\n\
    \ there must be no additional context parameters set on the matched\n\
    \ resource.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX>\EOT\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX>\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX>\"#\n\
    \\203\b\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOTX\STXm\ETX\SUB\188\b Directives provide information to data-plane load balancers on how xDS\n\
    \ resource names are to be interpreted and potentially further resolved. For\n\
    \ example, they may provide alternative resource locators for when primary\n\
    \ resolution fails. Directives are not part of resource names and do not\n\
    \ appear in a xDS transport discovery request.\n\
    \\n\
    \ When encoding to URIs, directives take the form:\n\
    \\n\
    \ <directive name>=<string representation of directive value>\n\
    \\n\
    \ For example, we can have alt=xdstp://foo/bar or entry=some%20thing. Each\n\
    \ directive value type may have its own string encoding, in the case of\n\
    \ ResourceLocator there is a recursive URI encoding.\n\
    \\n\
    \ Percent encoding applies to the URI encoding of the directive value.\n\
    \ Multiple directives are comma-separated, so the reserved characters that\n\
    \ require percent encoding in a directive value are [',', '#', '[', ']',\n\
    \ '%']. These are the RFC3986 fragment reserved characters with the addition\n\
    \ of the xDS scheme specific ','. See\n\
    \ https://tools.ietf.org/html/rfc3986#page-49 for further details on URI ABNF\n\
    \ and reserved characters.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETXX\n\
    \\DC3\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\b\NUL\DC2\EOTY\EOTl\ENQ\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\b\NUL\SOH\DC2\ETXY\n\
    \\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\b\NUL\STX\DC2\ETXZ\ACK(\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\b\NUL\STX\175\b\DC2\ETXZ\ACK(\n\
    \\184\ETX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETXd\ACK\RS\SUB\168\ETX An alternative resource locator for fallback if the resource is\n\
    \ unavailable. For example, take the resource locator:\n\
    \\n\
    \   xdstp://foo/some-type/some-route-table#alt=xdstp://bar/some-type/another-route-table\n\
    \\n\
    \ If the data-plane load balancer is unable to reach `foo` to fetch the\n\
    \ resource, it will fallback to `bar`. Alternative resources do not need\n\
    \ to have equivalent content, but they should be functional substitutes.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETXd\ACK\NAK\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETXd\SYN\EM\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETXd\FS\GS\n\
    \\185\STX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETXk\ACKe\SUB\169\STX List collections support inlining of resources via the entry field in\n\
    \ Resource. These inlined Resource objects may have an optional name\n\
    \ field specified. When specified, the entry directive allows\n\
    \ ResourceLocator to directly reference these inlined resources, e.g.\n\
    \ xdstp://.../foo#entry=bar.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETXk\ACK\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETXk\r\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETXk\NAK\SYN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\b\DC2\ETXk\ETBd\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\SOH\b\175\b\SO\DC2\ETXk\CANc\n\
    \\171\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXs\STX$\SUB\157\SOH A list of directives that appear in the xDS resource locator #fragment.\n\
    \\n\
    \ When encoding to URI form, directives are percent encoded with comma\n\
    \ separation.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETXs\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETXs\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXs\NAK\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXs\"#b\ACKproto3"