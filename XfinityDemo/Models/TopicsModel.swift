//
//  TopicsModel.swift
//  SimsonsViewer
//
//  Created by Sreekanth Iragam Reddy on 7/2/18.
//  Copyright © 2018 Sreekanth Iragam Reddy. All rights reserved.
//

import Foundation

struct Topics : Codable {
    let imageHeight : Int?
    let definitionURL : String?
    let entity : String?
    let abstractText : String?
    let definition : String?
    let type : String?
    let heading : String?
    let abstractSource : String?
    let abstract : String?
    let answerType : String?
    let abstractURL : String?
    let results : [String]?
    let image : String?
    let definitionSource : String?
    let redirect : String?
    let meta : Meta?
    let answer : String?
    let imageWidth : Int?
    let imageIsLogo : Int?
    let infobox : String?
    let relatedTopics : [RelatedTopics]?

    enum CodingKeys: String, CodingKey {

        case imageHeight = "ImageHeight"
        case definitionURL = "DefinitionURL"
        case entity = "Entity"
        case abstractText = "AbstractText"
        case definition = "Definition"
        case type = "Type"
        case heading = "Heading"
        case abstractSource = "AbstractSource"
        case abstract = "Abstract"
        case answerType = "AnswerType"
        case abstractURL = "AbstractURL"
        case results = "Results"
        case image = "Image"
        case definitionSource = "DefinitionSource"
        case redirect = "Redirect"
        case meta = "meta"
        case answer = "Answer"
        case imageWidth = "ImageWidth"
        case imageIsLogo = "ImageIsLogo"
        case infobox = "Infobox"
        case relatedTopics = "RelatedTopics"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        imageHeight = try values.decodeIfPresent(Int.self, forKey: .imageHeight)
        definitionURL = try values.decodeIfPresent(String.self, forKey: .definitionURL)
        entity = try values.decodeIfPresent(String.self, forKey: .entity)
        abstractText = try values.decodeIfPresent(String.self, forKey: .abstractText)
        definition = try values.decodeIfPresent(String.self, forKey: .definition)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        heading = try values.decodeIfPresent(String.self, forKey: .heading)
        abstractSource = try values.decodeIfPresent(String.self, forKey: .abstractSource)
        abstract = try values.decodeIfPresent(String.self, forKey: .abstract)
        answerType = try values.decodeIfPresent(String.self, forKey: .answerType)
        abstractURL = try values.decodeIfPresent(String.self, forKey: .abstractURL)
        results = try values.decodeIfPresent([String].self, forKey: .results)
        image = try values.decodeIfPresent(String.self, forKey: .image)
        definitionSource = try values.decodeIfPresent(String.self, forKey: .definitionSource)
        redirect = try values.decodeIfPresent(String.self, forKey: .redirect)
        meta = try values.decodeIfPresent(Meta.self, forKey: .meta)
        answer = try values.decodeIfPresent(String.self, forKey: .answer)
        imageWidth = try values.decodeIfPresent(Int.self, forKey: .imageWidth)
        imageIsLogo = try values.decodeIfPresent(Int.self, forKey: .imageIsLogo)
        infobox = try values.decodeIfPresent(String.self, forKey: .infobox)
        relatedTopics = try values.decodeIfPresent([RelatedTopics].self, forKey: .relatedTopics)
    }

    // MEta has Maintaner, Developer, Src_options
    struct Meta : Codable {
        let id : String?
        let topic : [String]?
        let production_state : String?
        let js_callback_name : String?
        let example_query : String?
        let src_url : String?
        let unsafe : Int?
        let live_date : String?
        let developer : [Developer]?
        let src_id : Int?
        let status : String?
        let producer : String?
        let blockgroup : String?
        let src_name : String?
        let is_stackexchange : String?
        let src_domain : String?
        let name : String?
        let tab : String?
        let signal_from : String?
        let description : String?
        let attribution : String?
        let designer : String?
        let perl_module : String?
        let created_date : String?
        let dev_milestone : String?
        let maintainer : Maintainer?
        let dev_date : String?
        let repo : String?
        let src_options : Src_options?

        enum CodingKeys: String, CodingKey {

