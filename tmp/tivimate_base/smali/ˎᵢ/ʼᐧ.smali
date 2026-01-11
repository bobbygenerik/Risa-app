.class public final Lˎᵢ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Ljava/lang/String;

.field public final ʽ:Ljava/lang/String;

.field public final ˈ:Ljava/lang/String;

.field public final ˑﹳ:I

.field public final ᵎﹶ:Ljava/util/List;

.field public final ᵔᵢ:Ljava/lang/String;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Ljava/lang/String;

.field public final ﾞᴵ:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎᵢ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    iput-object p2, p0, Lˎᵢ/ʼᐧ;->ⁱˊ:Ljava/lang/String;

    iput-object p3, p0, Lˎᵢ/ʼᐧ;->ʽ:Ljava/lang/String;

    iput-object p4, p0, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    iput p5, p0, Lˎᵢ/ʼᐧ;->ˑﹳ:I

    iput-object p6, p0, Lˎᵢ/ʼᐧ;->ﾞᴵ:Ljava/util/ArrayList;

    iput-object p7, p0, Lˎᵢ/ʼᐧ;->ᵎﹶ:Ljava/util/List;

    iput-object p8, p0, Lˎᵢ/ʼᐧ;->ᵔᵢ:Ljava/lang/String;

    iput-object p9, p0, Lˎᵢ/ʼᐧ;->ʼˎ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Lˎᵢ/ʼᐧ;

    if-eqz v0, :cond_0

    check-cast p1, Lˎᵢ/ʼᐧ;

    iget-object p1, p1, Lˎᵢ/ʼᐧ;->ʼˎ:Ljava/lang/String;

    iget-object v0, p0, Lˎᵢ/ʼᐧ;->ʼˎ:Ljava/lang/String;

    invoke-static {p1, v0}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lˎᵢ/ʼᐧ;->ʼˎ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lˎᵢ/ʼᐧ;->ʼˎ:Ljava/lang/String;

    return-object v0
.end method

