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
            CopyText "NHS Complaints Matter"

        AppTitle ->
            CopyText "NHS Complaints Matter"

        CallToActionOne ->
            CallToAction
                { action = DesktopDisplayOnly
                , category = "phone"
                , icon = "phone"
                , href = "tel:03304409000"
                , displayHref = "0330" ++ "\u{00A0}" ++ "440" ++ "\u{00A0}" ++ "9000"
                , promptLong = "Call us"
                , promptShort = "Call"
                }

        CallToActionTwo ->
            CallToAction
                { action = DesktopInteractive
                , category = "page"
                , icon = "book"
                , href = "#/stories"
                , displayHref = ""
                , promptLong = "Stories"
                , promptShort = "Stories"
                }

        CallToActionThree ->
            CallToAction
                { action = DesktopInteractive
                , category = "email"
                , icon = "email"
                , href = "mailto:info@seap.org.uk"
                , displayHref = "info@seap.org.uk"
                , promptLong = "email info@seap.org.uk"
                , promptShort = "email"
                }

        ContentLinkLong ->
            CopyText "Show me the stories"

        ContentLinkMedium ->
            CopyText "Show me the stories"

        ContentLinkShort ->
            CopyText "Stories"

        IconStories ->
            CopyText "book"

        CookieDescription ->
            CopyText "Can we use cookies to help improve this site? We'd like to use Google Analytics cookies to collect and report information on how people use the site. Allowing us to use cookies does not allow us to identify you. For more information please see our 'Privacy Policy' page."

        CookieAccept ->
            CopyText "Accept"

        CookieDecline ->
            CopyText "Decline"

        --Home Page
        HomeReadAboutH2 ->
            CopyText "When you are ill you need to be treated well. Find out how we can help you speak up when things go wrong."

        HomeBannerImageAlt ->
            CopyText ""

        HomeTalkToSomeoneH2 ->
            CopyText "Your rights, your voice, your choice"

        HomeP1 ->
            CopySection
            [ CopyText "When something goes wrong and you feel like the NHS has let you down it can be hard. You have a right to complain and the NHS needs your feedback in order to improve their service. Call seAp for free information about getting your voice heard and other organisations that can help."
            , CopyText "If there are parts of your complaint you cannot do for yourself, you can ask for one of the seAp team to be your advocate. They will listen to you, support you to speak for yourself, and help you to make choices. They can also write letters for you, help you in complaint meetings, and talk to other people for you if necessary."
            ]

        HomeP2 ->
            CopyText "The seAp service is completely confidential, free and independent of the NHS. It can only be used to complain about NHS services, we can’t help with complaints about private health care or social care provided by the local council."

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
            CopyText "Reg. Charity No. 1080679"

        FooterCopyrightLink ->
            CopyWithLink
                { textBefore = "© 2019 - "
                , linkText = "seAp"
                , destination = "https://www.seap.org.uk/"
                , textAfter = ""
                }

        InfoTitleH2 ->
            CopyText "Information to help you"

        InfoLikeMoreInfoLink ->
            CopyText "I'd like some more information"

        InfoLikeOtherInfoLink ->
            CopyText "I'd like some other information"

        InfoOtherInfoLink ->
            CopyText "Other information to help you"

        InfoNotFoundName ->
            CopyText "Not found"

        InfoNotFoundSlug ->
            CopyText "not-found"

        InfoNotFoundIcon ->
            CopyText "question"

        InfoNotFoundContent ->
            CopySection
                [ CopyText "We can't find a page with that title, sorry."
                , CopyText "Please use the 'Other information to help you' page to see if we have the topic you are looking for."
                ]

        InfoOneName ->
            CopyText "What happens when you contact us?"

        InfoOneSlug ->
            CopyText "what-happens-when-you-contact-us"

        InfoOneIcon ->
            CopyText "info"

        InfoOneContent ->
            CopyText "Our trained helpline staff will listen to what has happened to you and offer you advice explain your choices on what you can do next. If you decide you want to complain, you can choose to use a self-help pack or to be contacted by our specialist advocates. They are experienced, trained workers who are there to help and support you through every step of your complaint about an NHS service. They can work with you by phone, by email or by meeting face to face. They will ensure your voice is heard."

        InfoTwoName ->
            CopyText "What can I expect?"

        InfoTwoSlug ->
            CopyText "what-can-i-expect"

        InfoTwoIcon ->
            CopyText "question"

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
            CopyText "am-i-harming-nhs"

        InfoThreeIcon ->
            CopyText "hospital"

        InfoThreeContent ->
            CopyText "No. Not at all. It’s easy to feel that you don’t want to add to the NHS’s problems and feel bad for complaining. But the NHS wants people to report problems. They have a saying ‘complaints are a gift to the NHS’ because they show how it can get better. Even though the complaints process can seem hard, it’s worth it to make a difference. Our team can talk to you about how your complaint could help improve services."

        InfoFourName ->
            CopyText "Am I just making a fuss?"

        InfoFourSlug ->
            CopyText "am-i-making-a-fuss"

        InfoFourIcon ->
            CopyText "users"

        InfoFourContent ->
            CopyText "Thinking about complaining for the first time can be really hard. You might be worried that your problem isn’t really important enough. You may feel embarrassed and not want to bother anyone. You might be blaming yourself for what went wrong. Lots of people feel like this. But all problems are important. If you or someone you love have been treated in a way that worries you then it is important enough. Contact us to talk through your situation. We can help you find a path that is right for you."

        InfoFiveName ->
            CopyText "Will I be treated differently if I complain?"

        InfoFiveSlug ->
            CopyText "will-i-be-treated-differently"

        InfoFiveIcon ->
            CopyText "speech"

        InfoFiveContent ->
            CopyText "Deciding to take a complaint forward can be scary, especially if you are still receiving treatment. Lots of people worry that complaining will make things worse. The NHS is not allowed to act like that. There are standards that they must follow when they deal with complaints. So if you decide to make a complaint the NHS should still treat you fairly, politely and with respect. Your care and treatment should never be affected as a result. Our team can help you remind the NHS of these responsibilities."

        InfoSixName ->
            CopyText "Is complaining a lot of work?"

        InfoSixSlug ->
            CopyText "what-does-complaining-entail"

        InfoSixIcon ->
            CopyText "clipboard"

        InfoSixContent ->
            CopyText "Some complaints are simple and some are complicated. Sometimes the process can take a long time. But you are in control. If it becomes too much, you can drop a complaint at any time. You can also turn to our team for support at any time. They can help you make decisions, they can write additional letters to try and speed things up and they can just listen if you are finding it stressful. Many people decide that even though the process is long, the feeling they get when they receive an apology or an explanation is worth it."

        StoriesTitleH2 ->
            CopyText "Stories"

        StoriesTeaserMoreLink title ->
            CopyText ("Read " ++ title ++ "'s Story")

        StoryCardH3 cardId ->
            CopyText ("Part " ++ String.fromInt cardId ++ " of 4")

        StoryCardStartJourneyPrompt ->
            CopyText "Everyone's story is different, but you will find someone who can help you. Start your journey now."

        StoryNotFoundTitle ->
            CopyText "Coming soon"

        StoryNotFoundTeaser ->
            CopyText "We're working on it"

        StoryNotFoundQuote ->
            CopyText "Story coming soon."

        StoryNotFoundImageAlt ->
            CopyText "Placeholder image"

        StoryNotFoundMessage ->
            CopyText "Check back soon"

        StoryOneTitle ->
            CopyText "Diane"

        StoryOneTeaser ->
            CopyText "Diane felt her complaint about her husband’s treatment was badly handled, but a weight was lifted when she found an advocate."

        StoryOneTeaserImageAlt ->
            CopyText "✨"

        StoryOne1Quote ->
            CopyText "When my husband was first diagnosed with cancer, the treatment was amazing, he was in chemotherapy within 36 hours. But later, an A&E visit went very badly when protocols and procedures were ignored. We put in a complaint to the Health Care Trust, and one sentence in their reply made us so angry."

        StoryOne1ImageAlt ->
            CopyText "✨"

        StoryOne1Message ->
            CopyText "They said my husband’s treatment had been appropriate but we knew the protocol for neutropenic sepsis."

        StoryOne2Quote ->
            CopyText "The leaflet about an advocate came with the reply. I had spoken to my husband. “What do you reckon, it’s a charity, we don’t have to but shall we give it a go?”. There were lots of forms but it was all very smooth. It was actually the week of my husband’s funeral when the worker called to arrange the first meeting, but I thought “I really do want to get on with this”."

        StoryOne2ImageAlt ->
            CopyText "✨"

        StoryOne2Message ->
            CopyText "You feel like you can’t say anything, it's the medical profession, they will close ranks against you."

        StoryOne3Quote ->
            CopyText "I had this real sense of relief that I was going to see somebody and when I met Susan, our advocate, it was so reassuring. She handed me a box of tissues and put together a letter in my name. Later, before the response meeting we met and she went through it with me, asking me which key things I wanted to remember to tell them."

        StoryOne3ImageAlt ->
            CopyText "✨"

        StoryOne3Message ->
            CopyText "You do worry that you might end up with a marker against your name."

        StoryOne4Quote ->
            CopyText "When we got to the response meeting it was amicable. They made big changes to the neutropenic sepsis process. Nurses can administer the intravenous drugs now, not just doctors and there are posters all over the hospital. I just felt like an enormous weight had been lifted - that’s all we’d wanted, them to admit that it wasn’t right."

        StoryOne4ImageAlt ->
            CopyText "✨"

        StoryOne4Message ->
            CopyText "I met someone who said “it’s thanks to you and your husband that I’m alive”."

        StoryTwoTitle ->
            CopyText "Lara"

        StoryTwoTeaser ->
            CopyText "Lots of younger people don’t make formal complaints. Lara’s story shows what could happen if they did."

        StoryTwoTeaserImageAlt ->
            CopyText "✨"

        StoryTwo1Quote ->
            CopyText """I hate hospitals and I hate going to the doctor. I’ve had depression since I was a teenager and it took forever to get any treatment. So I didn’t want to go to A&E. But I had horrendous stomach cramps and I was throwing up, and I couldn’t get my temperature to go down and late one night, my friends convinced me to go."""

        StoryTwo1ImageAlt ->
            CopyText "✨"

        StoryTwo1Message ->
            CopyText ""

        StoryTwo2Quote ->
            CopyText """I knew I’d have to wait. But I didn’t expect the first nurse who saw me to lecture me about drinking and tell me “I’d probably got an STD”. I got angry and told her she shouldn’t talk shit about someone she didn’t know like that and then she cussed at me and left. Eventually I got seen by a Doctor and it turned out I had appendicitis."""

        StoryTwo2ImageAlt ->
            CopyText "✨"

        StoryTwo2Message ->
            CopyText "I forgot about the first bit of the visit for a while."

        StoryTwo3Quote ->
            CopyText """When I was recovering I started chatting online about how awful it was, and asking if people thought it was because I was female, young and black that I got treated like that. I wasn’t going to do anything formal. But my friend Alisha’s mum worked in a different A&E and basically Alisha spent ages explaining why I should try calling the advocacy and complaints service."""

        StoryTwo3ImageAlt ->
            CopyText "✨"

        StoryTwo3Message ->
            CopyText ""

        StoryTwo4Quote ->
            CopyText """I had to phone up for forms to fill in. And I was pretty stressed about getting them right - so I was glad Alisha knew enough to help me. It took ages to hear anything back, but when I did they told me they were adding new training on diversity and talking about health with young people. That made me feel good."""

        StoryTwo4ImageAlt ->
            CopyText "✨"

        StoryTwo4Message ->
            CopyText "It felt like my effort might make a difference for other people."

        StoryThreeTitle ->
            CopyText "Amy"

        StoryThreeTeaser ->
            CopyText "Amy was angry with how she was treated whilst in psychiatric care but didn’t know what would make it better until she worked with an advocate."

        StoryThreeTeaserImageAlt ->
            CopyText "✨"

        StoryThree1Quote ->
            CopyText """I was very angry about what happened when I was in psychiatric care. You don’t need to know the details, but no one should ever be treated like that. And I knew about advocates, because there was one in the hospital, and she gave me information about who could help me when I left."""

        StoryThree1ImageAlt ->
            CopyText "✨"

        StoryThree1Message ->
            CopyText ""

        StoryThree2Quote ->
            CopyText """I didn’t know what I wanted. I didn’t know what would make it better. It was easy for me to think “what’s the point, nobody listens, nothing changes“. But I didn’t want to let it go, so I phoned up and filled in the forms. And when I finally met Sam, my advocate, I quickly knew she was the right person to help me."""

        StoryThree2ImageAlt ->
            CopyText "✨"

        StoryThree2Message ->
            CopyText "I’m not shy about complaining but I needed help navigating the system."

        StoryThree3Quote ->
            CopyText """I never once felt I was wasting her time. She listened. She believed me. And she did all the things she said she would. She kept redrafting a letter until I was 100% happy with it. I was sure that if I’d just written to the trust I would have just been dismissed. This way, I knew at the very least it was being logged."""

        StoryThree3ImageAlt ->
            CopyText "✨"

        StoryThree3Message ->
            CopyText "Advocates seem to have power."

        StoryThree4Quote ->
            CopyText """In the end, after months, Sam managed to get a meeting set up. I got an apology. And it turns out that’s what I’d wanted, an apology. Being believed. I didn’t know that was what I wanted at the beginning, but it felt good to get it. It meant I could move on."""

        StoryThree4ImageAlt ->
            CopyText "✨"

        StoryThree4Message ->
            CopyText ""

        StoryFourTitle ->
            CopyText "Lucille"

        StoryFourTeaser ->
            CopyText "Lucille had never needed to complain about her GP surgery, but when her new medication was messed about she had to speak up."

        StoryFourTeaserImageAlt ->
            CopyText "✨"

        StoryFour1Quote ->
            CopyText "My surgery is in a little village, I’ve been with them for 9 years and had never had to make a complaint or get cross with them. But I won’t let the status quo stand when things are unfair. So when I was messed around getting the new medication I needed to go about my life normally I did complain."

        StoryFour1ImageAlt ->
            CopyText "✨"

        StoryFour1Message ->
            CopyText ""

        StoryFour2Quote ->
            CopyText "I wanted to know when my medication would be ready, but they have a policy where you can’t phone them. So I left messages. But they said they were too busy to listen to them - it felt like they were incompetent. I went in and I did get the tablets, but the staff member was quite rude. I told them I wanted an explanation from the practice manager or I would complain."

        StoryFour2ImageAlt ->
            CopyText "✨"

        StoryFour2Message ->
            CopyText "I think they were snowed under and the GP’s didn’t know what was going on."

        StoryFour3Quote ->
            CopyText "I heard nothing from the practice manager. I knew about advocates from leaflets so I called and started the process of forms and agreements. They told me it would be quite a while before someone was free to help me, but I could call their contact centre while I was waiting."

        StoryFour3ImageAlt ->
            CopyText "✨"

        StoryFour3Message ->
            CopyText "They were friendly and helpful."

        StoryFour4Quote ->
            CopyText "The advocate wrote 3 or 4 letters for me, and it went on for about six months. We got a meeting where I could talk about what happened and how it felt. I think it was just mismanagement. I think there are more staff and the pressure has been taken off a bit now."

        StoryFour4ImageAlt ->
            CopyText "✨"

        StoryFour4Message ->
            CopyText "A meeting is a good way to move on. I can keep using my little village surgery."



relatedInfo : Int -> List Int
relatedInfo storyId =
    case storyId of
        1 ->
            [ 1, 6 ]

        2 ->
            [ 2, 5 ]

        3 ->
            [ 1, 4 ]

        4 ->
            [ 2, 5 ]

        _ ->
            [ 1 ]
