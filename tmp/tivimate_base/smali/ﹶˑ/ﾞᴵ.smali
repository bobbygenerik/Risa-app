.class public final Lﹶˑ/ﾞᴵ;
.super Lﹶˈ/ﹳٴ;
.source "SourceFile"


# instance fields
.field public final synthetic ʾˋ:Lﹶˑ/ᵎﹶ;


# direct methods
.method public constructor <init>(Lﹶˑ/ᵎﹶ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶˑ/ﾞᴵ;->ʾˋ:Lﹶˑ/ᵎﹶ;

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lﹶˑ/ˈ;

    :goto_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lﹶˑ/ˈ;

    invoke-super {p0, p1}, Lﹶˈ/ﹳٴ;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 4

    new-instance v0, Lʿˈ/ʽ;

    invoke-virtual {p0}, Lﹶˑ/ﾞᴵ;->ﹳٴ()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lʿˈ/ﹳٴ;-><init>(III)V

    new-instance v1, Lʼᴵ/ˑﹳ;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lʼᴵ/ˑﹳ;-><init>(ILjava/lang/Object;)V

    new-instance v0, Lᐧᵎ/ˆʾ;

    const/16 v2, 0x16

    invoke-direct {v0, v2, p0}, Lᐧᵎ/ˆʾ;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lʼᴵ/ٴﹶ;

    invoke-direct {v2, v1, v0, v3}, Lʼᴵ/ٴﹶ;-><init>(Ljava/lang/Object;Lʻᵢ/ﹳٴ;I)V

    new-instance v0, Lʼᴵ/ˆʾ;

    invoke-direct {v0, v2}, Lʼᴵ/ˆʾ;-><init>(Lʼᴵ/ٴﹶ;)V

    return-object v0
.end method

.method public final ⁱˊ(I)Lﹶˑ/ˈ;
    .locals 3

    .prologue
    iget-object v0, p0, Lﹶˑ/ﾞᴵ;->ʾˋ:Lﹶˑ/ᵎﹶ;

    iget-object v0, v0, Lﹶˑ/ᵎﹶ;->ﹳٴ:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->end(I)I

    move-result v2

    invoke-static {v1, v2}, Lˈˊ/ˉˆ;->ˉٴ(II)Lʿˈ/ʽ;

    move-result-object v1

    iget v2, v1, Lʿˈ/ﹳٴ;->ʾˋ:I

    if-ltz v2, :cond_0

    new-instance v2, Lﹶˑ/ˈ;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lﹶˑ/ˈ;-><init>(Ljava/lang/String;Lʿˈ/ʽ;)V

    return-object v2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ﹳٴ()I
    .locals 1

    iget-object v0, p0, Lﹶˑ/ﾞᴵ;->ʾˋ:Lﹶˑ/ᵎﹶ;

    iget-object v0, v0, Lﹶˑ/ᵎﹶ;->ﹳٴ:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
