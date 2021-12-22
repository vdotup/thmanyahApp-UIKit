//
//  Data.swift
//  thmanyahApp-UIKit
//
//  Created by Abdurrahman Alfudeghi on 22/12/2021.
//

import Foundation

let landing_subtitle = "رسالتنا تغيير ثقافة الصحافة العربية"
let landing_description = "شكّلت العقود الماضية صورةً باهتة مظلمة لدى المواطن العربي عن “مفهوم الصحافة”. نعتقد في ثمانية أنّ الصحافة تساهم في بناء الأوطان، وتزيد من المعرفة للإنسان. نؤمن أنّ المواطن العربي ينقصه الوصول إلى المعرفة التي هي كل ما يحتاجه الإنسان لاتخاذ قرارات تحسّن جودة حياته، وتعزز من مساهمته في ازدهار مجتمعه ووطنه."

let production_title = "أكبر منصة لإنتاج الأفلام السعودية"
let production_description = "تخصصت ثمانية في صناعة الأفلام الوثائقية إيمانًا منها بأهميتها على المدى القصير والبعيد. ونؤمن أن هناك الملايين من العرب الذين يشاركونا ذات الإيمان وذات الاهتمام. حتى بتنا اليوم أكبر منتج للأفلام الوثائقية في السعودية، وواحدة من أبرز الشركات في هذا المجال عربيًا. ننتج عشرات الأفلام بين أفلام خاصة بنا،أوأفلام نتشارك فيها مع عملاءنا. فخلقنا سوقًا ضخمًا يلبي حاجة المشاهدين والشركات والجهات في شتّي بقاع الوطن العربي."

let partners_title = "شبكة البودكاست الأعلى انتشارًا عربيًا"
let partners_description = "بدأنا ثمانية ببرنامج يتيم، واليوم باتت إذاعة ثمانية تملك كوكبة من أميز برامج البودكاست عربيًا في مجالات متنوعة. فننتج اليوم برامج بودكاست خاصة بثمانية، وبرامج بودكاست لعملاءنا الذين يستفيدون من خبراتنا الطويلة في هذا المجال."

let copyrights = "2021 © جميع الحقوق محفوظة لشركة ثمانية للنشر والتوزيع"

let stats: [StatModel] = [
    StatModel(title: "10", subtitle: "جوائز محلية وإقليمية"),
    StatModel(title: "10", subtitle: "برامج إذاعية"),
    StatModel(title: "+91", subtitle: "فلمًا وثائقيًا"),
    StatModel(title: "600+", subtitle: "ألف متابع"),
    StatModel(title: "+30", subtitle: "مليون مشاهدة على الأفلام"),
    StatModel(title: "+80", subtitle: "مليون استماع"),
    StatModel(title: "+550", subtitle: "ألف تحميل أسبوعيًا"),
    StatModel(title: "21", subtitle: "حلقة جديدة شهريًا")
]

enum Links: String {
    case website = "https://thmanyah.com/"
    case about = "https://company.thmanyah.com/about"
    case films = "https://thmanyah.com/films/"
    case handbook = "https://company.thmanyah.com/handbook"
    case jobs = "https://company.thmanyah.com/jobs"
    case blog = "https://company.thmanyah.com/blog"
    case mediaKit = "https://company.thmanyah.com/media-kit"
    case visualIdentity = "https://company.thmanyah.com/visual-identity"
    case privacyPolicy = "https://company.thmanyah.com/privacy-policy"
    case contact = "https://company.thmanyah.com/contact"
    case faq = "https://company.thmanyah.com/faq"
    case linkedIn = "https://linkedin.com/company/thmanyah"
    case twitter = "https://twitter.com/thmanyah"
    case facebook = "https://facebook.com/Thmanyah"
    case instagram = "https://instagram.com/thmanyah"
    case youtube = "https://youtube.com/channel/UCQPalfEYxVLs8nEB4LutApQ"
    case asFeaturedInMedia = "https://company.thmanyah.com/as-featured-in-media"
    case creative = "https://company.thmanyah.com/creative"
}

let sideBarItems: [SideBarItemModel] = [
    SideBarItemModel(title: "عن الشركة",     link: .about),
    SideBarItemModel(title: "الدستور",       link: .handbook),
    SideBarItemModel(title: "في الإعلام",      link: .asFeaturedInMedia),
    SideBarItemModel(title: "ثمانية الخلاقة", link: .creative),
    SideBarItemModel(title: "الوظائف",       link: .jobs),
    SideBarItemModel(title: "المدونة",       link: .blog),
    SideBarItemModel(title: "اتصل بنا",      link: .contact)
]
