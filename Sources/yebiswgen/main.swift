import Commander

let main = Group {
    $0.command("generate", {
        print("will generate skelthons")
    })
    
    $0.command("add", Argument<String>("name", description: "ABTestName"), VariadicOption<String>("pattern"), description: "add ABTest and its patterns(optional)", { (name, patterns) in
        print("add \(name), patterns below")
        patterns.forEach({ pattern in
            print(pattern)
        })
    })
    
    $0.command("list", description: "show a list of existing ABTests", {
        print("will show a existing ABTests list")
    })
    
    $0.command("adopt", Argument<String>("name", description: "ABTestName"), Argument<String>("pattern", description: "ABTest pattern to adopt"), description: "remove a ABTest adopting to a pattern" , { (name, pattern) in
        print("adopt to pattern: \(pattern) of \(name), and remove this ABTest")
    })
}

main.run()
