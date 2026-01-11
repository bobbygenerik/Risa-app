.class public final Lᐧᵢ/ˑٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˉʿ:Ljava/util/regex/Pattern;

.field public static final ﾞʻ:[C


# instance fields
.field public final ʼˎ:Lᵢ/ﹳٴ;

.field public ʽ:Ljava/lang/String;

.field public final ˆʾ:Lﹶﾞ/ⁱי;

.field public ˈ:Lˊﹶ/ⁱˊ;

.field public final ˑﹳ:Landroidx/leanback/widget/ʻٴ;

.field public ٴﹶ:Lˎᵢ/ʾˋ;

.field public ᵎﹶ:Lˎᵢ/ﹳᐧ;

.field public final ᵔᵢ:Z

.field public final ⁱˊ:Lˎᵢ/ʼᐧ;

.field public final ﹳٴ:Ljava/lang/String;

.field public final ﾞᴵ:Lʼٴ/ʼˎ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lᐧᵢ/ˑٴ;->ﾞʻ:[C

    const-string v0, "(.*/)?(\\.|%2e|%2E){1,2}(/.*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lᐧᵢ/ˑٴ;->ˉʿ:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lˎᵢ/ʼᐧ;Ljava/lang/String;Lˎᵢ/ˉˆ;Lˎᵢ/ﹳᐧ;ZZZ)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᐧᵢ/ˑٴ;->ﹳٴ:Ljava/lang/String;

    iput-object p2, p0, Lᐧᵢ/ˑٴ;->ⁱˊ:Lˎᵢ/ʼᐧ;

    iput-object p3, p0, Lᐧᵢ/ˑٴ;->ʽ:Ljava/lang/String;

    new-instance p1, Landroidx/leanback/widget/ʻٴ;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Landroidx/leanback/widget/ʻٴ;-><init>(I)V

    iput-object p1, p0, Lᐧᵢ/ˑٴ;->ˑﹳ:Landroidx/leanback/widget/ʻٴ;

    iput-object p5, p0, Lᐧᵢ/ˑٴ;->ᵎﹶ:Lˎᵢ/ﹳᐧ;

    iput-boolean p6, p0, Lᐧᵢ/ˑٴ;->ᵔᵢ:Z

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lˎᵢ/ˉˆ;->ˈ()Lʼٴ/ʼˎ;

    move-result-object p1

    iput-object p1, p0, Lᐧᵢ/ˑٴ;->ﾞᴵ:Lʼٴ/ʼˎ;

    goto :goto_0

    :cond_0
    new-instance p1, Lʼٴ/ʼˎ;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lʼٴ/ʼˎ;-><init>(I)V

    iput-object p1, p0, Lᐧᵢ/ˑٴ;->ﾞᴵ:Lʼٴ/ʼˎ;

    :goto_0
    if-eqz p7, :cond_1

    new-instance p1, Lﹶﾞ/ⁱי;

    const/16 p2, 0x1b

    invoke-direct {p1, p2}, Lﹶﾞ/ⁱי;-><init>(I)V

    iput-object p1, p0, Lᐧᵢ/ˑٴ;->ˆʾ:Lﹶﾞ/ⁱי;

    return-void

    :cond_1
    if-eqz p8, :cond_3

    new-instance p1, Lᵢ/ﹳٴ;

    const/16 p2, 0xb

    invoke-direct {p1, p2}, Lᵢ/ﹳٴ;-><init>(I)V

    iput-object p1, p0, Lᐧᵢ/ˑٴ;->ʼˎ:Lᵢ/ﹳٴ;

    sget-object p2, Lˎᵢ/ˏי;->ﾞᴵ:Lˎᵢ/ﹳᐧ;

    iget-object p3, p2, Lˎᵢ/ﹳᐧ;->ⁱˊ:Ljava/lang/String;

    const-string p4, "multipart"

    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    iput-object p2, p1, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "multipart != "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    return-void
.end method


# virtual methods
.method public final ʽ(Lˎᵢ/ˉˆ;Lˎᵢ/ʾˋ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lᐧᵢ/ˑٴ;->ʼˎ:Lᵢ/ﹳٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Content-Type"

    invoke-virtual {p1, v1}, Lˎᵢ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Content-Length"

    invoke-virtual {p1, v1}, Lˎᵢ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lˎᵢ/יـ;

    invoke-direct {v1, p1, p2}, Lˎᵢ/יـ;-><init>(Lˎᵢ/ˉˆ;Lˎᵢ/ʾˋ;)V

    iget-object p1, v0, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected header: Content-Length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected header: Content-Type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ˈ(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    iget-object v0, p0, Lᐧᵢ/ˑٴ;->ʽ:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lᐧᵢ/ˑٴ;->ⁱˊ:Lˎᵢ/ʼᐧ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v3, Lˊﹶ/ⁱˊ;

    invoke-direct {v3}, Lˊﹶ/ⁱˊ;-><init>()V

    invoke-virtual {v3, v2, v0}, Lˊﹶ/ⁱˊ;->ᵎﹶ(Lˎᵢ/ʼᐧ;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, v1

    :goto_0
    iput-object v3, p0, Lᐧᵢ/ˑٴ;->ˈ:Lˊﹶ/ⁱˊ;

    if-eqz v3, :cond_0

    iput-object v1, p0, Lᐧᵢ/ˑٴ;->ʽ:Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Malformed URL. Base: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", Relative: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lᐧᵢ/ˑٴ;->ʽ:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    const/4 v0, 0x0

    if-eqz p3, :cond_4

    iget-object p3, p0, Lᐧᵢ/ˑٴ;->ˈ:Lˊﹶ/ⁱˊ;

    iget-object v2, p3, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p3, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    :cond_2
    iget-object v2, p3, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    const-string v3, " \"\'<>#&="

    const/16 v4, 0x53

    invoke-static {p1, v0, v0, v3, v4}, Lʿˉ/ﹳٴ;->ﹳٴ(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p3, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    invoke-static {p2, v0, v0, v3, v4}, Lʿˉ/ﹳٴ;->ﹳٴ(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    iget-object p3, p0, Lᐧᵢ/ˑٴ;->ˈ:Lˊﹶ/ⁱˊ;

    iget-object v2, p3, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p3, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    :cond_5
    iget-object v2, p3, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    const-string v3, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    const/16 v4, 0x5b

    invoke-static {p1, v0, v0, v3, v4}, Lʿˉ/ﹳٴ;->ﹳٴ(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p3, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p2, :cond_6

    invoke-static {p2, v0, v0, v3, v4}, Lʿˉ/ﹳٴ;->ﹳٴ(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ⁱˊ(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    const-string v0, "Content-Type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object p1, Lˎᵢ/ﹳᐧ;->ˈ:Lﹶˑ/ʼˎ;

    invoke-static {p2}, Lˈˊ/ᵔʾ;->ﾞʻ(Ljava/lang/String;)Lˎᵢ/ﹳᐧ;

    move-result-object p1

    iput-object p1, p0, Lᐧᵢ/ˑٴ;->ᵎﹶ:Lˎᵢ/ﹳᐧ;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string v0, "Malformed content type: "

    invoke-static {v0, p2}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_0
    iget-object v0, p0, Lᐧᵢ/ˑٴ;->ﾞᴵ:Lʼٴ/ʼˎ;

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ᵔﹳ(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lˈˊ/ᵔʾ;->ˈ(Lʼٴ/ʼˎ;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0, p1, p2}, Lʼٴ/ʼˎ;->ﾞᴵ(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final ﹳٴ(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    .prologue
    iget-object v0, p0, Lᐧᵢ/ˑٴ;->ˆʾ:Lﹶﾞ/ⁱי;

    if-eqz p3, :cond_0

    iget-object p3, v0, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast p3, Ljava/util/ArrayList;

    const/4 v8, 0x0

    const/16 v9, 0x53

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, " !\"#$&\'()+,/:;<=>?@[\\]^`{|}~"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lʿˉ/ﹳٴ;->ⁱˊ(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Lﹶﾞ/ⁱי;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/16 v8, 0x53

    const/4 v1, 0x0

    const-string v3, " !\"#$&\'()+,/:;<=>?@[\\]^`{|}~"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v8}, Lʿˉ/ﹳٴ;->ⁱˊ(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    move-object v1, p1

    move-object p1, p2

    iget-object p2, v0, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    const/4 v8, 0x0

    const/16 v9, 0x5b

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, " !\"#$&\'()+,/:;<=>?@[\\]^`{|}~"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lʿˉ/ﹳٴ;->ⁱˊ(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, v0, Lﹶﾞ/ⁱי;->ʽʽ:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    const-string v4, " !\"#$&\'()+,/:;<=>?@[\\]^`{|}~"

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lʿˉ/ﹳٴ;->ⁱˊ(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
