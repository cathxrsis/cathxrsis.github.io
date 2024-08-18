--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import           Data.Monoid (mappend)
import Hakyll
    ( getResourceBody,
      makeItem,
      loadAll,
      defaultConfiguration,
      copyFileCompiler,
      idRoute,
      setExtension,
      compile,
      create,
      match,
      route,
      hakyllWith,
      compressCssCompiler,
      relativizeUrls,
      pandocCompiler,
      constField,
      dateField,
      defaultContext,
      listField,
      applyAsTemplate,
      loadAndApplyTemplate,
      templateCompiler,
      recentFirst,
      saveSnapshot,
      loadAllSnapshots,
      Configuration(destinationDirectory),
      Context, teaserField )


--------------------------------------------------------------------------------
config :: Configuration
config = defaultConfiguration
  {destinationDirectory = "docs"
  }

main :: IO ()
main = hakyllWith config $ do
    match "images/*" $ do
        route   idRoute
        compile copyFileCompiler

    match "fonts/*" $ do
        route   idRoute
        compile copyFileCompiler

    match "css/*" $ do
        route   idRoute
        compile compressCssCompiler

    match "bits/*" $ do
        route   $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/default.html" defaultContext
            >>= relativizeUrls

    match "posts/*" $ do
        route $ setExtension "html"
        compile $ pandocCompiler
            >>= saveSnapshot "content"
            >>= loadAndApplyTemplate "templates/post.html"    postCtx
            >>= loadAndApplyTemplate "templates/default.html" postCtx
            >>= relativizeUrls
    
--    match "patterns/*" $ do
--        route $ setExtension "html"
--        compile pandocCompiler
--            >>= loadAndApplyTemplate 

    create ["archive.html"] $ do
        route idRoute
        compile $ do
            posts <- recentFirst =<< loadAllSnapshots "posts/*" "content"
            let archiveCtx =
                    listField "posts" teaserCtx (return posts) <>
                    constField "title" "Archives"            <>
                    defaultContext

            makeItem ""
                >>= loadAndApplyTemplate "templates/post-archive.html" archiveCtx
                >>= loadAndApplyTemplate "templates/default.html" archiveCtx
                >>= relativizeUrls


    match "index.html" $ do
        route idRoute
        compile $ do
            posts <- recentFirst =<< loadAll "posts/*"
            let indexCtx =
                    listField "posts" postCtx (return posts) `mappend`
                    constField "title" "Home"                `mappend`
                    defaultContext

            getResourceBody
                >>= applyAsTemplate indexCtx
                >>= loadAndApplyTemplate "templates/default.html" indexCtx
                >>= relativizeUrls

    match "templates/*" $ compile templateCompiler


--------------------------------------------------------------------------------
postCtx :: Context String
postCtx =
    dateField "date" "%B %e, %Y" `mappend`
    defaultContext

teaserCtx = teaserField "teaser" "content" <> postCtx
