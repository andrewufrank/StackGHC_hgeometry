-----------------------------------------------------------------------------
--
-- Module      :   for automatic test
-- insert {-@ HTF_TESTS @-} for each import
-----------------------------------------------------------------------------
{-# OPTIONS_GHC -F -pgmF htfpp #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# OPTIONS_GHC -Wno-unused-top-binds #-}  
                 -- htf_main_thisModulesTests is not used
 

-- module Spec     where      -- must have Main (main) or Main where

import           Test.Framework
import  {-@ HTF_TESTS @-}         Lib.Example_Sub_test
-- import  {-@ HTF_TESTS @-}         Vault.NaiveTripleStore_test
-- import  {-@ HTF_TESTS @-}         Vault.Triple4cat_test
-- import  {-@ HTF_TESTS @-}         GIS.Category_test
-- import  {-@ HTF_TESTS @-}         Storable.Store_test


main :: IO ()
main =  do
    putStrLn "Lib.Testing.hs for Example_test:\n"
    r <- htfMain htf_importedTests
    putStrLn ("other tests t:\n" ++ show r)
    return ()


