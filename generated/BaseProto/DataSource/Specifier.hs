{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module BaseProto.DataSource.Specifier where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data Specifier = Filename{filename :: (P'.Utf8)}
               | Inline_bytes{inline_bytes :: (P'.ByteString)}
               | Inline_string{inline_string :: (P'.Utf8)}
                 deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)
get'filename x
 = case x of
     Filename filename -> Prelude'.Just filename
     _ -> Prelude'.Nothing
get'inline_bytes x
 = case x of
     Inline_bytes inline_bytes -> Prelude'.Just inline_bytes
     _ -> Prelude'.Nothing
get'inline_string x
 = case x of
     Inline_string inline_string -> Prelude'.Just inline_string
     _ -> Prelude'.Nothing

instance P'.Default Specifier where
  defaultValue = Filename P'.defaultValue

instance P'.Mergeable Specifier