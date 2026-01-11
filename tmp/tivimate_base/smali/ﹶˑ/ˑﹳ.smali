.class public final Lﹶˑ/ˑﹳ;
.super Lﹶˈ/ˈ;
.source "SourceFile"


# instance fields
.field public final synthetic ʾˋ:Lﹶˑ/ᵎﹶ;


# direct methods
.method public constructor <init>(Lﹶˑ/ᵎﹶ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶˑ/ˑﹳ;->ʾˋ:Lﹶˑ/ᵎﹶ;

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-super {p0, p1}, Lﹶˈ/ﹳٴ;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lﹶˑ/ˑﹳ;->ʾˋ:Lﹶˑ/ᵎﹶ;

    iget-object v0, v0, Lﹶˑ/ᵎﹶ;->ﹳٴ:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-super {p0, p1}, Lﹶˈ/ˈ;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-super {p0, p1}, Lﹶˈ/ˈ;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final ﹳٴ()I
    .locals 1

    iget-object v0, p0, Lﹶˑ/ˑﹳ;->ʾˋ:Lﹶˑ/ᵎﹶ;

    iget-object v0, v0, Lﹶˑ/ᵎﹶ;->ﹳٴ:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
