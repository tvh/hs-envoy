{- This file was auto-generated from envoy/extensions/http/original_ip_detection/xff/v3/xff.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Http.OriginalIpDetection.Xff.V3.Xff (
        XffConfig()
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
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Http.OriginalIpDetection.Xff.V3.Xff_Fields.xffNumTrustedHops' @:: Lens' XffConfig Data.Word.Word32@ -}
data XffConfig
  = XffConfig'_constructor {_XffConfig'xffNumTrustedHops :: !Data.Word.Word32,
                            _XffConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show XffConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField XffConfig "xffNumTrustedHops" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _XffConfig'xffNumTrustedHops
           (\ x__ y__ -> x__ {_XffConfig'xffNumTrustedHops = y__}))
        Prelude.id
instance Data.ProtoLens.Message XffConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.http.original_ip_detection.xff.v3.XffConfig"
  packedMessageDescriptor _
    = "\n\
      \\tXffConfig\DC2/\n\
      \\DC4xff_num_trusted_hops\CAN\SOH \SOH(\rR\DC1xffNumTrustedHops"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        xffNumTrustedHops__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "xff_num_trusted_hops"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"xffNumTrustedHops")) ::
              Data.ProtoLens.FieldDescriptor XffConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, xffNumTrustedHops__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _XffConfig'_unknownFields
        (\ x__ y__ -> x__ {_XffConfig'_unknownFields = y__})
  defMessage
    = XffConfig'_constructor
        {_XffConfig'xffNumTrustedHops = Data.ProtoLens.fieldDefault,
         _XffConfig'_unknownFields = []}
  parseMessage
    = let
        loop :: XffConfig -> Data.ProtoLens.Encoding.Bytes.Parser XffConfig
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
                                       "xff_num_trusted_hops"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"xffNumTrustedHops") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "XffConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"xffNumTrustedHops") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData XffConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_XffConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq (_XffConfig'xffNumTrustedHops x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \<envoy/extensions/http/original_ip_detection/xff/v3/xff.proto\DC22envoy.extensions.http.original_ip_detection.xff.v3\SUB\GSudpa/annotations/status.proto\"<\n\
    \\tXffConfig\DC2/\n\
    \\DC4xff_num_trusted_hops\CAN\SOH \SOH(\rR\DC1xffNumTrustedHopsBV\n\
    \@io.envoyproxy.envoy.extensions.http.original_ip_detection.xff.v3B\bXffProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\188\ACK\n\
    \\ACK\DC2\EOT\NUL\NUL\CAN\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL;\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NULY\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\ACK\NULY\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NUL)\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\a\NUL)\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\b\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\t\NULF\n\
    \\148\STX\n\
    \\STX\EOT\NUL\DC2\EOT\DC1\NUL\CAN\SOH\SUB\205\SOH This extension allows for the original downstream remote IP to be detected\n\
    \ by reading the :ref:`config_http_conn_man_headers_x-forwarded-for` header.\n\
    \\n\
    \ [#extension: envoy.http.original_ip_detection.xff]\n\
    \28 [#protodoc-title: XFF original IP detection extension]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC1\b\DC1\n\
    \\237\STX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ETB\STX\"\SUB\223\STX The number of additional ingress proxy hops from the right side of the\n\
    \ :ref:`config_http_conn_man_headers_x-forwarded-for` HTTP header to trust when\n\
    \ determining the origin client's IP address. The default is zero if this option\n\
    \ is not specified. See the documentation for\n\
    \ :ref:`config_http_conn_man_headers_x-forwarded-for` for more information.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\ETB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ETB\t\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ETB !b\ACKproto3"