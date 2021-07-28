{- This file was auto-generated from envoy/admin/v3/init_dump.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Admin.V3.InitDump (
        UnreadyTargetsDumps(), UnreadyTargetsDumps'UnreadyTargetsDump()
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
     
         * 'Proto.Envoy.Admin.V3.InitDump_Fields.unreadyTargetsDumps' @:: Lens' UnreadyTargetsDumps [UnreadyTargetsDumps'UnreadyTargetsDump]@
         * 'Proto.Envoy.Admin.V3.InitDump_Fields.vec'unreadyTargetsDumps' @:: Lens' UnreadyTargetsDumps (Data.Vector.Vector UnreadyTargetsDumps'UnreadyTargetsDump)@ -}
data UnreadyTargetsDumps
  = UnreadyTargetsDumps'_constructor {_UnreadyTargetsDumps'unreadyTargetsDumps :: !(Data.Vector.Vector UnreadyTargetsDumps'UnreadyTargetsDump),
                                      _UnreadyTargetsDumps'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UnreadyTargetsDumps where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UnreadyTargetsDumps "unreadyTargetsDumps" [UnreadyTargetsDumps'UnreadyTargetsDump] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnreadyTargetsDumps'unreadyTargetsDumps
           (\ x__ y__
              -> x__ {_UnreadyTargetsDumps'unreadyTargetsDumps = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField UnreadyTargetsDumps "vec'unreadyTargetsDumps" (Data.Vector.Vector UnreadyTargetsDumps'UnreadyTargetsDump) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnreadyTargetsDumps'unreadyTargetsDumps
           (\ x__ y__
              -> x__ {_UnreadyTargetsDumps'unreadyTargetsDumps = y__}))
        Prelude.id
instance Data.ProtoLens.Message UnreadyTargetsDumps where
  messageName _ = Data.Text.pack "envoy.admin.v3.UnreadyTargetsDumps"
  packedMessageDescriptor _
    = "\n\
      \\DC3UnreadyTargetsDumps\DC2j\n\
      \\NAKunready_targets_dumps\CAN\SOH \ETX(\v26.envoy.admin.v3.UnreadyTargetsDumps.UnreadyTargetsDumpR\DC3unreadyTargetsDumps\SUBK\n\
      \\DC2UnreadyTargetsDump\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2!\n\
      \\ftarget_names\CAN\STX \ETX(\tR\vtargetNames"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        unreadyTargetsDumps__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unready_targets_dumps"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UnreadyTargetsDumps'UnreadyTargetsDump)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"unreadyTargetsDumps")) ::
              Data.ProtoLens.FieldDescriptor UnreadyTargetsDumps
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, unreadyTargetsDumps__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UnreadyTargetsDumps'_unknownFields
        (\ x__ y__ -> x__ {_UnreadyTargetsDumps'_unknownFields = y__})
  defMessage
    = UnreadyTargetsDumps'_constructor
        {_UnreadyTargetsDumps'unreadyTargetsDumps = Data.Vector.Generic.empty,
         _UnreadyTargetsDumps'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UnreadyTargetsDumps
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld UnreadyTargetsDumps'UnreadyTargetsDump
             -> Data.ProtoLens.Encoding.Bytes.Parser UnreadyTargetsDumps
        loop x mutable'unreadyTargetsDumps
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'unreadyTargetsDumps <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'unreadyTargetsDumps)
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
                              (Data.ProtoLens.Field.field @"vec'unreadyTargetsDumps")
                              frozen'unreadyTargetsDumps
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
                                        "unready_targets_dumps"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'unreadyTargetsDumps y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'unreadyTargetsDumps
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'unreadyTargetsDumps <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'unreadyTargetsDumps)
          "UnreadyTargetsDumps"
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
                   (Data.ProtoLens.Field.field @"vec'unreadyTargetsDumps") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData UnreadyTargetsDumps where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UnreadyTargetsDumps'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UnreadyTargetsDumps'unreadyTargetsDumps x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.InitDump_Fields.name' @:: Lens' UnreadyTargetsDumps'UnreadyTargetsDump Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.InitDump_Fields.targetNames' @:: Lens' UnreadyTargetsDumps'UnreadyTargetsDump [Data.Text.Text]@
         * 'Proto.Envoy.Admin.V3.InitDump_Fields.vec'targetNames' @:: Lens' UnreadyTargetsDumps'UnreadyTargetsDump (Data.Vector.Vector Data.Text.Text)@ -}
data UnreadyTargetsDumps'UnreadyTargetsDump
  = UnreadyTargetsDumps'UnreadyTargetsDump'_constructor {_UnreadyTargetsDumps'UnreadyTargetsDump'name :: !Data.Text.Text,
                                                         _UnreadyTargetsDumps'UnreadyTargetsDump'targetNames :: !(Data.Vector.Vector Data.Text.Text),
                                                         _UnreadyTargetsDumps'UnreadyTargetsDump'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UnreadyTargetsDumps'UnreadyTargetsDump where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UnreadyTargetsDumps'UnreadyTargetsDump "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnreadyTargetsDumps'UnreadyTargetsDump'name
           (\ x__ y__
              -> x__ {_UnreadyTargetsDumps'UnreadyTargetsDump'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UnreadyTargetsDumps'UnreadyTargetsDump "targetNames" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnreadyTargetsDumps'UnreadyTargetsDump'targetNames
           (\ x__ y__
              -> x__
                   {_UnreadyTargetsDumps'UnreadyTargetsDump'targetNames = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField UnreadyTargetsDumps'UnreadyTargetsDump "vec'targetNames" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnreadyTargetsDumps'UnreadyTargetsDump'targetNames
           (\ x__ y__
              -> x__
                   {_UnreadyTargetsDumps'UnreadyTargetsDump'targetNames = y__}))
        Prelude.id
instance Data.ProtoLens.Message UnreadyTargetsDumps'UnreadyTargetsDump where
  messageName _
    = Data.Text.pack
        "envoy.admin.v3.UnreadyTargetsDumps.UnreadyTargetsDump"
  packedMessageDescriptor _
    = "\n\
      \\DC2UnreadyTargetsDump\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2!\n\
      \\ftarget_names\CAN\STX \ETX(\tR\vtargetNames"
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
              Data.ProtoLens.FieldDescriptor UnreadyTargetsDumps'UnreadyTargetsDump
        targetNames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target_names"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"targetNames")) ::
              Data.ProtoLens.FieldDescriptor UnreadyTargetsDumps'UnreadyTargetsDump
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, targetNames__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UnreadyTargetsDumps'UnreadyTargetsDump'_unknownFields
        (\ x__ y__
           -> x__
                {_UnreadyTargetsDumps'UnreadyTargetsDump'_unknownFields = y__})
  defMessage
    = UnreadyTargetsDumps'UnreadyTargetsDump'_constructor
        {_UnreadyTargetsDumps'UnreadyTargetsDump'name = Data.ProtoLens.fieldDefault,
         _UnreadyTargetsDumps'UnreadyTargetsDump'targetNames = Data.Vector.Generic.empty,
         _UnreadyTargetsDumps'UnreadyTargetsDump'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UnreadyTargetsDumps'UnreadyTargetsDump
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser UnreadyTargetsDumps'UnreadyTargetsDump
        loop x mutable'targetNames
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'targetNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'targetNames)
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
                              (Data.ProtoLens.Field.field @"vec'targetNames")
                              frozen'targetNames
                              x))
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
                                  mutable'targetNames
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "target_names"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'targetNames y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'targetNames
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'targetNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'targetNames)
          "UnreadyTargetsDump"
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
                              Data.Text.Encoding.encodeUtf8
                              _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'targetNames") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData UnreadyTargetsDumps'UnreadyTargetsDump where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UnreadyTargetsDumps'UnreadyTargetsDump'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UnreadyTargetsDumps'UnreadyTargetsDump'name x__)
                (Control.DeepSeq.deepseq
                   (_UnreadyTargetsDumps'UnreadyTargetsDump'targetNames x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\RSenvoy/admin/v3/init_dump.proto\DC2\SOenvoy.admin.v3\SUB\GSudpa/annotations/status.proto\"\206\SOH\n\
    \\DC3UnreadyTargetsDumps\DC2j\n\
    \\NAKunready_targets_dumps\CAN\SOH \ETX(\v26.envoy.admin.v3.UnreadyTargetsDumps.UnreadyTargetsDumpR\DC3unreadyTargetsDumps\SUBK\n\
    \\DC2UnreadyTargetsDump\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2!\n\
    \\ftarget_names\CAN\STX \ETX(\tR\vtargetNamesB7\n\
    \\FSio.envoyproxy.envoy.admin.v3B\rInitDumpProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\229\b\n\
    \\ACK\DC2\EOT\NUL\NUL\RS\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\ETB\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NUL5\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\ACK\NUL5\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NUL.\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\a\NUL.\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\b\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\t\NULF\n\
    \\182\STX\n\
    \\STX\EOT\NUL\DC2\EOT\DLE\NUL\RS\SOH\SUB\138\STX Dumps of unready targets of envoy init managers. Envoy's admin fills this message with init managers,\n\
    \ which provides the information of their unready targets.\n\
    \ The :ref:`/init_dump <operations_admin_interface_init_dump>` will dump all unready targets information.\n\
    \2\GS [#protodoc-title: InitDump]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DLE\b\ESC\n\
    \J\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\DC2\STX\CAN\ETX\SUB< Message of unready targets information of an init manager.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\DC2\n\
    \\FS\n\
    \G\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX\DC4\EOT\DC4\SUB8 Name of the init manager. Example: \"init_manager_xxx\".\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX\DC4\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX\DC4\v\SI\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX\DC4\DC2\DC3\n\
    \U\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX\ETB\EOT%\SUBF Names of unready targets of the init manager. Example: \"target_xxx\".\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\EOT\DC2\ETX\ETB\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETX\ETB\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX\ETB\DC4 \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX\ETB#$\n\
    \\252\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\GS\STX8\SUB\238\SOH You can choose specific component to dump unready targets with mask query parameter.\n\
    \ See :ref:`/init_dump?mask={} <operations_admin_interface_init_dump_by_mask>` for more information.\n\
    \ The dumps of unready targets of all init managers.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\GS\v\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\GS\RS3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\GS67b\ACKproto3"