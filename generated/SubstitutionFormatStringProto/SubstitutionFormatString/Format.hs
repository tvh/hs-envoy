{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module SubstitutionFormatStringProto.SubstitutionFormatString.Format where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified BaseProto.DataSource as BaseProto
import qualified StructProto.Struct as StructProto

data Format = Text_format{text_format :: (P'.Utf8)}
            | Json_format{json_format :: (StructProto.Struct)}
            | Text_format_source{text_format_source :: (BaseProto.DataSource)}
              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)
get'text_format x
 = case x of
     Text_format text_format -> Prelude'.Just text_format
     _ -> Prelude'.Nothing
get'json_format x
 = case x of
     Json_format json_format -> Prelude'.Just json_format
     _ -> Prelude'.Nothing
get'text_format_source x
 = case x of
     Text_format_source text_format_source -> Prelude'.Just text_format_source
     _ -> Prelude'.Nothing

instance P'.Default Format where
  defaultValue = Text_format P'.defaultValue

instance P'.Mergeable Format