.method public final ʽ()Ljava/util/ArrayList;
    .locals 6

    .prologue
    iget-object v0, p0, Lˎᵢ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const/4 v1, 0x4

    iget-object v2, p0, Lˎᵢ/ʼᐧ;->ʼˎ:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-static {v2, v3, v0, v1}, Lﹶˑ/ˆʾ;->ˑʼ(Ljava/lang/CharSequence;CII)I

    move-result v0

    const-string v1, "?#"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v0, v4, v2, v1}, Lⁱᐧ/ʽ;->ʽ(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2, v3, v0, v1}, Lⁱᐧ/ʽ;->ˈ(Ljava/lang/String;CII)I

    move-result v5

    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v5

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method public final ˈ()Ljava/lang/String;
    .locals 4

    .prologue
    iget-object v0, p0, Lˎᵢ/ʼᐧ;->ᵎﹶ:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x6

    iget-object v2, p0, Lˎᵢ/ʼᐧ;->ʼˎ:Ljava/lang/String;

    const/16 v3, 0x3f

    invoke-static {v2, v3, v0, v1}, Lﹶˑ/ˆʾ;->ˑʼ(Ljava/lang/CharSequence;CII)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x23

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v1, v0, v3}, Lⁱᐧ/ʽ;->ˈ(Ljava/lang/String;CII)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˑﹳ()Ljava/lang/String;
    .locals 4

    .prologue
    iget-object v0, p0, Lˎᵢ/ʼᐧ;->ⁱˊ:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lˎᵢ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const-string v1, ":@"

    iget-object v2, p0, Lˎᵢ/ʼᐧ;->ʼˎ:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v3, v2, v1}, Lⁱᐧ/ʽ;->ʽ(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ᵎﹶ()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v0, "/..."

    :try_start_0
    new-instance v1, Lˊﹶ/ⁱˊ;

    invoke-direct {v1}, Lˊﹶ/ⁱˊ;-><init>()V

    invoke-virtual {v1, p0, v0}, Lˊﹶ/ⁱˊ;->ᵎﹶ(Lˎᵢ/ʼᐧ;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, ""

    const/4 v2, 0x0

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/16 v4, 0x7b

    invoke-static {v0, v2, v2, v3, v4}, Lʿˉ/ﹳٴ;->ﹳٴ(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lˊﹶ/ⁱˊ;->ˈ:Ljava/lang/Object;

    invoke-static {v0, v2, v2, v3, v4}, Lʿˉ/ﹳٴ;->ﹳٴ(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lˊﹶ/ⁱˊ;->ˑﹳ:Ljava/io/Serializable;

    invoke-virtual {v1}, Lˊﹶ/ⁱˊ;->ⁱˊ()Lˎᵢ/ʼᐧ;

    move-result-object v0

    iget-object v0, v0, Lˎᵢ/ʼᐧ;->ʼˎ:Ljava/lang/String;

    return-object v0
.end method

.method public final ᵔᵢ()Ljava/net/URI;
    .locals 11

    .prologue
    new-instance v0, Lˊﹶ/ⁱˊ;

    invoke-direct {v0}, Lˊﹶ/ⁱˊ;-><init>()V

    iget-object v1, v0, Lˊﹶ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lˎᵢ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    iput-object v2, v0, Lˊﹶ/ⁱˊ;->ʽ:Ljava/lang/Object;

    invoke-virtual {p0}, Lˎᵢ/ʼᐧ;->ˑﹳ()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lˊﹶ/ⁱˊ;->ˈ:Ljava/lang/Object;

    invoke-virtual {p0}, Lˎᵢ/ʼᐧ;->ﹳٴ()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lˊﹶ/ⁱˊ;->ˑﹳ:Ljava/io/Serializable;

    iget-object v3, p0, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    iput-object v3, v0, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    const/16 v2, 0x50

    goto :goto_0

    :cond_0
    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1bb

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iget v3, p0, Lˎᵢ/ʼᐧ;->ˑﹳ:I

    if-eq v3, v2, :cond_2

    move v4, v3

    :cond_2
    iput v4, v0, Lˊﹶ/ⁱˊ;->ⁱˊ:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lˎᵢ/ʼᐧ;->ʽ()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lˎᵢ/ʼᐧ;->ˈ()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    const-string v5, " \"\'<>#"

    const/16 v6, 0x53

    invoke-static {v2, v3, v3, v5, v6}, Lʿˉ/ﹳٴ;->ﹳٴ(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lˊﹶ/ⁱˊ;->ᵔᵢ(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v4

    :goto_1
    iput-object v2, v0, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    iget-object v2, p0, Lˎᵢ/ʼᐧ;->ᵔᵢ:Ljava/lang/String;

    const/16 v5, 0x23

    if-nez v2, :cond_4

    move-object v2, v4

    goto :goto_2

    :cond_4
    const/4 v2, 0x6

    iget-object v6, p0, Lˎᵢ/ʼᐧ;->ʼˎ:Ljava/lang/String;

    invoke-static {v6, v5, v3, v2}, Lﹶˑ/ˆʾ;->ˑʼ(Ljava/lang/CharSequence;CII)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    iput-object v2, v0, Lˊﹶ/ⁱˊ;->ʼˎ:Ljava/lang/Object;

    iget-object v2, v0, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v6, ""

    if-eqz v2, :cond_5

    const-string v7, "[\"<>^`{|}]"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    move-object v2, v4

    :goto_3
    iput-object v2, v0, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v7, v3

    :goto_4
    if-ge v7, v2, :cond_6

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "[]"

    const/16 v10, 0x63

    invoke-static {v8, v3, v3, v9, v10}, Lʿˉ/ﹳٴ;->ﹳٴ(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    iget-object v1, v0, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v7, v3

    :goto_5
    if-ge v7, v2, :cond_8

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_7

    const-string v9, "\\^`{|}"

    const/16 v10, 0x43

    invoke-static {v8, v3, v3, v9, v10}, Lʿˉ/ﹳٴ;->ﹳٴ(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_7
    move-object v8, v4

    :goto_6
    invoke-interface {v1, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    iget-object v1, v0, Lˊﹶ/ⁱˊ;->ʼˎ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v2, " \"#<>\\^`{|}"

    invoke-static {v1, v3, v3, v2, v5}, Lʿˉ/ﹳٴ;->ﹳٴ(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :cond_9
    iput-object v4, v0, Lˊﹶ/ⁱˊ;->ʼˎ:Ljava/lang/Object;

    invoke-virtual {v0}, Lˊﹶ/ⁱˊ;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final ⁱˊ()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lˎᵢ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const/4 v1, 0x4

    iget-object v2, p0, Lˎᵢ/ʼᐧ;->ʼˎ:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-static {v2, v3, v0, v1}, Lﹶˑ/ˆʾ;->ˑʼ(Ljava/lang/CharSequence;CII)I

    move-result v0

    const-string v1, "?#"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v3, v2, v1}, Lⁱᐧ/ʽ;->ʽ(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ()Ljava/lang/String;
    .locals 5

    .prologue
    iget-object v0, p0, Lˎᵢ/ʼᐧ;->ʽ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lˎᵢ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const/4 v1, 0x4

    iget-object v2, p0, Lˎᵢ/ʼᐧ;->ʼˎ:Ljava/lang/String;

    const/16 v3, 0x3a

    invoke-static {v2, v3, v0, v1}, Lﹶˑ/ˆʾ;->ˑʼ(Ljava/lang/CharSequence;CII)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x6

    const/16 v4, 0x40

    invoke-static {v2, v4, v1, v3}, Lﹶˑ/ˆʾ;->ˑʼ(Ljava/lang/CharSequence;CII)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﾞᴵ(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    iget-object v0, p0, Lˎᵢ/ʼᐧ;->ᵎﹶ:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Lˈˊ/ˉˆ;->ˉٴ(II)Lʿˈ/ʽ;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lˈˊ/ˉˆ;->ᴵᵔ(Lʿˈ/ʽ;I)Lʿˈ/ﹳٴ;

    move-result-object v1

    iget v2, v1, Lʿˈ/ﹳٴ;->ʾˋ:I

    iget v3, v1, Lʿˈ/ﹳٴ;->ᴵˊ:I

    iget v1, v1, Lʿˈ/ﹳٴ;->ʽʽ:I

    if-lez v1, :cond_1

    if-le v2, v3, :cond_2

    :cond_1
    if-gez v1, :cond_4

    if-gt v3, v2, :cond_4

    :cond_2
    :goto_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_3
    if-eq v2, v3, :cond_4

    add-int/2addr v2, v1

    goto :goto_0

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
