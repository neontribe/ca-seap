module Copy.BrandCopy exposing (brandCopy, relatedInfo)

import Copy.Keys exposing (CallToActionType(..), Copy(..), Key(..))



{-
   To make a paragraph use CopyText and just write out your paragraph in the following "quotation marks"

       CopyText "This is a paragraph or title. Easy!"

       Also use CopyText with empty "" if you don't want anything there.

       CopyText ""


   To make a list (such as bulletpointed information) use CopyList. Wrap your list [in square brackets],  write each of your list items
   "contained in its own quotation marks" and follow each with a comma

       CopyList
           [ CopyText "Please"
           , CopyText "Don't forget to write"
           , CopyText "Lists like"
           , CopyText "This"
           ]


   To make a paragraph that has a link in the text, use CopyWithLink. There are four components to CopyWithLink: the text that comes before the link,
   the words that will comprise the link itself, the web address you want the text to link to, and any text that comes after the link.

       CopyWithLink
           { textBefore = "This is a paragraph that contains"
           , linkText = "a link"
           , destination = "https://www.google.co.uk"
           , textAfter = "to Google's home page."
           }

   To add multiple bits of copy to a single section use CopySection. The items in the the section will appear with space between them.

       CopySection
           [ CopyText
           , CopyList
           , CoptText
           ]

-}


