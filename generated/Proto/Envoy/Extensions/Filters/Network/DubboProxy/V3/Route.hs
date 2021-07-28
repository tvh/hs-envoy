{- This file was auto-generated from envoy/extensions/filters/network/dubbo_proxy/v3/route.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route (
        MethodMatch(), MethodMatch'ParameterMatchSpecifier(),
        MethodMatch'ParameterMatchSpecifier'ParameterMatchSpecifier(..),
        _MethodMatch'ParameterMatchSpecifier'ExactMatch,
        _MethodMatch'ParameterMatchSpecifier'RangeMatch,
        MethodMatch'ParamsMatchEntry(), Route(), RouteAction(),
        RouteAction'ClusterSpecifier(..), _RouteAction'Cluster,
        _RouteAction'WeightedClusters, RouteConfiguration(), RouteMatch()
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
import qualified Proto.Envoy.Config.Route.V3.RouteComponents
import qualified Proto.Envoy.Type.Matcher.V3.String
import qualified Proto.Envoy.Type.V3.Range
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.name' @:: Lens' MethodMatch Proto.Envoy.Type.Matcher.V3.String.StringMatcher@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.maybe'name' @:: Lens' MethodMatch (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.StringMatcher)@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.paramsMatch' @:: Lens' MethodMatch (Data.Map.Map Data.Word.Word32 MethodMatch'ParameterMatchSpecifier)@ -}
data MethodMatch
  = MethodMatch'_constructor {_MethodMatch'name :: !(Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.StringMatcher),
                              _MethodMatch'paramsMatch :: !(Data.Map.Map Data.Word.Word32 MethodMatch'ParameterMatchSpecifier),
                              _MethodMatch'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MethodMatch where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MethodMatch "name" Proto.Envoy.Type.Matcher.V3.String.StringMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MethodMatch'name (\ x__ y__ -> x__ {_MethodMatch'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MethodMatch "maybe'name" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.StringMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MethodMatch'name (\ x__ y__ -> x__ {_MethodMatch'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MethodMatch "paramsMatch" (Data.Map.Map Data.Word.Word32 MethodMatch'ParameterMatchSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MethodMatch'paramsMatch
           (\ x__ y__ -> x__ {_MethodMatch'paramsMatch = y__}))
        Prelude.id
instance Data.ProtoLens.Message MethodMatch where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.dubbo_proxy.v3.MethodMatch"
  packedMessageDescriptor _
    = "\n\
      \\vMethodMatch\DC28\n\
      \\EOTname\CAN\SOH \SOH(\v2$.envoy.type.matcher.v3.StringMatcherR\EOTname\DC2p\n\
      \\fparams_match\CAN\STX \ETX(\v2M.envoy.extensions.filters.network.dubbo_proxy.v3.MethodMatch.ParamsMatchEntryR\vparamsMatch\SUB\244\SOH\n\
      \\ETBParameterMatchSpecifier\DC2!\n\
      \\vexact_match\CAN\ETX \SOH(\tH\NULR\n\
      \exactMatch\DC2<\n\
      \\vrange_match\CAN\EOT \SOH(\v2\EM.envoy.type.v3.Int64RangeH\NULR\n\
      \rangeMatchB\ESC\n\
      \\EMparameter_match_specifier:[\154\197\136\RSV\n\
      \Tenvoy.config.filter.network.dubbo_proxy.v2alpha1.MethodMatch.ParameterMatchSpecifier\SUB\148\SOH\n\
      \\DLEParamsMatchEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\rR\ETXkey\DC2j\n\
      \\ENQvalue\CAN\STX \SOH(\v2T.envoy.extensions.filters.network.dubbo_proxy.v3.MethodMatch.ParameterMatchSpecifierR\ENQvalue:\STX8\SOH:C\154\197\136\RS>\n\
      \<envoy.config.filter.network.dubbo_proxy.v2alpha1.MethodMatch"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.String.StringMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor MethodMatch
        paramsMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MethodMatch'ParamsMatchEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"paramsMatch")) ::
              Data.ProtoLens.FieldDescriptor MethodMatch
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, paramsMatch__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MethodMatch'_unknownFields
        (\ x__ y__ -> x__ {_MethodMatch'_unknownFields = y__})
  defMessage
    = MethodMatch'_constructor
        {_MethodMatch'name = Prelude.Nothing,
         _MethodMatch'paramsMatch = Data.Map.empty,
         _MethodMatch'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MethodMatch -> Data.ProtoLens.Encoding.Bytes.Parser MethodMatch
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        18
                          -> do !(entry :: MethodMatch'ParamsMatchEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                              (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                                                    (Prelude.fromIntegral
                                                                                       len)
                                                                                    Data.ProtoLens.parseMessage)
                                                                              "params_match"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"paramsMatch")
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
          (do loop Data.ProtoLens.defMessage) "MethodMatch"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
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
                                       (Data.ProtoLens.defMessage ::
                                          MethodMatch'ParamsMatchEntry)))))
                      (Data.Map.toList
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"paramsMatch") _x))))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MethodMatch where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MethodMatch'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MethodMatch'name x__)
                (Control.DeepSeq.deepseq (_MethodMatch'paramsMatch x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.maybe'parameterMatchSpecifier' @:: Lens' MethodMatch'ParameterMatchSpecifier (Prelude.Maybe MethodMatch'ParameterMatchSpecifier'ParameterMatchSpecifier)@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.maybe'exactMatch' @:: Lens' MethodMatch'ParameterMatchSpecifier (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.exactMatch' @:: Lens' MethodMatch'ParameterMatchSpecifier Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.maybe'rangeMatch' @:: Lens' MethodMatch'ParameterMatchSpecifier (Prelude.Maybe Proto.Envoy.Type.V3.Range.Int64Range)@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.rangeMatch' @:: Lens' MethodMatch'ParameterMatchSpecifier Proto.Envoy.Type.V3.Range.Int64Range@ -}
data MethodMatch'ParameterMatchSpecifier
  = MethodMatch'ParameterMatchSpecifier'_constructor {_MethodMatch'ParameterMatchSpecifier'parameterMatchSpecifier :: !(Prelude.Maybe MethodMatch'ParameterMatchSpecifier'ParameterMatchSpecifier),
                                                      _MethodMatch'ParameterMatchSpecifier'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MethodMatch'ParameterMatchSpecifier where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data MethodMatch'ParameterMatchSpecifier'ParameterMatchSpecifier
  = MethodMatch'ParameterMatchSpecifier'ExactMatch !Data.Text.Text |
    MethodMatch'ParameterMatchSpecifier'RangeMatch !Proto.Envoy.Type.V3.Range.Int64Range
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField MethodMatch'ParameterMatchSpecifier "maybe'parameterMatchSpecifier" (Prelude.Maybe MethodMatch'ParameterMatchSpecifier'ParameterMatchSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MethodMatch'ParameterMatchSpecifier'parameterMatchSpecifier
           (\ x__ y__
              -> x__
                   {_MethodMatch'ParameterMatchSpecifier'parameterMatchSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MethodMatch'ParameterMatchSpecifier "maybe'exactMatch" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MethodMatch'ParameterMatchSpecifier'parameterMatchSpecifier
           (\ x__ y__
              -> x__
                   {_MethodMatch'ParameterMatchSpecifier'parameterMatchSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MethodMatch'ParameterMatchSpecifier'ExactMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   MethodMatch'ParameterMatchSpecifier'ExactMatch y__))
instance Data.ProtoLens.Field.HasField MethodMatch'ParameterMatchSpecifier "exactMatch" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MethodMatch'ParameterMatchSpecifier'parameterMatchSpecifier
           (\ x__ y__
              -> x__
                   {_MethodMatch'ParameterMatchSpecifier'parameterMatchSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MethodMatch'ParameterMatchSpecifier'ExactMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      MethodMatch'ParameterMatchSpecifier'ExactMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField MethodMatch'ParameterMatchSpecifier "maybe'rangeMatch" (Prelude.Maybe Proto.Envoy.Type.V3.Range.Int64Range) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MethodMatch'ParameterMatchSpecifier'parameterMatchSpecifier
           (\ x__ y__
              -> x__
                   {_MethodMatch'ParameterMatchSpecifier'parameterMatchSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MethodMatch'ParameterMatchSpecifier'RangeMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   MethodMatch'ParameterMatchSpecifier'RangeMatch y__))
instance Data.ProtoLens.Field.HasField MethodMatch'ParameterMatchSpecifier "rangeMatch" Proto.Envoy.Type.V3.Range.Int64Range where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MethodMatch'ParameterMatchSpecifier'parameterMatchSpecifier
           (\ x__ y__
              -> x__
                   {_MethodMatch'ParameterMatchSpecifier'parameterMatchSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MethodMatch'ParameterMatchSpecifier'RangeMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      MethodMatch'ParameterMatchSpecifier'RangeMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message MethodMatch'ParameterMatchSpecifier where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.dubbo_proxy.v3.MethodMatch.ParameterMatchSpecifier"
  packedMessageDescriptor _
    = "\n\
      \\ETBParameterMatchSpecifier\DC2!\n\
      \\vexact_match\CAN\ETX \SOH(\tH\NULR\n\
      \exactMatch\DC2<\n\
      \\vrange_match\CAN\EOT \SOH(\v2\EM.envoy.type.v3.Int64RangeH\NULR\n\
      \rangeMatchB\ESC\n\
      \\EMparameter_match_specifier:[\154\197\136\RSV\n\
      \Tenvoy.config.filter.network.dubbo_proxy.v2alpha1.MethodMatch.ParameterMatchSpecifier"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        exactMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "exact_match"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'exactMatch")) ::
              Data.ProtoLens.FieldDescriptor MethodMatch'ParameterMatchSpecifier
        rangeMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "range_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Range.Int64Range)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rangeMatch")) ::
              Data.ProtoLens.FieldDescriptor MethodMatch'ParameterMatchSpecifier
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 3, exactMatch__field_descriptor),
           (Data.ProtoLens.Tag 4, rangeMatch__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MethodMatch'ParameterMatchSpecifier'_unknownFields
        (\ x__ y__
           -> x__ {_MethodMatch'ParameterMatchSpecifier'_unknownFields = y__})
  defMessage
    = MethodMatch'ParameterMatchSpecifier'_constructor
        {_MethodMatch'ParameterMatchSpecifier'parameterMatchSpecifier = Prelude.Nothing,
         _MethodMatch'ParameterMatchSpecifier'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MethodMatch'ParameterMatchSpecifier
          -> Data.ProtoLens.Encoding.Bytes.Parser MethodMatch'ParameterMatchSpecifier
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
                                       "exact_match"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"exactMatch") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "range_match"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"rangeMatch") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ParameterMatchSpecifier"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'parameterMatchSpecifier") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (MethodMatch'ParameterMatchSpecifier'ExactMatch v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8
                          v)
                (Prelude.Just (MethodMatch'ParameterMatchSpecifier'RangeMatch v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
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
instance Control.DeepSeq.NFData MethodMatch'ParameterMatchSpecifier where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MethodMatch'ParameterMatchSpecifier'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MethodMatch'ParameterMatchSpecifier'parameterMatchSpecifier x__)
                ())
instance Control.DeepSeq.NFData MethodMatch'ParameterMatchSpecifier'ParameterMatchSpecifier where
  rnf (MethodMatch'ParameterMatchSpecifier'ExactMatch x__)
    = Control.DeepSeq.rnf x__
  rnf (MethodMatch'ParameterMatchSpecifier'RangeMatch x__)
    = Control.DeepSeq.rnf x__
_MethodMatch'ParameterMatchSpecifier'ExactMatch ::
  Data.ProtoLens.Prism.Prism' MethodMatch'ParameterMatchSpecifier'ParameterMatchSpecifier Data.Text.Text
_MethodMatch'ParameterMatchSpecifier'ExactMatch
  = Data.ProtoLens.Prism.prism'
      MethodMatch'ParameterMatchSpecifier'ExactMatch
      (\ p__
         -> case p__ of
              (MethodMatch'ParameterMatchSpecifier'ExactMatch p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_MethodMatch'ParameterMatchSpecifier'RangeMatch ::
  Data.ProtoLens.Prism.Prism' MethodMatch'ParameterMatchSpecifier'ParameterMatchSpecifier Proto.Envoy.Type.V3.Range.Int64Range
_MethodMatch'ParameterMatchSpecifier'RangeMatch
  = Data.ProtoLens.Prism.prism'
      MethodMatch'ParameterMatchSpecifier'RangeMatch
      (\ p__
         -> case p__ of
              (MethodMatch'ParameterMatchSpecifier'RangeMatch p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.key' @:: Lens' MethodMatch'ParamsMatchEntry Data.Word.Word32@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.value' @:: Lens' MethodMatch'ParamsMatchEntry MethodMatch'ParameterMatchSpecifier@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.maybe'value' @:: Lens' MethodMatch'ParamsMatchEntry (Prelude.Maybe MethodMatch'ParameterMatchSpecifier)@ -}
data MethodMatch'ParamsMatchEntry
  = MethodMatch'ParamsMatchEntry'_constructor {_MethodMatch'ParamsMatchEntry'key :: !Data.Word.Word32,
                                               _MethodMatch'ParamsMatchEntry'value :: !(Prelude.Maybe MethodMatch'ParameterMatchSpecifier),
                                               _MethodMatch'ParamsMatchEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MethodMatch'ParamsMatchEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MethodMatch'ParamsMatchEntry "key" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MethodMatch'ParamsMatchEntry'key
           (\ x__ y__ -> x__ {_MethodMatch'ParamsMatchEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MethodMatch'ParamsMatchEntry "value" MethodMatch'ParameterMatchSpecifier where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MethodMatch'ParamsMatchEntry'value
           (\ x__ y__ -> x__ {_MethodMatch'ParamsMatchEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MethodMatch'ParamsMatchEntry "maybe'value" (Prelude.Maybe MethodMatch'ParameterMatchSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MethodMatch'ParamsMatchEntry'value
           (\ x__ y__ -> x__ {_MethodMatch'ParamsMatchEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message MethodMatch'ParamsMatchEntry where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.dubbo_proxy.v3.MethodMatch.ParamsMatchEntry"
  packedMessageDescriptor _
    = "\n\
      \\DLEParamsMatchEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\rR\ETXkey\DC2j\n\
      \\ENQvalue\CAN\STX \SOH(\v2T.envoy.extensions.filters.network.dubbo_proxy.v3.MethodMatch.ParameterMatchSpecifierR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor MethodMatch'ParamsMatchEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MethodMatch'ParameterMatchSpecifier)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor MethodMatch'ParamsMatchEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MethodMatch'ParamsMatchEntry'_unknownFields
        (\ x__ y__
           -> x__ {_MethodMatch'ParamsMatchEntry'_unknownFields = y__})
  defMessage
    = MethodMatch'ParamsMatchEntry'_constructor
        {_MethodMatch'ParamsMatchEntry'key = Data.ProtoLens.fieldDefault,
         _MethodMatch'ParamsMatchEntry'value = Prelude.Nothing,
         _MethodMatch'ParamsMatchEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MethodMatch'ParamsMatchEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser MethodMatch'ParamsMatchEntry
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
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
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
          (do loop Data.ProtoLens.defMessage) "ParamsMatchEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
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
instance Control.DeepSeq.NFData MethodMatch'ParamsMatchEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MethodMatch'ParamsMatchEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MethodMatch'ParamsMatchEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_MethodMatch'ParamsMatchEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.match' @:: Lens' Route RouteMatch@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.maybe'match' @:: Lens' Route (Prelude.Maybe RouteMatch)@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.route' @:: Lens' Route RouteAction@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.maybe'route' @:: Lens' Route (Prelude.Maybe RouteAction)@ -}
data Route
  = Route'_constructor {_Route'match :: !(Prelude.Maybe RouteMatch),
                        _Route'route :: !(Prelude.Maybe RouteAction),
                        _Route'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Route where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Route "match" RouteMatch where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Route'match (\ x__ y__ -> x__ {_Route'match = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Route "maybe'match" (Prelude.Maybe RouteMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Route'match (\ x__ y__ -> x__ {_Route'match = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Route "route" RouteAction where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Route'route (\ x__ y__ -> x__ {_Route'route = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Route "maybe'route" (Prelude.Maybe RouteAction) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Route'route (\ x__ y__ -> x__ {_Route'route = y__}))
        Prelude.id
instance Data.ProtoLens.Message Route where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.dubbo_proxy.v3.Route"
  packedMessageDescriptor _
    = "\n\
      \\ENQRoute\DC2[\n\
      \\ENQmatch\CAN\SOH \SOH(\v2;.envoy.extensions.filters.network.dubbo_proxy.v3.RouteMatchR\ENQmatchB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\\\n\
      \\ENQroute\CAN\STX \SOH(\v2<.envoy.extensions.filters.network.dubbo_proxy.v3.RouteActionR\ENQrouteB\b\250B\ENQ\138\SOH\STX\DLE\SOH:=\154\197\136\RS8\n\
      \6envoy.config.filter.network.dubbo_proxy.v2alpha1.Route"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        match__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RouteMatch)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'match")) ::
              Data.ProtoLens.FieldDescriptor Route
        route__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "route"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RouteAction)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'route")) ::
              Data.ProtoLens.FieldDescriptor Route
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, match__field_descriptor),
           (Data.ProtoLens.Tag 2, route__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Route'_unknownFields
        (\ x__ y__ -> x__ {_Route'_unknownFields = y__})
  defMessage
    = Route'_constructor
        {_Route'match = Prelude.Nothing, _Route'route = Prelude.Nothing,
         _Route'_unknownFields = []}
  parseMessage
    = let
        loop :: Route -> Data.ProtoLens.Encoding.Bytes.Parser Route
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
                                       "match"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"match") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "route"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"route") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Route"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'match") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'route") _x
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
instance Control.DeepSeq.NFData Route where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Route'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Route'match x__) (Control.DeepSeq.deepseq (_Route'route x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.maybe'clusterSpecifier' @:: Lens' RouteAction (Prelude.Maybe RouteAction'ClusterSpecifier)@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.maybe'cluster' @:: Lens' RouteAction (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.cluster' @:: Lens' RouteAction Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.maybe'weightedClusters' @:: Lens' RouteAction (Prelude.Maybe Proto.Envoy.Config.Route.V3.RouteComponents.WeightedCluster)@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.weightedClusters' @:: Lens' RouteAction Proto.Envoy.Config.Route.V3.RouteComponents.WeightedCluster@ -}
data RouteAction
  = RouteAction'_constructor {_RouteAction'clusterSpecifier :: !(Prelude.Maybe RouteAction'ClusterSpecifier),
                              _RouteAction'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RouteAction where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data RouteAction'ClusterSpecifier
  = RouteAction'Cluster !Data.Text.Text |
    RouteAction'WeightedClusters !Proto.Envoy.Config.Route.V3.RouteComponents.WeightedCluster
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField RouteAction "maybe'clusterSpecifier" (Prelude.Maybe RouteAction'ClusterSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteAction'clusterSpecifier
           (\ x__ y__ -> x__ {_RouteAction'clusterSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteAction "maybe'cluster" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteAction'clusterSpecifier
           (\ x__ y__ -> x__ {_RouteAction'clusterSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (RouteAction'Cluster x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap RouteAction'Cluster y__))
instance Data.ProtoLens.Field.HasField RouteAction "cluster" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteAction'clusterSpecifier
           (\ x__ y__ -> x__ {_RouteAction'clusterSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (RouteAction'Cluster x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap RouteAction'Cluster y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField RouteAction "maybe'weightedClusters" (Prelude.Maybe Proto.Envoy.Config.Route.V3.RouteComponents.WeightedCluster) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteAction'clusterSpecifier
           (\ x__ y__ -> x__ {_RouteAction'clusterSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (RouteAction'WeightedClusters x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap RouteAction'WeightedClusters y__))
instance Data.ProtoLens.Field.HasField RouteAction "weightedClusters" Proto.Envoy.Config.Route.V3.RouteComponents.WeightedCluster where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteAction'clusterSpecifier
           (\ x__ y__ -> x__ {_RouteAction'clusterSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (RouteAction'WeightedClusters x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap RouteAction'WeightedClusters y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message RouteAction where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.dubbo_proxy.v3.RouteAction"
  packedMessageDescriptor _
    = "\n\
      \\vRouteAction\DC2\SUB\n\
      \\acluster\CAN\SOH \SOH(\tH\NULR\acluster\DC2U\n\
      \\DC1weighted_clusters\CAN\STX \SOH(\v2&.envoy.config.route.v3.WeightedClusterH\NULR\DLEweightedClustersB\CAN\n\
      \\DC1cluster_specifier\DC2\ETX\248B\SOH:C\154\197\136\RS>\n\
      \<envoy.config.filter.network.dubbo_proxy.v2alpha1.RouteAction"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cluster__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cluster")) ::
              Data.ProtoLens.FieldDescriptor RouteAction
        weightedClusters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "weighted_clusters"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Route.V3.RouteComponents.WeightedCluster)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'weightedClusters")) ::
              Data.ProtoLens.FieldDescriptor RouteAction
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cluster__field_descriptor),
           (Data.ProtoLens.Tag 2, weightedClusters__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RouteAction'_unknownFields
        (\ x__ y__ -> x__ {_RouteAction'_unknownFields = y__})
  defMessage
    = RouteAction'_constructor
        {_RouteAction'clusterSpecifier = Prelude.Nothing,
         _RouteAction'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RouteAction -> Data.ProtoLens.Encoding.Bytes.Parser RouteAction
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
                                       "cluster"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cluster") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "weighted_clusters"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"weightedClusters") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RouteAction"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'clusterSpecifier") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (RouteAction'Cluster v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8
                          v)
                (Prelude.Just (RouteAction'WeightedClusters v))
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
instance Control.DeepSeq.NFData RouteAction where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RouteAction'_unknownFields x__)
             (Control.DeepSeq.deepseq (_RouteAction'clusterSpecifier x__) ())
instance Control.DeepSeq.NFData RouteAction'ClusterSpecifier where
  rnf (RouteAction'Cluster x__) = Control.DeepSeq.rnf x__
  rnf (RouteAction'WeightedClusters x__) = Control.DeepSeq.rnf x__
_RouteAction'Cluster ::
  Data.ProtoLens.Prism.Prism' RouteAction'ClusterSpecifier Data.Text.Text
_RouteAction'Cluster
  = Data.ProtoLens.Prism.prism'
      RouteAction'Cluster
      (\ p__
         -> case p__ of
              (RouteAction'Cluster p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_RouteAction'WeightedClusters ::
  Data.ProtoLens.Prism.Prism' RouteAction'ClusterSpecifier Proto.Envoy.Config.Route.V3.RouteComponents.WeightedCluster
_RouteAction'WeightedClusters
  = Data.ProtoLens.Prism.prism'
      RouteAction'WeightedClusters
      (\ p__
         -> case p__ of
              (RouteAction'WeightedClusters p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.name' @:: Lens' RouteConfiguration Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.interface' @:: Lens' RouteConfiguration Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.group' @:: Lens' RouteConfiguration Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.version' @:: Lens' RouteConfiguration Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.routes' @:: Lens' RouteConfiguration [Route]@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.vec'routes' @:: Lens' RouteConfiguration (Data.Vector.Vector Route)@ -}
data RouteConfiguration
  = RouteConfiguration'_constructor {_RouteConfiguration'name :: !Data.Text.Text,
                                     _RouteConfiguration'interface :: !Data.Text.Text,
                                     _RouteConfiguration'group :: !Data.Text.Text,
                                     _RouteConfiguration'version :: !Data.Text.Text,
                                     _RouteConfiguration'routes :: !(Data.Vector.Vector Route),
                                     _RouteConfiguration'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RouteConfiguration where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RouteConfiguration "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'name
           (\ x__ y__ -> x__ {_RouteConfiguration'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteConfiguration "interface" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'interface
           (\ x__ y__ -> x__ {_RouteConfiguration'interface = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteConfiguration "group" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'group
           (\ x__ y__ -> x__ {_RouteConfiguration'group = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteConfiguration "version" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'version
           (\ x__ y__ -> x__ {_RouteConfiguration'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteConfiguration "routes" [Route] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'routes
           (\ x__ y__ -> x__ {_RouteConfiguration'routes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RouteConfiguration "vec'routes" (Data.Vector.Vector Route) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'routes
           (\ x__ y__ -> x__ {_RouteConfiguration'routes = y__}))
        Prelude.id
instance Data.ProtoLens.Message RouteConfiguration where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.dubbo_proxy.v3.RouteConfiguration"
  packedMessageDescriptor _
    = "\n\
      \\DC2RouteConfiguration\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\FS\n\
      \\tinterface\CAN\STX \SOH(\tR\tinterface\DC2\DC4\n\
      \\ENQgroup\CAN\ETX \SOH(\tR\ENQgroup\DC2\CAN\n\
      \\aversion\CAN\EOT \SOH(\tR\aversion\DC2N\n\
      \\ACKroutes\CAN\ENQ \ETX(\v26.envoy.extensions.filters.network.dubbo_proxy.v3.RouteR\ACKroutes:J\154\197\136\RSE\n\
      \Cenvoy.config.filter.network.dubbo_proxy.v2alpha1.RouteConfiguration"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor RouteConfiguration
        interface__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "interface"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"interface")) ::
              Data.ProtoLens.FieldDescriptor RouteConfiguration
        group__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"group")) ::
              Data.ProtoLens.FieldDescriptor RouteConfiguration
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor RouteConfiguration
        routes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "routes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Route)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"routes")) ::
              Data.ProtoLens.FieldDescriptor RouteConfiguration
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, interface__field_descriptor),
           (Data.ProtoLens.Tag 3, group__field_descriptor),
           (Data.ProtoLens.Tag 4, version__field_descriptor),
           (Data.ProtoLens.Tag 5, routes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RouteConfiguration'_unknownFields
        (\ x__ y__ -> x__ {_RouteConfiguration'_unknownFields = y__})
  defMessage
    = RouteConfiguration'_constructor
        {_RouteConfiguration'name = Data.ProtoLens.fieldDefault,
         _RouteConfiguration'interface = Data.ProtoLens.fieldDefault,
         _RouteConfiguration'group = Data.ProtoLens.fieldDefault,
         _RouteConfiguration'version = Data.ProtoLens.fieldDefault,
         _RouteConfiguration'routes = Data.Vector.Generic.empty,
         _RouteConfiguration'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RouteConfiguration
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Route
             -> Data.ProtoLens.Encoding.Bytes.Parser RouteConfiguration
        loop x mutable'routes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'routes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'routes)
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
                              (Data.ProtoLens.Field.field @"vec'routes") frozen'routes x))
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
                                       "name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'routes
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
                                       "interface"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"interface") y x)
                                  mutable'routes
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
                                       "group"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"group") y x)
                                  mutable'routes
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
                                       "version"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                                  mutable'routes
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "routes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'routes y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'routes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'routes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'routes)
          "RouteConfiguration"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"interface") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"group") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"version") _x
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
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                    ((Prelude..)
                                       (\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.ProtoLens.encodeMessage
                                       _v))
                            (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'routes") _x))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData RouteConfiguration where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RouteConfiguration'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RouteConfiguration'name x__)
                (Control.DeepSeq.deepseq
                   (_RouteConfiguration'interface x__)
                   (Control.DeepSeq.deepseq
                      (_RouteConfiguration'group x__)
                      (Control.DeepSeq.deepseq
                         (_RouteConfiguration'version x__)
                         (Control.DeepSeq.deepseq (_RouteConfiguration'routes x__) ())))))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.method' @:: Lens' RouteMatch MethodMatch@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.maybe'method' @:: Lens' RouteMatch (Prelude.Maybe MethodMatch)@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.headers' @:: Lens' RouteMatch [Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher]@
         * 'Proto.Envoy.Extensions.Filters.Network.DubboProxy.V3.Route_Fields.vec'headers' @:: Lens' RouteMatch (Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher)@ -}
data RouteMatch
  = RouteMatch'_constructor {_RouteMatch'method :: !(Prelude.Maybe MethodMatch),
                             _RouteMatch'headers :: !(Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher),
                             _RouteMatch'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RouteMatch where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RouteMatch "method" MethodMatch where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteMatch'method (\ x__ y__ -> x__ {_RouteMatch'method = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RouteMatch "maybe'method" (Prelude.Maybe MethodMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteMatch'method (\ x__ y__ -> x__ {_RouteMatch'method = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteMatch "headers" [Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteMatch'headers (\ x__ y__ -> x__ {_RouteMatch'headers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RouteMatch "vec'headers" (Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteMatch'headers (\ x__ y__ -> x__ {_RouteMatch'headers = y__}))
        Prelude.id
instance Data.ProtoLens.Message RouteMatch where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.dubbo_proxy.v3.RouteMatch"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \RouteMatch\DC2T\n\
      \\ACKmethod\CAN\SOH \SOH(\v2<.envoy.extensions.filters.network.dubbo_proxy.v3.MethodMatchR\ACKmethod\DC2>\n\
      \\aheaders\CAN\STX \ETX(\v2$.envoy.config.route.v3.HeaderMatcherR\aheaders:B\154\197\136\RS=\n\
      \;envoy.config.filter.network.dubbo_proxy.v2alpha1.RouteMatch"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        method__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "method"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MethodMatch)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'method")) ::
              Data.ProtoLens.FieldDescriptor RouteMatch
        headers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"headers")) ::
              Data.ProtoLens.FieldDescriptor RouteMatch
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, method__field_descriptor),
           (Data.ProtoLens.Tag 2, headers__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RouteMatch'_unknownFields
        (\ x__ y__ -> x__ {_RouteMatch'_unknownFields = y__})
  defMessage
    = RouteMatch'_constructor
        {_RouteMatch'method = Prelude.Nothing,
         _RouteMatch'headers = Data.Vector.Generic.empty,
         _RouteMatch'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RouteMatch
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher
             -> Data.ProtoLens.Encoding.Bytes.Parser RouteMatch
        loop x mutable'headers
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'headers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'headers)
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
                              (Data.ProtoLens.Field.field @"vec'headers") frozen'headers x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "method"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"method") y x)
                                  mutable'headers
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "headers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'headers y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'headers
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'headers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'headers)
          "RouteMatch"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'method") _x
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'headers") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData RouteMatch where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RouteMatch'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RouteMatch'method x__)
                (Control.DeepSeq.deepseq (_RouteMatch'headers x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \;envoy/extensions/filters/network/dubbo_proxy/v3/route.proto\DC2/envoy.extensions.filters.network.dubbo_proxy.v3\SUB,envoy/config/route/v3/route_components.proto\SUB\"envoy/type/matcher/v3/string.proto\SUB\EMenvoy/type/v3/range.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\146\STX\n\
    \\DC2RouteConfiguration\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\FS\n\
    \\tinterface\CAN\STX \SOH(\tR\tinterface\DC2\DC4\n\
    \\ENQgroup\CAN\ETX \SOH(\tR\ENQgroup\DC2\CAN\n\
    \\aversion\CAN\EOT \SOH(\tR\aversion\DC2N\n\
    \\ACKroutes\CAN\ENQ \ETX(\v26.envoy.extensions.filters.network.dubbo_proxy.v3.RouteR\ACKroutes:J\154\197\136\RSE\n\
    \Cenvoy.config.filter.network.dubbo_proxy.v2alpha1.RouteConfiguration\"\129\STX\n\
    \\ENQRoute\DC2[\n\
    \\ENQmatch\CAN\SOH \SOH(\v2;.envoy.extensions.filters.network.dubbo_proxy.v3.RouteMatchR\ENQmatchB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\\\n\
    \\ENQroute\CAN\STX \SOH(\v2<.envoy.extensions.filters.network.dubbo_proxy.v3.RouteActionR\ENQrouteB\b\250B\ENQ\138\SOH\STX\DLE\SOH:=\154\197\136\RS8\n\
    \6envoy.config.filter.network.dubbo_proxy.v2alpha1.Route\"\230\SOH\n\
    \\n\
    \RouteMatch\DC2T\n\
    \\ACKmethod\CAN\SOH \SOH(\v2<.envoy.extensions.filters.network.dubbo_proxy.v3.MethodMatchR\ACKmethod\DC2>\n\
    \\aheaders\CAN\STX \ETX(\v2$.envoy.config.route.v3.HeaderMatcherR\aheaders:B\154\197\136\RS=\n\
    \;envoy.config.filter.network.dubbo_proxy.v2alpha1.RouteMatch\"\223\SOH\n\
    \\vRouteAction\DC2\SUB\n\
    \\acluster\CAN\SOH \SOH(\tH\NULR\acluster\DC2U\n\
    \\DC1weighted_clusters\CAN\STX \SOH(\v2&.envoy.config.route.v3.WeightedClusterH\NULR\DLEweightedClustersB\CAN\n\
    \\DC1cluster_specifier\DC2\ETX\248B\SOH:C\154\197\136\RS>\n\
    \<envoy.config.filter.network.dubbo_proxy.v2alpha1.RouteAction\"\140\ENQ\n\
    \\vMethodMatch\DC28\n\
    \\EOTname\CAN\SOH \SOH(\v2$.envoy.type.matcher.v3.StringMatcherR\EOTname\DC2p\n\
    \\fparams_match\CAN\STX \ETX(\v2M.envoy.extensions.filters.network.dubbo_proxy.v3.MethodMatch.ParamsMatchEntryR\vparamsMatch\SUB\244\SOH\n\
    \\ETBParameterMatchSpecifier\DC2!\n\
    \\vexact_match\CAN\ETX \SOH(\tH\NULR\n\
    \exactMatch\DC2<\n\
    \\vrange_match\CAN\EOT \SOH(\v2\EM.envoy.type.v3.Int64RangeH\NULR\n\
    \rangeMatchB\ESC\n\
    \\EMparameter_match_specifier:[\154\197\136\RSV\n\
    \Tenvoy.config.filter.network.dubbo_proxy.v2alpha1.MethodMatch.ParameterMatchSpecifier\SUB\148\SOH\n\
    \\DLEParamsMatchEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\rR\ETXkey\DC2j\n\
    \\ENQvalue\CAN\STX \SOH(\v2T.envoy.extensions.filters.network.dubbo_proxy.v3.MethodMatch.ParameterMatchSpecifierR\ENQvalue:\STX8\SOH:C\154\197\136\RS>\n\
    \<envoy.config.filter.network.dubbo_proxy.v2alpha1.MethodMatchBU\n\
    \=io.envoyproxy.envoy.extensions.filters.network.dubbo_proxy.v3B\n\
    \RouteProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\156 \n\
    \\a\DC2\ENQ\NUL\NUL\128\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL8\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL6\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL,\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL#\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL'\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL+\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\n\
    \\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULV\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NULV\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL+\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SO\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SI\NULF\n\
    \\171\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\NAK\NUL0\SOH\SUB\ETB [#next-free-field: 6]\n\
    \2\133\SOH [#protodoc-title: Dubbo Proxy Route Configuration]\n\
    \ Dubbo Proxy :ref:`configuration overview <config_network_filters_dubbo_proxy>`.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\NAK\b\SUB\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\SYN\STX\ETBL\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\SYN\STX\ETBL\n\
    \l\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SUB\STX\DC2\SUB_ The name of the route configuration. Reserved for future use in asynchronous route discovery.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SUB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SUB\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SUB\DLE\DC1\n\
    \\235\ETX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX%\STX\ETB\SUB\221\ETX The interface name of the service. Wildcard interface are supported in the suffix or prefix form.\n\
    \ e.g. ``*.methods.add`` will match ``com.dev.methods.add``, ``com.prod.methods.add``, etc.\n\
    \ ``com.dev.methods.*`` will match ``com.dev.methods.add``, ``com.dev.methods.update``, etc.\n\
    \ Special wildcard ``*`` matching any interface.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \  The wildcard will not match the empty string.\n\
    \  e.g. ``*.methods.add`` will match ``com.dev.methods.add`` but not ``.methods.add``.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX%\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX%\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX%\NAK\SYN\n\
    \8\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX(\STX\DC3\SUB+ Which group does the interface belong to.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX(\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX(\t\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX(\DC1\DC2\n\
    \3\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX+\STX\NAK\SUB& The version number of the interface.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX+\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX+\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX+\DC3\DC4\n\
    \\136\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX/\STX\FS\SUB{ The list of routes that will be matched, in order, against incoming requests. The first route\n\
    \ that matches will be used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX/\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX/\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX/\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX/\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT2\NUL;\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX2\b\r\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT3\STX4?\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT3\STX4?\n\
    \)\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX7\STXE\SUB\FS Route matching parameters.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX7\STX\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX7\r\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX7\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX7\ETBD\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\DC1\DC2\ETX7\CANC\n\
    \6\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX:\STXF\SUB) Route request to some upstream cluster.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX:\STX\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX:\SO\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX:\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\ETX:\CANE\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\175\b\DC1\DC2\ETX:\EMD\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT=\NULI\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX=\b\DC2\n\
    \\v\n\
    \\ETX\EOT\STX\a\DC2\EOT>\STX?D\n\
    \\DLE\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\EOT>\STX?D\n\
    \-\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXB\STX\EM\SUB  Method level routing matching.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETXB\STX\r\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXB\SO\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXB\ETB\CAN\n\
    \\214\STX\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXH\STX5\SUB\200\STX Specifies a set of headers that the route should match on. The router will check the request\226\128\153s\n\
    \ headers against all the specified headers in the route config. A match will happen if all the\n\
    \ headers in the route are present in the request with the same values (or based on presence if\n\
    \ the value field is not in the config).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETXH\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETXH\v(\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXH)0\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXH34\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOTK\NUL[\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXK\b\DC3\n\
    \\v\n\
    \\ETX\EOT\ETX\a\DC2\EOTL\STXME\n\
    \\DLE\n\
    \\b\EOT\ETX\a\211\136\225\ETX\SOH\DC2\EOTL\STXME\n\
    \\f\n\
    \\EOT\EOT\ETX\b\NUL\DC2\EOTO\STXZ\ETX\n\
    \\f\n\
    \\ENQ\EOT\ETX\b\NUL\SOH\DC2\ETXO\b\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\b\NUL\STX\DC2\ETXP\EOT&\n\
    \\SO\n\
    \\a\EOT\ETX\b\NUL\STX\175\b\DC2\ETXP\EOT&\n\
    \T\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXS\EOT\ETB\SUBG Indicates the upstream cluster to which the request should be routed.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXS\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXS\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXS\NAK\SYN\n\
    \\244\SOH\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXY\EOT:\SUB\230\SOH Multiple upstream clusters can be specified for a given route. The\n\
    \ request is routed to one of the upstream clusters based on weights\n\
    \ assigned to each cluster.\n\
    \ Currently ClusterWeight only supports the name and weight fields.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETXY\EOT#\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXY$5\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXY89\n\
    \\v\n\
    \\STX\EOT\EOT\DC2\ENQ]\NUL\128\SOH\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX]\b\DC3\n\
    \\v\n\
    \\ETX\EOT\EOT\a\DC2\EOT^\STX_E\n\
    \\DLE\n\
    \\b\EOT\EOT\a\211\136\225\ETX\SOH\DC2\EOT^\STX_E\n\
    \,\n\
    \\EOT\EOT\EOT\ETX\NUL\DC2\EOTb\STXw\ETX\SUB\RS The parameter matching type.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\ETX\NUL\SOH\DC2\ETXb\n\
    \!\n\
    \\r\n\
    \\ENQ\EOT\EOT\ETX\NUL\a\DC2\EOTc\EOTd_\n\
    \\DC2\n\
    \\n\
    \\EOT\EOT\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOTc\EOTd_\n\
    \\SO\n\
    \\ACK\EOT\EOT\ETX\NUL\b\NUL\DC2\EOTf\EOTv\ENQ\n\
    \\SO\n\
    \\a\EOT\EOT\ETX\NUL\b\NUL\SOH\DC2\ETXf\n\
    \#\n\
    \_\n\
    \\ACK\EOT\EOT\ETX\NUL\STX\NUL\DC2\ETXh\ACK\GS\SUBP If specified, header match will be performed based on the value of the header.\n\
    \\n\
    \\SO\n\
    \\a\EOT\EOT\ETX\NUL\STX\NUL\ENQ\DC2\ETXh\ACK\f\n\
    \\SO\n\
    \\a\EOT\EOT\ETX\NUL\STX\NUL\SOH\DC2\ETXh\r\CAN\n\
    \\SO\n\
    \\a\EOT\EOT\ETX\NUL\STX\NUL\ETX\DC2\ETXh\ESC\FS\n\
    \\245\EOT\n\
    \\ACK\EOT\EOT\ETX\NUL\STX\SOH\DC2\ETXu\ACK)\SUB\229\EOT If specified, header match will be performed based on range.\n\
    \ The rule will match if the request header value is within this range.\n\
    \ The entire request header value must represent an integer in base 10 notation: consisting\n\
    \ of an optional plus or minus sign followed by a sequence of digits. The rule will not match\n\
    \ if the header value does not represent an integer. Match will fail for empty values,\n\
    \ floating point numbers or if only a subsequence of the header value is an integer.\n\
    \\n\
    \ Examples:\n\
    \\n\
    \ * For range [-10,0), route will match for header value -1, but not for 0,\n\
    \   \"somestring\", 10.9, \"-1somestring\"\n\
    \\n\
    \\SO\n\
    \\a\EOT\EOT\ETX\NUL\STX\SOH\ACK\DC2\ETXu\ACK\CAN\n\
    \\SO\n\
    \\a\EOT\EOT\ETX\NUL\STX\SOH\SOH\DC2\ETXu\EM$\n\
    \\SO\n\
    \\a\EOT\EOT\ETX\NUL\STX\SOH\ETX\DC2\ETXu'(\n\
    \&\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXz\STX)\SUB\EM The name of the method.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\ETXz\STX\US\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXz $\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXz'(\n\
    \\136\SOH\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX\DEL\STX8\SUB{ Method parameter definition.\n\
    \ The key is the parameter index, starting from 0.\n\
    \ The value is the parameter matching type.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\ETX\DEL\STX&\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX\DEL'3\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX\DEL67b\ACKproto3"