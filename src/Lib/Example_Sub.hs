-----------------------------------------------------------------------------
--
-- Module      :    a sub 
--------------------------------------------------------------------------- 
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE ScopedTypeVariables   #-}
{-# LANGUAGE TypeFamilies          #-}
{-# LANGUAGE TypeSynonymInstances  #-}

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-missing-signatures #-}

module Lib.Example_Sub
     where


-- import Uniform.Strings

dirMain :: IO ()
dirMain = do
    putStrLn "Lib.Example_Sub here"
    return ()

dirTree = "Eins"