            case id = "id"
            case topic = "topic"
            case production_state = "production_state"
            case js_callback_name = "js_callback_name"
            case example_query = "example_query"
            case src_url = "src_url"
            case unsafe = "unsafe"
            case live_date = "live_date"
            case developer = "developer"
            case src_id = "src_id"
            case status = "status"
            case producer = "producer"
            case blockgroup = "blockgroup"
            case src_name = "src_name"
            case is_stackexchange = "is_stackexchange"
            case src_domain = "src_domain"
            case name = "name"
            case tab = "tab"
            case signal_from = "signal_from"
            case description = "description"
            case attribution = "attribution"
            case designer = "designer"
            case perl_module = "perl_module"
            case created_date = "created_date"
            case dev_milestone = "dev_milestone"
            case maintainer = "maintainer"
            case dev_date = "dev_date"
            case repo = "repo"
            case src_options = "src_options"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            id = try values.decodeIfPresent(String.self, forKey: .id)
            topic = try values.decodeIfPresent([String].self, forKey: .topic)
            production_state = try values.decodeIfPresent(String.self, forKey: .production_state)
            js_callback_name = try values.decodeIfPresent(String.self, forKey: .js_callback_name)
            example_query = try values.decodeIfPresent(String.self, forKey: .example_query)
            src_url = try values.decodeIfPresent(String.self, forKey: .src_url)
            unsafe = try values.decodeIfPresent(Int.self, forKey: .unsafe)
            live_date = try values.decodeIfPresent(String.self, forKey: .live_date)
            developer = try values.decodeIfPresent([Developer].self, forKey: .developer)
            src_id = try values.decodeIfPresent(Int.self, forKey: .src_id)
            status = try values.decodeIfPresent(String.self, forKey: .status)
            producer = try values.decodeIfPresent(String.self, forKey: .producer)
            blockgroup = try values.decodeIfPresent(String.self, forKey: .blockgroup)
            src_name = try values.decodeIfPresent(String.self, forKey: .src_name)
            is_stackexchange = try values.decodeIfPresent(String.self, forKey: .is_stackexchange)
            src_domain = try values.decodeIfPresent(String.self, forKey: .src_domain)
            name = try values.decodeIfPresent(String.self, forKey: .name)
            tab = try values.decodeIfPresent(String.self, forKey: .tab)
            signal_from = try values.decodeIfPresent(String.self, forKey: .signal_from)
            description = try values.decodeIfPresent(String.self, forKey: .description)
            attribution = try values.decodeIfPresent(String.self, forKey: .attribution)
            designer = try values.decodeIfPresent(String.self, forKey: .designer)
            perl_module = try values.decodeIfPresent(String.self, forKey: .perl_module)
            created_date = try values.decodeIfPresent(String.self, forKey: .created_date)
            dev_milestone = try values.decodeIfPresent(String.self, forKey: .dev_milestone)
            maintainer = try values.decodeIfPresent(Maintainer.self, forKey: .maintainer)
            dev_date = try values.decodeIfPresent(String.self, forKey: .dev_date)
            repo = try values.decodeIfPresent(String.self, forKey: .repo)
            src_options = try values.decodeIfPresent(Src_options.self, forKey: .src_options)
        }

        struct Maintainer : Codable {
            let github : String?

            enum CodingKeys: String, CodingKey {

                case github = "github"
            }

            init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                github = try values.decodeIfPresent(String.self, forKey: .github)
            }

        }

        struct Src_options : Codable {
            let skip_abstract_paren : Int?
            let is_wikipedia : Int?
            let directory : String?
            let skip_icon : Int?
            let skip_qr : String?
            let source_skip : String?
            let skip_end : String?
            let language : String?
            let skip_image_name : Int?
            let skip_abstract : Int?
            let is_mediawiki : Int?
            let src_info : String?
            let is_fanon : Int?
            let min_abstract_length : String?

            enum CodingKeys: String, CodingKey {

                case skip_abstract_paren = "skip_abstract_paren"
                case is_wikipedia = "is_wikipedia"
                case directory = "directory"
                case skip_icon = "skip_icon"
                case skip_qr = "skip_qr"
                case source_skip = "source_skip"
                case skip_end = "skip_end"
                case language = "language"
                case skip_image_name = "skip_image_name"
                case skip_abstract = "skip_abstract"
                case is_mediawiki = "is_mediawiki"
                case src_info = "src_info"
                case is_fanon = "is_fanon"
                case min_abstract_length = "min_abstract_length"
            }

            init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                skip_abstract_paren = try values.decodeIfPresent(Int.self, forKey: .skip_abstract_paren)
                is_wikipedia = try values.decodeIfPresent(Int.self, forKey: .is_wikipedia)
                directory = try values.decodeIfPresent(String.self, forKey: .directory)
                skip_icon = try values.decodeIfPresent(Int.self, forKey: .skip_icon)
                skip_qr = try values.decodeIfPresent(String.self, forKey: .skip_qr)
                source_skip = try values.decodeIfPresent(String.self, forKey: .source_skip)
                skip_end = try values.decodeIfPresent(String.self, forKey: .skip_end)
                language = try values.decodeIfPresent(String.self, forKey: .language)
                skip_image_name = try values.decodeIfPresent(Int.self, forKey: .skip_image_name)
                skip_abstract = try values.decodeIfPresent(Int.self, forKey: .skip_abstract)
                is_mediawiki = try values.decodeIfPresent(Int.self, forKey: .is_mediawiki)
                src_info = try values.decodeIfPresent(String.self, forKey: .src_info)
                is_fanon = try values.decodeIfPresent(Int.self, forKey: .is_fanon)
                min_abstract_length = try values.decodeIfPresent(String.self, forKey: .min_abstract_length)
            }

        }

        struct Developer : Codable {
            let name : String?
            let type : String?
            let url : String?

            enum CodingKeys: String, CodingKey {

                case name = "name"
                case type = "type"
                case url = "url"
            }

            init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                name = try values.decodeIfPresent(String.self, forKey: .name)
                type = try values.decodeIfPresent(String.self, forKey: .type)
                url = try values.decodeIfPresent(String.self, forKey: .url)
            }

        }
    }// End of META

    //RelatedTopics  has Icon
    struct RelatedTopics : Codable {
        let text : String?
        let result : String?
        let icon : Icon?
        let firstURL : String?

        enum CodingKeys: String, CodingKey {

            case text = "Text"
            case result = "Result"
            case icon = "Icon"
            case firstURL = "FirstURL"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            text = try values.decodeIfPresent(String.self, forKey: .text)
            result = try values.decodeIfPresent(String.self, forKey: .result)
            icon = try values.decodeIfPresent(Icon.self, forKey: .icon)
            firstURL = try values.decodeIfPresent(String.self, forKey: .firstURL)
        }

        struct Icon : Codable {
            let width : String?
            let uRL : String?
            let height : String?

            enum CodingKeys: String, CodingKey {

                case width = "Width"
                case uRL = "URL"
                case height = "Height"
            }

            init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                width = try values.decodeIfPresent(String.self, forKey: .width)
                uRL = try values.decodeIfPresent(String.self, forKey: .uRL)
                height = try values.decodeIfPresent(String.self, forKey: .height)
            }

        }

    }

}



