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
            CopyText "✨"

        SupportersP1 ->
            CopyText "✨"

        SupportersP2 ->
            CopyText "✨"

        CastLogoAlt ->
            CopyText "✨"

        ComicReliefLogoAlt ->
            CopyText "✨"

        DepartmentForCultureLogoAlt ->
            CopyText "✨"

        BigLotteryLogoAlt ->
            CopyText "✨"

        SupportersP3 ->
            CopyText "✨"

        SupportersP4 ->
            CopyText "✨"

        NeontribeLogoAlt ->
            CopyText "✨"

        HavenLogoAlt ->
            CopyText "✨"

        SupportersP5 ->
            CopyText "✨"

        FooterSupportersText ->
            CopyText "✨"

        FooterSupportersLink ->
            CopyText "✨"

        FooterPrivacyText ->
            CopyText "✨"

        FooterPrivacyLink ->
            CopyText "✨"

        FooterRegisteredText ->
            CopyText ""

        FooterCopyrightLink ->
            CopyWithLink
                { textBefore = "© ✨ - "
                , linkText = "✨"
                , destination = "#"
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
            CopyText "What happens when you contact us?"

        InfoOneSlug ->
            CopyText ""

        InfoOneIcon ->
            CopyText ""

        InfoOneContent ->
            CopyText "Our trained helpline staff will listen to what has happened to you and offer you advice explain your choices on what you can do next. If you decide you want to complain, you can choose to use a self-help pack or to be contacted by our specialist advocates. They are experienced, trained workers who are there to help and support you through every step of your complaint about an NHS service. They can work with you by phone, by email or by meeting face to face. They will ensure your voice is heard."

        InfoTwoName ->
            CopyText "What can I expect?"

        InfoTwoSlug ->
            CopyText ""

        InfoTwoIcon ->
            CopyText ""

        InfoTwoContent ->
            CopySection
            [ CopyText "We don’t promise to get you everything you want. We will always be clear with you about this. Complaining is not the same as taking legal action and you won’t get a financial reward. But we can work towards goals that could make a big difference to how you feel. Think about if you might like:"
            , CopyList
                [ CopyText "an apology so you know that other people accept that sometimes things do go wrong"
                    , CopyText "an explanation so that you understand why something happened"
                    , CopyText "a change to a service so that something never happens again"
                    , CopyText "action to put things right so that you and others have better treatment in the future"
                    , CopyText "answers to questions so that you understand why a decision was made"
                    ]
            , CopyText "Our team will help you work out what you can expect."
            ]

        InfoThreeName ->
            CopyText "Will I be harming the NHS?"

        InfoThreeSlug ->
            CopyText ""

        InfoThreeIcon ->
            CopyText ""

        InfoThreeContent ->
            CopyText "No. Not at all. It’s easy to feel that you don’t want to add to the NHS’s problems and feel bad for complaining. But the NHS wants people to report problems. They have a saying ‘complaints are a gift to the NHS’ because they show how it can get better. Even though the complaints process can seem hard, it’s worth it to make a difference. Our team can talk to you about how your complaint could help improve services."

        InfoFourName ->
            CopyText "Am I just making a fuss?"

        InfoFourSlug ->
            CopyText ""

        InfoFourIcon ->
            CopyText ""

        InfoFourContent ->
            CopyText "Thinking about complaining for the first time can be really hard. You might be worried that your problem isn’t really important enough. You may feel embarrassed and not want to bother anyone. You might be blaming yourself for what went wrong. Lots of people feel like this. But all problems are important. If you or someone you love have been treated in a way that worries you then it is important enough. Contact us to talk through your situation. We can help you find a path that is right for you."

        InfoFiveName ->
            CopyText "Will I be treated differently if I complain?"

        InfoFiveSlug ->
            CopyText ""

        InfoFiveIcon ->
            CopyText ""

        InfoFiveContent ->
            CopyText "Deciding to take a complaint forward can be scary, especially if you are still receiving treatment. Lots of people worry that complaining will make things worse. The NHS is not allowed to act like that. There are standards that they must follow when they deal with complaints. So if you decide to make a complaint the NHS should still treat you fairly, politely and with respect. Your care and treatment should never be affected as a result. Our team can help you remind the NHS of these responsibilities."

        InfoSixName ->
            CopyText "Is complaining a lot of work?"

        InfoSixSlug ->
            CopyText ""

        InfoSixIcon ->
            CopyText ""

        InfoSixContent ->
            CopyText "Some complaints are simple and some are complicated. Sometimes the process can take a long time. But you are in control. If it becomes too much, you can drop a complaint at any time. You can also turn to our team for support at any time. They can help you make decisions, they can write additional letters to try and speed things up and they can just listen if you are finding it stressful. Many people decide that even though the process is long, the feeling they get when they receive an apology or an explanation is worth it."

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
