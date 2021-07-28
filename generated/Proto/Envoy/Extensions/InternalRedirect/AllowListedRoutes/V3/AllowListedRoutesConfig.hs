{- This file was auto-generated from envoy/extensions/internal_redirect/allow_listed_routes/v3/allow_listed_routes_config.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.InternalRedirect.AllowListedRoutes.V3.AllowListedRoutesConfig (
        AllowListedRoutesConfig()
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
{- | Fields :
     
         * 'Proto.Envoy.Extensions.InternalRedirect.AllowListedRoutes.V3.AllowListedRoutesConfig_Fields.allowedRouteNames' @:: Lens' AllowListedRoutesConfig [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.InternalRedirect.AllowListedRoutes.V3.AllowListedRoutesConfig_Fields.vec'allowedRouteNames' @:: Lens' AllowListedRoutesConfig (Data.Vector.Vector Data.Text.Text)@ -}
data AllowListedRoutesConfig
  = AllowListedRoutesConfig'_constructor {_AllowListedRoutesConfig'allowedRouteNames :: !(Data.Vector.Vector Data.Text.Text),
                                          _AllowListedRoutesConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AllowListedRoutesConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AllowListedRoutesConfig "allowedRouteNames" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllowListedRoutesConfig'allowedRouteNames
           (\ x__ y__
              -> x__ {_AllowListedRoutesConfig'allowedRouteNames = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField AllowListedRoutesConfig "vec'allowedRouteNames" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllowListedRoutesConfig'allowedRouteNames
           (\ x__ y__
              -> x__ {_AllowListedRoutesConfig'allowedRouteNames = y__}))
        Prelude.id
instance Data.ProtoLens.Message AllowListedRoutesConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.internal_redirect.allow_listed_routes.v3.AllowListedRoutesConfig"
  packedMessageDescriptor _
    = "\n\
      \\ETBAllowListedRoutesConfig\DC2<\n\
      \\DC3allowed_route_names\CAN\SOH \ETX(\tR\DC1allowedRouteNamesB\f\250B\t\146\SOH\ACK\"\EOTr\STX\DLE\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        allowedRouteNames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allowed_route_names"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"allowedRouteNames")) ::
              Data.ProtoLens.FieldDescriptor AllowListedRoutesConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, allowedRouteNames__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AllowListedRoutesConfig'_unknownFields
        (\ x__ y__ -> x__ {_AllowListedRoutesConfig'_unknownFields = y__})
  defMessage
    = AllowListedRoutesConfig'_constructor
        {_AllowListedRoutesConfig'allowedRouteNames = Data.Vector.Generic.empty,
         _AllowListedRoutesConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AllowListedRoutesConfig
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser AllowListedRoutesConfig
        loop x mutable'allowedRouteNames
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'allowedRouteNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                       mutable'allowedRouteNames)
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
                              (Data.ProtoLens.Field.field @"vec'allowedRouteNames")
                              frozen'allowedRouteNames
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "allowed_route_names"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'allowedRouteNames y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'allowedRouteNames
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'allowedRouteNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'allowedRouteNames)
          "AllowListedRoutesConfig"
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
                           Data.Text.Encoding.encodeUtf8
                           _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'allowedRouteNames") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData AllowListedRoutesConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AllowListedRoutesConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AllowListedRoutesConfig'allowedRouteNames x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Zenvoy/extensions/internal_redirect/allow_listed_routes/v3/allow_listed_routes_config.proto\DC29envoy.extensions.internal_redirect.allow_listed_routes.v3\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"W\n\
    \\ETBAllowListedRoutesConfig\DC2<\n\
    \\DC3allowed_route_names\CAN\SOH \ETX(\tR\DC1allowedRouteNamesB\f\250B\t\146\SOH\ACK\"\EOTr\STX\DLE\SOHBq\n\
    \Gio.envoyproxy.envoy.extensions.internal_redirect.allow_listed_routes.v3B\FSAllowListedRoutesConfigProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\181\ENQ\n\
    \\ACK\DC2\EOT\NUL\NUL\SYN\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NULB\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NUL`\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\a\NUL`\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL=\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\b\NUL=\n\
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
    \\237\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DLE\NUL\SYN\SOH\SUB\154\SOH An internal redirect predicate that accepts only explicitly allowed target routes.\n\
    \ [#extension: envoy.internal_redirect_predicates.allow_listed_routes]\n\
    \2D [#protodoc-title: Allow listed routes internal redirect predicate]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DLE\b\US\n\
    \\213\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\DC4\STX\NAKB\SUB\198\SOH The list of routes that's allowed as redirect target by this predicate,\n\
    \ identified by the route's :ref:`name <envoy_v3_api_field_config.route.v3.Route.route>`.\n\
    \ Empty route names are not allowed.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\DC4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC4\DC2%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC4()\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\NAK\ACKA\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DC2\DC2\ETX\NAK\a@b\ACKproto3"