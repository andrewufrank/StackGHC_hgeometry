-----------------------------------------------------------------------------
--
-- Module      :   a test  
----------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings     #-}
-- {-# LANGUAGE BangPatterns          #-}
-- {-# LANGUAGE DoAndIfThenElse       #-}
-- {-# LANGUAGE FlexibleContexts      #-}
-- {-# LANGUAGE FlexibleInstances     #-}
-- {-# LANGUAGE MultiParamTypeClasses #-}
-- {-# LANGUAGE PackageImports        #-}
-- {-# LANGUAGE ScopedTypeVariables   #-}
-- {-# LANGUAGE TypeFamilies          #-}
-- {-# LANGUAGE TypeSynonymInstances  #-}
-- {-# LANGUAGE UndecidableInstances  #-}
-- {-# LANGUAGE DeriveAnyClass  #-}
-- {-# LANGUAGE DeriveGeneric  #-}
-- {-# LANGUAGE GeneralisedNewtypeDeriving  #-}

{-# OPTIONS_GHC -Wno-missing-signatures #-}

module Main     where      -- must have Main (main) or Main where

 
-- import           Lib.DirTree
-- import           Lib.OpenClass
-- import UniformBase

main :: IO ()
main =  do  -- with tests in other modules
    -- startProg "The Main Example" 
    --     (do 
    --         putIOwords ["The Main of Example"]
    --         )
    -- dirMain
    -- openMain
    return ()