brandCopy : Key -> Copy
brandCopy key =
    case key of
        SiteTitle ->
            CopyText "✨"

        AppTitle ->
            CopyText "✨"

        CallToActionOne ->
            CallToAction
                { action = DesktopInteractive
                , category = "✨"
                , icon = "✨"
                , href = "✨"
                , displayHref = ""
                , promptLong = "✨"
                , promptShort = "✨"
                }

        CallToActionTwo ->
            CallToAction
                { action = DesktopInteractive
                , category = "page"
                , icon = "✨"
                , href = "#"
                , displayHref = "✨"
                , promptLong = "✨"
                , promptShort = "✨"
                }

        CallToActionThree ->
            CallToAction
                { action = DesktopInteractive
                , category = "✨"
                , icon = "✨"
                , href = "✨"
                , displayHref = "✨"
                , promptLong = "✨"
                , promptShort = "✨"
                }

        ContentLinkLong ->
            CopyText "✨"

        ContentLinkMedium ->
            CopyText "✨"

        ContentLinkShort ->
            CopyText "✨"

        IconStories ->
            CopyText "✨"

        CookieDescription ->
            CopyText "✨"

        CookieAccept ->
            CopyText "✨"

        CookieDecline ->
            CopyText "✨"

        --Home Page
        HomeReadAboutH2 ->
            CopyText "✨"

        HomeBannerImageAlt ->
            CopyText "✨"

        HomeTalkToSomeoneH2 ->
            CopyText "✨"

        HomeP1 ->
            CopyWithLink
                { textBefore = "✨"
                , linkText = "✨"
                , destination = "#"
                , textAfter = ""
                }

        HomeP2 ->
            CopyText "✨"

        -- Privacy Page
        PrivacyTitleH2 ->
            CopyText "✨"

        PrivacyIntroP ->
            CopyText "✨ "

        PrivacyCompanyAddress ->
            CopyList
                [ CopyText "✨"
                , CopyText "✨"
                , CopyText "✨"
                , CopyText "✨"
                ]

        PrivacySectionOneH3 ->
            CopyText "✨"

        PrivacySectionOneP ->
            CopyText "✨"

        PrivacySectionOneList ->
            CopyList
                [ CopyText "✨"
                , CopyText "✨"
                , CopyText "✨"
                ]

        PrivacySectionTwoH3 ->
            CopyText "✨"

        PrivacySectionTwoP ->
            CopyText "✨"

        PrivacySectionTwoList ->
            CopyList
                [ CopyText "✨"
                , CopyText "✨ "
                , CopyText "✨"
                , CopyText "✨"
                ]

        PrivacySectionThreeH3 ->
            CopyText ""

        PrivacySectionThreeP1 ->
            CopyText
                "✨"

        PrivacySectionThreeP2 ->
            CopyText "✨"

        PrivacySectionThreeList ->
            CopyList
                [ CopyText "✨"
                , CopyText "✨"
                , CopyText "✨"
                ]

        PrivacySectionFourH3 ->
            CopyText "✨"

        PrivacySectionFourP1 ->
            CopyText ""

        PrivacySectionFourList ->
            CopyList
                [ CopyText "✨"
                , CopyWithLink
                    { textBefore = "✨"
                    , linkText = "✨"
                    , destination = "#"
                    , textAfter = "."
                    }
                , CopyWithLink
                    { textBefore = "✨"
                    , linkText = "✨"
                    , destination = "✨"
                    , textAfter = "."
                    }
                , CopyWithLink
                    { textBefore = "✨"
                    , linkText = "✨"
                    , destination = "✨"
                    , textAfter = "."
                    }
                ]

        PrivacySectionFourP2 ->
            CopyText ""

        PrivacySectionFiveH3 ->
            CopyText "✨"

        PrivacySectionFiveP ->
            CopyWithLink
                { textBefore = "✨"
                , linkText = "✨"
                , destination = "#"
                , textAfter = ". ✨"
                }

        PrivacySectionFiveList ->
            CopyText ""

        PrivacySectionSixH3 ->
            CopyText "✨"

        PrivacySectionSixP1 ->
            CopyText
                "✨ "

        PrivacySectionSixP2 ->
            CopyText "✨"

        PrivacySectionSixP3 ->
            CopyText ""

        PrivacySectionSixP4 ->
            CopyText ""

        PrivacySectionSixList ->
            CopyList
                [ CopyText "✨"
                , CopyText "✨"
                , CopyText "✨"
                , CopyText "✨"
                ]

        PrivacySectionSevenH3 ->
            CopyText "✨"

        PrivacySectionSevenP ->
            CopyText "✨"

        PrivacySectionSevenList ->
            CopyText ""

        PrivacySectionEightH3 ->
            CopyText ""

        PrivacySectionEightP ->
            CopyText ""

        PrivacySectionEightList ->
            CopyText ""

        -- Supporters Page
        SupportersTitleH2 ->
            CopyText "Our Supporters"

        SupportersP1 ->
            CopyText "We would like to thank our funders, whose generosity has made this website possible."

        SupportersP2 ->
            CopyText "This web app was funded by CAST - Centre for Acceleration of Social Technology - as part of a project called Contemplating Action which is seeking to find out whether visual stories can help people overcome their fears and barriers to getting support. The project has produced an app that could be used by different charities to encourage people to reach out and get help by reassuring them that they are not alone."

        CastLogoAlt ->
            CopyText "Centre for Acceleration of Social Technology logo"

        ComicReliefLogoAlt ->
            CopyText "Comic Relief logo"

        DepartmentForCultureLogoAlt ->
            CopyText "Department for Culture Media & Sport logo"

        BigLotteryLogoAlt ->
            CopyText "Big Lottery logo"

        SupportersP3 ->
            CopyText "The initial You Matter app which inspired Contemplating Action was part of Tech vs Abuse. This grant was funded through a joint funding initiative between the Tampon Tax Fund, a partnership between HM Government and Comic Relief, and the Big Lottery Fund."

        SupportersP4 ->
            CopyText "The original You Matter web app was developed by Neontribe and The Haven, together with women who have been victims of domestic abuse. The Haven is a Wolverhampton based charity which supports women and dependent children who are vulnerable to domestic violence, homelessness and abuse."

        NeontribeLogoAlt ->
            CopyText "Neontribe logo"

        HavenLogoAlt ->
            CopyText "The Haven Wolverhampton logo"

        SupportersP5 ->
            CopyText "This web app was built by Neontribe and seAp, together with people who have used seAp’s health care complaints service."

        FooterSupportersText ->
            CopyText "Find out about our"

        FooterSupportersLink ->
            CopyText "supporters"

        FooterPrivacyText ->
            CopyText "Read our"

        FooterPrivacyLink ->
            CopyText "privacy policy"

        FooterRegisteredText ->
            CopyText ""

        FooterCopyrightLink ->
            CopyWithLink
                { textBefore = "© 2019 - "
                , linkText = "seAp"
                , destination = "https://www.seap.org.uk/"
                , textAfter = ""
                }

        InfoTitleH2 ->
            CopyText "✨"

        InfoLikeMoreInfoLink ->
            CopyText "✨"

        InfoLikeOtherInfoLink ->
            CopyText "✨"

        InfoOtherInfoLink ->
            CopyText "✨"

        InfoNotFoundName ->
            CopyText "✨"

        InfoNotFoundSlug ->
            CopyText "✨"

        InfoNotFoundIcon ->
            CopyText "✨"

        InfoNotFoundContent ->
            CopySection
                [ CopyText "✨"
                , CopyText "✨"
                ]

        InfoOneName ->
            CopyText "✨"

        InfoOneSlug ->
            CopyText "✨"

        InfoOneIcon ->
            CopyText "✨"

        InfoOneContent ->
            CopyText "✨"

        InfoTwoName ->
            CopyText "✨"

        InfoTwoSlug ->
            CopyText "✨"

        InfoTwoIcon ->
            CopyText "✨"

        InfoTwoContent ->
            CopyText "✨"

        InfoThreeName ->
            CopyText "✨"

        InfoThreeSlug ->
            CopyText "✨"

        InfoThreeIcon ->
            CopyText "✨"

        InfoThreeContent ->
            CopyText "✨"

        InfoFourName ->
            CopyText "✨"

        InfoFourSlug ->
            CopyText "✨"

        InfoFourIcon ->
            CopyText "✨"

        InfoFourContent ->
            CopyText "✨"

        InfoFiveName ->
            CopyText "✨"

        InfoFiveSlug ->
            CopyText "✨"

        InfoFiveIcon ->
            CopyText "✨"

        InfoFiveContent ->
            CopyText "✨"

        InfoSixName ->
            CopyText "✨"

        InfoSixSlug ->
            CopyText "✨"

        InfoSixIcon ->
            CopyText "✨"

        InfoSixContent ->
            CopyText "✨"

        StoriesTitleH2 ->
            CopyText "✨"

        StoriesTeaserMoreLink title ->
            CopyText ("✨ " ++ title ++ "✨")

        StoryCardH3 cardId ->
            CopyText ("✨ " ++ String.fromInt cardId ++ " ✨")

        StoryCardStartJourneyPrompt ->
            CopyText "✨"

        StoryNotFoundTitle ->
            CopyText "✨"

        StoryNotFoundTeaser ->
            CopyText "✨"

        StoryNotFoundQuote ->
            CopyText "✨"

        StoryNotFoundImageAlt ->
            CopyText "✨"

        StoryNotFoundMessage ->
            CopyText "✨"

        StoryOneTitle ->
            CopyText "✨"

        StoryOneTeaser ->
            CopyText "✨"

        StoryOneTeaserImageAlt ->
            CopyText "✨"

        StoryOne1Quote ->
            CopyText "✨"

        StoryOne1ImageAlt ->
            CopyText "✨"

        StoryOne1Message ->
            CopyText ""

        StoryOne2Quote ->
            CopyText "✨"

        StoryOne2ImageAlt ->
            CopyText "✨"

        StoryOne2Message ->
            CopyText "✨"

        StoryOne3Quote ->
            CopyText "✨"

        StoryOne3ImageAlt ->
            CopyText "✨"

        StoryOne3Message ->
            CopyText ""

        StoryOne4Quote ->
            CopyText "✨"

        StoryOne4ImageAlt ->
            CopyText "✨"

        StoryOne4Message ->
            CopyText "✨"

        StoryTwoTitle ->
            CopyText "✨"

        StoryTwoTeaser ->
            CopyText "✨"

        StoryTwoTeaserImageAlt ->
            CopyText "✨"

        StoryTwo1Quote ->
            CopyText """✨"""

        StoryTwo1ImageAlt ->
            CopyText "✨"

        StoryTwo1Message ->
            CopyText ""

        StoryTwo2Quote ->
            CopyText """✨"""

        StoryTwo2ImageAlt ->
            CopyText "✨"

        StoryTwo2Message ->
            CopyText "✨"

        StoryTwo3Quote ->
            CopyText """✨"""

        StoryTwo3ImageAlt ->
            CopyText "✨"

        StoryTwo3Message ->
            CopyText ""

        StoryTwo4Quote ->
            CopyText """✨"""

        StoryTwo4ImageAlt ->
            CopyText "✨"

        StoryTwo4Message ->
            CopyText ""

        StoryThreeTitle ->
            CopyText "✨"

        StoryThreeTeaser ->
            CopyText "✨"

        StoryThreeTeaserImageAlt ->
            CopyText "✨"

        StoryThree1Quote ->
            CopyText """✨"""

        StoryThree1ImageAlt ->
            CopyText "✨"

        StoryThree1Message ->
            CopyText ""

        StoryThree2Quote ->
            CopyText """✨"""

        StoryThree2ImageAlt ->
            CopyText "✨"

        StoryThree2Message ->
            CopyText "✨"

        StoryThree3Quote ->
            CopyText """✨"""

        StoryThree3ImageAlt ->
            CopyText "✨"

        StoryThree3Message ->
            CopyText ""

        StoryThree4Quote ->
            CopyText """✨"""

        StoryThree4ImageAlt ->
            CopyText "✨"

        StoryThree4Message ->
            CopyText ""


relatedInfo : Int -> List Int
relatedInfo storyId =
    case storyId of
        1 ->
            [ 1, 6 ]

        2 ->
            [ 2, 5 ]

        3 ->
            [ 1, 4 ]

        _ ->
            [ 1 ]
