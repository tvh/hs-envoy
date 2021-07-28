{- This file was auto-generated from envoy/extensions/filters/http/lua/v3/lua.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.Lua.V3.Lua (
        Lua(), Lua'SourceCodesEntry(), LuaPerRoute(),
        LuaPerRoute'Override(..), _LuaPerRoute'Disabled, _LuaPerRoute'Name,
        _LuaPerRoute'SourceCode
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
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Lua.V3.Lua_Fields.inlineCode' @:: Lens' Lua Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.Lua.V3.Lua_Fields.sourceCodes' @:: Lens' Lua (Data.Map.Map Data.Text.Text Proto.Envoy.Config.Core.V3.Base.DataSource)@ -}
data Lua
  = Lua'_constructor {_Lua'inlineCode :: !Data.Text.Text,
                      _Lua'sourceCodes :: !(Data.Map.Map Data.Text.Text Proto.Envoy.Config.Core.V3.Base.DataSource),
                      _Lua'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Lua where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Lua "inlineCode" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Lua'inlineCode (\ x__ y__ -> x__ {_Lua'inlineCode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Lua "sourceCodes" (Data.Map.Map Data.Text.Text Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Lua'sourceCodes (\ x__ y__ -> x__ {_Lua'sourceCodes = y__}))
        Prelude.id
instance Data.ProtoLens.Message Lua where
  messageName _
    = Data.Text.pack "envoy.extensions.filters.http.lua.v3.Lua"
  packedMessageDescriptor _
    = "\n\
      \\ETXLua\DC2(\n\
      \\vinline_code\CAN\SOH \SOH(\tR\n\
      \inlineCodeB\a\250B\EOTr\STX\DLE\SOH\DC2]\n\
      \\fsource_codes\CAN\STX \ETX(\v2:.envoy.extensions.filters.http.lua.v3.Lua.SourceCodesEntryR\vsourceCodes\SUB`\n\
      \\DLESourceCodesEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC26\n\
      \\ENQvalue\CAN\STX \SOH(\v2 .envoy.config.core.v3.DataSourceR\ENQvalue:\STX8\SOH:*\154\197\136\RS%\n\
      \#envoy.config.filter.http.lua.v2.Lua"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        inlineCode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "inline_code"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"inlineCode")) ::
              Data.ProtoLens.FieldDescriptor Lua
        sourceCodes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_codes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Lua'SourceCodesEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"sourceCodes")) ::
              Data.ProtoLens.FieldDescriptor Lua
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, inlineCode__field_descriptor),
           (Data.ProtoLens.Tag 2, sourceCodes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Lua'_unknownFields (\ x__ y__ -> x__ {_Lua'_unknownFields = y__})
  defMessage
    = Lua'_constructor
        {_Lua'inlineCode = Data.ProtoLens.fieldDefault,
         _Lua'sourceCodes = Data.Map.empty, _Lua'_unknownFields = []}
  parseMessage
    = let
        loop :: Lua -> Data.ProtoLens.Encoding.Bytes.Parser Lua
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
                                       "inline_code"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"inlineCode") y x)
                        18
                          -> do !(entry :: Lua'SourceCodesEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                      (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                          Data.ProtoLens.Encoding.Bytes.isolate
                                                                            (Prelude.fromIntegral
                                                                               len)
                                                                            Data.ProtoLens.parseMessage)
                                                                      "source_codes"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"sourceCodes")
                                        (\ !t -> Data.Map.insert key value t)
                                        x))
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Lua"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"inlineCode") _x
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
                (Data.Monoid.mconcat
                   (Prelude.map
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
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"key")
                                    (Prelude.fst _v)
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"value")
                                       (Prelude.snd _v)
                                       (Data.ProtoLens.defMessage :: Lua'SourceCodesEntry)))))
                      (Data.Map.toList
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"sourceCodes") _x))))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Lua where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Lua'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Lua'inlineCode x__)
                (Control.DeepSeq.deepseq (_Lua'sourceCodes x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Lua.V3.Lua_Fields.key' @:: Lens' Lua'SourceCodesEntry Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.Lua.V3.Lua_Fields.value' @:: Lens' Lua'SourceCodesEntry Proto.Envoy.Config.Core.V3.Base.DataSource@
         * 'Proto.Envoy.Extensions.Filters.Http.Lua.V3.Lua_Fields.maybe'value' @:: Lens' Lua'SourceCodesEntry (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource)@ -}
data Lua'SourceCodesEntry
  = Lua'SourceCodesEntry'_constructor {_Lua'SourceCodesEntry'key :: !Data.Text.Text,
                                       _Lua'SourceCodesEntry'value :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource),
                                       _Lua'SourceCodesEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Lua'SourceCodesEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Lua'SourceCodesEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Lua'SourceCodesEntry'key
           (\ x__ y__ -> x__ {_Lua'SourceCodesEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Lua'SourceCodesEntry "value" Proto.Envoy.Config.Core.V3.Base.DataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Lua'SourceCodesEntry'value
           (\ x__ y__ -> x__ {_Lua'SourceCodesEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Lua'SourceCodesEntry "maybe'value" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Lua'SourceCodesEntry'value
           (\ x__ y__ -> x__ {_Lua'SourceCodesEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Lua'SourceCodesEntry where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.lua.v3.Lua.SourceCodesEntry"
  packedMessageDescriptor _
    = "\n\
      \\DLESourceCodesEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC26\n\
      \\ENQvalue\CAN\STX \SOH(\v2 .envoy.config.core.v3.DataSourceR\ENQvalue:\STX8\SOH"
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
              Data.ProtoLens.FieldDescriptor Lua'SourceCodesEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.DataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor Lua'SourceCodesEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Lua'SourceCodesEntry'_unknownFields
        (\ x__ y__ -> x__ {_Lua'SourceCodesEntry'_unknownFields = y__})
  defMessage
    = Lua'SourceCodesEntry'_constructor
        {_Lua'SourceCodesEntry'key = Data.ProtoLens.fieldDefault,
         _Lua'SourceCodesEntry'value = Prelude.Nothing,
         _Lua'SourceCodesEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Lua'SourceCodesEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser Lua'SourceCodesEntry
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
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
          (do loop Data.ProtoLens.defMessage) "SourceCodesEntry"
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
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
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
instance Control.DeepSeq.NFData Lua'SourceCodesEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Lua'SourceCodesEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Lua'SourceCodesEntry'key x__)
                (Control.DeepSeq.deepseq (_Lua'SourceCodesEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Lua.V3.Lua_Fields.maybe'override' @:: Lens' LuaPerRoute (Prelude.Maybe LuaPerRoute'Override)@
         * 'Proto.Envoy.Extensions.Filters.Http.Lua.V3.Lua_Fields.maybe'disabled' @:: Lens' LuaPerRoute (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Envoy.Extensions.Filters.Http.Lua.V3.Lua_Fields.disabled' @:: Lens' LuaPerRoute Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.Lua.V3.Lua_Fields.maybe'name' @:: Lens' LuaPerRoute (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Http.Lua.V3.Lua_Fields.name' @:: Lens' LuaPerRoute Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.Lua.V3.Lua_Fields.maybe'sourceCode' @:: Lens' LuaPerRoute (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource)@
         * 'Proto.Envoy.Extensions.Filters.Http.Lua.V3.Lua_Fields.sourceCode' @:: Lens' LuaPerRoute Proto.Envoy.Config.Core.V3.Base.DataSource@ -}
data LuaPerRoute
  = LuaPerRoute'_constructor {_LuaPerRoute'override :: !(Prelude.Maybe LuaPerRoute'Override),
                              _LuaPerRoute'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LuaPerRoute where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data LuaPerRoute'Override
  = LuaPerRoute'Disabled !Prelude.Bool |
    LuaPerRoute'Name !Data.Text.Text |
    LuaPerRoute'SourceCode !Proto.Envoy.Config.Core.V3.Base.DataSource
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField LuaPerRoute "maybe'override" (Prelude.Maybe LuaPerRoute'Override) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LuaPerRoute'override
           (\ x__ y__ -> x__ {_LuaPerRoute'override = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LuaPerRoute "maybe'disabled" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LuaPerRoute'override
           (\ x__ y__ -> x__ {_LuaPerRoute'override = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (LuaPerRoute'Disabled x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap LuaPerRoute'Disabled y__))
instance Data.ProtoLens.Field.HasField LuaPerRoute "disabled" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LuaPerRoute'override
           (\ x__ y__ -> x__ {_LuaPerRoute'override = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (LuaPerRoute'Disabled x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap LuaPerRoute'Disabled y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField LuaPerRoute "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LuaPerRoute'override
           (\ x__ y__ -> x__ {_LuaPerRoute'override = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (LuaPerRoute'Name x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap LuaPerRoute'Name y__))
instance Data.ProtoLens.Field.HasField LuaPerRoute "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LuaPerRoute'override
           (\ x__ y__ -> x__ {_LuaPerRoute'override = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (LuaPerRoute'Name x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap LuaPerRoute'Name y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField LuaPerRoute "maybe'sourceCode" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LuaPerRoute'override
           (\ x__ y__ -> x__ {_LuaPerRoute'override = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (LuaPerRoute'SourceCode x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap LuaPerRoute'SourceCode y__))
instance Data.ProtoLens.Field.HasField LuaPerRoute "sourceCode" Proto.Envoy.Config.Core.V3.Base.DataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LuaPerRoute'override
           (\ x__ y__ -> x__ {_LuaPerRoute'override = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (LuaPerRoute'SourceCode x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap LuaPerRoute'SourceCode y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message LuaPerRoute where
  messageName _
    = Data.Text.pack "envoy.extensions.filters.http.lua.v3.LuaPerRoute"
  packedMessageDescriptor _
    = "\n\
      \\vLuaPerRoute\DC2%\n\
      \\bdisabled\CAN\SOH \SOH(\bH\NULR\bdisabledB\a\250B\EOTj\STX\b\SOH\DC2\GS\n\
      \\EOTname\CAN\STX \SOH(\tH\NULR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2C\n\
      \\vsource_code\CAN\ETX \SOH(\v2 .envoy.config.core.v3.DataSourceH\NULR\n\
      \sourceCodeB\SI\n\
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
              Data.ProtoLens.FieldDescriptor LuaPerRoute
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor LuaPerRoute
        sourceCode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_code"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.DataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sourceCode")) ::
              Data.ProtoLens.FieldDescriptor LuaPerRoute
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, disabled__field_descriptor),
           (Data.ProtoLens.Tag 2, name__field_descriptor),
           (Data.ProtoLens.Tag 3, sourceCode__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LuaPerRoute'_unknownFields
        (\ x__ y__ -> x__ {_LuaPerRoute'_unknownFields = y__})
  defMessage
    = LuaPerRoute'_constructor
        {_LuaPerRoute'override = Prelude.Nothing,
         _LuaPerRoute'_unknownFields = []}
  parseMessage
    = let
        loop ::
          LuaPerRoute -> Data.ProtoLens.Encoding.Bytes.Parser LuaPerRoute
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
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "source_code"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sourceCode") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "LuaPerRoute"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'override") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (LuaPerRoute'Disabled v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt
                          (\ b -> if b then 1 else 0)
                          v)
                (Prelude.Just (LuaPerRoute'Name v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8
                          v)
                (Prelude.Just (LuaPerRoute'SourceCode v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
instance Control.DeepSeq.NFData LuaPerRoute where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LuaPerRoute'_unknownFields x__)
             (Control.DeepSeq.deepseq (_LuaPerRoute'override x__) ())
instance Control.DeepSeq.NFData LuaPerRoute'Override where
  rnf (LuaPerRoute'Disabled x__) = Control.DeepSeq.rnf x__
  rnf (LuaPerRoute'Name x__) = Control.DeepSeq.rnf x__
  rnf (LuaPerRoute'SourceCode x__) = Control.DeepSeq.rnf x__
_LuaPerRoute'Disabled ::
  Data.ProtoLens.Prism.Prism' LuaPerRoute'Override Prelude.Bool
_LuaPerRoute'Disabled
  = Data.ProtoLens.Prism.prism'
      LuaPerRoute'Disabled
      (\ p__
         -> case p__ of
              (LuaPerRoute'Disabled p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_LuaPerRoute'Name ::
  Data.ProtoLens.Prism.Prism' LuaPerRoute'Override Data.Text.Text
_LuaPerRoute'Name
  = Data.ProtoLens.Prism.prism'
      LuaPerRoute'Name
      (\ p__
         -> case p__ of
              (LuaPerRoute'Name p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_LuaPerRoute'SourceCode ::
  Data.ProtoLens.Prism.Prism' LuaPerRoute'Override Proto.Envoy.Config.Core.V3.Base.DataSource
_LuaPerRoute'SourceCode
  = Data.ProtoLens.Prism.prism'
      LuaPerRoute'SourceCode
      (\ p__
         -> case p__ of
              (LuaPerRoute'SourceCode p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \.envoy/extensions/filters/http/lua/v3/lua.proto\DC2$envoy.extensions.filters.http.lua.v3\SUB\USenvoy/config/core/v3/base.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\156\STX\n\
    \\ETXLua\DC2(\n\
    \\vinline_code\CAN\SOH \SOH(\tR\n\
    \inlineCodeB\a\250B\EOTr\STX\DLE\SOH\DC2]\n\
    \\fsource_codes\CAN\STX \ETX(\v2:.envoy.extensions.filters.http.lua.v3.Lua.SourceCodesEntryR\vsourceCodes\SUB`\n\
    \\DLESourceCodesEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC26\n\
    \\ENQvalue\CAN\STX \SOH(\v2 .envoy.config.core.v3.DataSourceR\ENQvalue:\STX8\SOH:*\154\197\136\RS%\n\
    \#envoy.config.filter.http.lua.v2.Lua\"\169\SOH\n\
    \\vLuaPerRoute\DC2%\n\
    \\bdisabled\CAN\SOH \SOH(\bH\NULR\bdisabledB\a\250B\EOTj\STX\b\SOH\DC2\GS\n\
    \\EOTname\CAN\STX \SOH(\tH\NULR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2C\n\
    \\vsource_code\CAN\ETX \SOH(\v2 .envoy.config.core.v3.DataSourceH\NULR\n\
    \sourceCodeB\SI\n\
    \\boverride\DC2\ETX\248B\SOHBH\n\
    \2io.envoyproxy.envoy.extensions.filters.http.lua.v3B\bLuaProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\190\SI\n\
    \\ACK\DC2\EOT\NUL\NUL@\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL-\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL+\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NULK\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\n\
    \\NULK\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL)\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\v\NUL)\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\f\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \\136\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NUL/\SOH2| [#protodoc-title: Lua]\n\
    \ Lua :ref:`configuration overview <config_http_filters_lua>`.\n\
    \ [#extension: envoy.filters.http.lua]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b\v\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\DC4\STX\NAK,\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\DC4\STX\NAK,\n\
    \\234\STX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ESC\STXB\SUB\220\STX The Lua code that Envoy will execute. This can be a very small script that\n\
    \ further loads code from disk if desired. Note that if JSON configuration is used, the code must\n\
    \ be properly escaped. YAML configuration may be easier to read since YAML supports multi-line\n\
    \ strings so complex scripts can be easily expressed inline in the configuration.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\ESC\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ESC\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ESC\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\ESC\EMA\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\ESC\SUB@\n\
    \\208\ETX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX.\STX:\SUB\194\ETX Map of named Lua source codes that can be referenced in :ref:`LuaPerRoute\n\
    \ <envoy_v3_api_msg_extensions.filters.http.lua.v3.LuaPerRoute>`. The Lua source codes can be\n\
    \ loaded from inline string or local files.\n\
    \\n\
    \ Example:\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \   source_codes:\n\
    \     hello.lua:\n\
    \       inline_string: |\n\
    \         function envoy_on_response(response_handle)\n\
    \           -- Do something.\n\
    \         end\n\
    \     world.lua:\n\
    \       filename: /etc/lua/world.lua\n\
    \\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX.\STX(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX.)5\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX.89\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT1\NUL@\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX1\b\DC3\n\
    \\f\n\
    \\EOT\EOT\SOH\b\NUL\DC2\EOT2\STX?\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\ETX2\b\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\STX\DC2\ETX3\EOT&\n\
    \\SO\n\
    \\a\EOT\SOH\b\NUL\STX\175\b\DC2\ETX3\EOT&\n\
    \\168\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX7\EOT>\SUB\154\SOH Disable the Lua filter for this particular vhost or route. If disabled is specified in\n\
    \ multiple per-filter-configs, the most specific one will be used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX7\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX7\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX7\DC4\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX7\SYN=\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\r\DC2\ETX7\ETB<\n\
    \\148\SOH\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX;\EOT=\SUB\134\SOH A name of a Lua source code stored in\n\
    \ :ref:`Lua.source_codes <envoy_v3_api_field_extensions.filters.http.lua.v3.Lua.source_codes>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX;\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX;\v\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX;\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\ETX;\DC4<\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\175\b\SO\DC2\ETX;\NAK;\n\
    \c\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX>\EOT.\SUBV A configured per-route Lua source code that can be served by RDS or provided inline.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX>\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX>\RS)\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX>,-b\ACKproto3"