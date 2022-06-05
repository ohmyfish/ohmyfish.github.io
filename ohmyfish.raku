#| 使用 Raku 自动创建 Jekyll 文章模版
sub MAIN(:$f) {
    my $file = Date.today ~ '-' ~ $f.subst(/\s+/, '-', :g) ~ '.md';
    chdir "/Users/ohmycloud/blogs/ohmyfish" or die;
    #shell("git fetch origin master");
    chdir "/Users/ohmycloud/blogs/ohmyfish/_posts" or die;
    my $fh = "$file".IO.open(:mode<wo>, :create);

    $fh.say: qq:to/EOF/;
    ---
    layout: post
    title: $f
    categories: [默写旧时光]
    tags: [旧时光]
    ---
    EOF
    shell("nano $file");
}
