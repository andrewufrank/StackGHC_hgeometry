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
{-# LANGUAGE TypeOperators  #-}
{-# LANGUAGE DataKinds  #-}

{-# OPTIONS_GHC -Wno-missing-signatures #-}

module Main     where      -- must have Main (main) or Main where

 
-- import           Lib.DirTree
-- import           Lib.OpenClass
-- import UniformBase

import Data.Geometry.Point 
import qualified Data.Geometry.Point as HP
import qualified Data.List.NonEmpty as NE 
import Data.PlaneGraph
import Data.Geometry.PlanarSubdivision
import Algorithms.Geometry.DelaunayTriangulation.Types
import Algorithms.Geometry.DelaunayTriangulation.Naive
import Data.Ext

-- preparing: 
fourPts = [(0,0,11), (1.5, 1.5, 12), (0,2,13), (2,0,14)] :: [(Double,Double,Int)]
to_HPoint  (x,y,i) = HP.Point2 x y :+ i

fourHPoint :: [Point 2 Double :+ Int]
fourHPoint = map to_HPoint fourPts 

delaunay2 :: (Ord r, Fractional r) => [Point 2 r :+ p] -> Triangulation p r
delaunay2 pnt2s =  delaunayTriangulation (NE.fromList pnt2s)
 

planarSubdiv2 :: (Ord r, Fractional r) => Triangulation p r -> PlanarSubdivision s p () () r
planarSubdiv2 t = toPlanarSubdivision t

toPlaneGraph2 :: Triangulation p r -> PlaneGraph s p () () r
toPlaneGraph2 t = toPlaneGraph t

main :: IO ()
main =  do  
    print "the input points"
    print . show $ fourHPoint
    let 
        del1 = delaunay2 fourHPoint 
        planar1 = toPlanarSubdivision del1
        plane1 = toPlaneGraph del1
    print . show $ del1
    print . show $ planar1
    print . show $ plane1 


    return ()

