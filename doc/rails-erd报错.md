# rails erd 报错

```bash
Loading application environment...
Loading code in search of Active Record models...
Generating Entity-Relationship Diagram for 10 models...
rake aborted!
Saving diagram failed!
Graphviz produced errors. Verify it has support for filetype=pdf, or use filetype=dot.
Original error: Format: "pdf" not recognized. Use one of:
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/bin/ruby_executable_hooks:22:in `eval'
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/bin/ruby_executable_hooks:22:in `<main>'

Caused by:
Error from ["/usr/local/bin/dot", "-q1", "-Tpdf", "-oerd.pdf", "/var/folders/q3/h62nd4f938l9185sdbxqbvm80000gn/T/graphviz.rb20210201-20700-1b2rrad"]:
Format: "pdf" not recognized. Use one of:
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/bin/ruby_executable_hooks:22:in `eval'
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/bin/ruby_executable_hooks:22:in `<main>'
Tasks: TOP => erd => erd:generate
(See full trace by running task with --trace)
```

Uninstall Cairo, Pango and Graphviz (brew uninstall cairo pango graphviz)
Install Cairo, Pango and Graphviz, exactly in this order (brew install cairo pango graphviz)

<https://github.com/voormedia/rails-erd/issues/12>
