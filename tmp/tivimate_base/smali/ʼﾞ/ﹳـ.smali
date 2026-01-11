.class public final Lʼﾞ/ﹳـ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵎˈ/ᵔᵢ;


# instance fields
.field public final synthetic ʽʽ:[Ljava/lang/String;

.field public final synthetic ʾˋ:Lˊʼ/ˏי;

.field public final synthetic ˈٴ:[I

.field public final synthetic ᴵˊ:Lᵎˈ/ᵔᵢ;


# direct methods
.method public constructor <init>(Lˊʼ/ˏי;Lᵎˈ/ᵔᵢ;[Ljava/lang/String;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼﾞ/ﹳـ;->ʾˋ:Lˊʼ/ˏי;

    iput-object p2, p0, Lʼﾞ/ﹳـ;->ᴵˊ:Lᵎˈ/ᵔᵢ;

    iput-object p3, p0, Lʼﾞ/ﹳـ;->ʽʽ:[Ljava/lang/String;

    iput-object p4, p0, Lʼﾞ/ﹳـ;->ˈٴ:[I

    return-void
.end method


# virtual methods
.method public final ⁱˊ([ILˈי/ˈ;)Ljava/lang/Object;
    .locals 13

    .prologue
    instance-of v0, p2, Lʼﾞ/ـˏ;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lʼﾞ/ـˏ;

    iget v1, v0, Lʼﾞ/ـˏ;->ˉٴ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lʼﾞ/ـˏ;->ˉٴ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lʼﾞ/ـˏ;

    invoke-direct {v0, p0, p2}, Lʼﾞ/ـˏ;-><init>(Lʼﾞ/ﹳـ;Lˈי/ˈ;)V

    :goto_0
    iget-object p2, v0, Lʼﾞ/ـˏ;->ˊʻ:Ljava/lang/Object;

    iget v1, v0, Lʼﾞ/ـˏ;->ˉٴ:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iget-object p1, v0, Lʼﾞ/ـˏ;->ᴵᵔ:[I

    iget-object v0, v0, Lʼﾞ/ـˏ;->ˈٴ:Lʼﾞ/ﹳـ;

    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p2, p0, Lʼﾞ/ﹳـ;->ʾˋ:Lˊʼ/ˏי;

    iget-object v1, p2, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    iget-object v4, p0, Lʼﾞ/ﹳـ;->ʽʽ:[Ljava/lang/String;

    iget-object v5, p0, Lʼﾞ/ﹳـ;->ᴵˊ:Lᵎˈ/ᵔᵢ;

    sget-object v6, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-nez v1, :cond_4

    invoke-static {v4}, Lﹶˈ/ʼˎ;->ʾˊ([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    iput-object p0, v0, Lʼﾞ/ـˏ;->ˈٴ:Lʼﾞ/ﹳـ;

    iput-object p1, v0, Lʼﾞ/ـˏ;->ᴵᵔ:[I

    iput v3, v0, Lʼﾞ/ـˏ;->ˉٴ:I

    invoke-interface {v5, p2, v0}, Lᵎˈ/ᵔᵢ;->ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v6, :cond_8

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v4

    const/4 v7, 0x0

    move v8, v7

    :goto_2
    if-ge v7, v3, :cond_7

    aget-object v9, v4, v7

    add-int/lit8 v10, v8, 0x1

    iget-object v11, p2, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    if-eqz v11, :cond_6

    check-cast v11, [I

    iget-object v12, p0, Lʼﾞ/ﹳـ;->ˈٴ:[I

    aget v8, v12, v8

    aget v11, v11, v8

    aget v8, p1, v8

    if-eq v11, v8, :cond_5

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v7, v7, 0x1

    move v8, v10

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Required value was null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-static {v1}, Lﹶˈ/ˆʾ;->ᐧˎ(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    iput-object p0, v0, Lʼﾞ/ـˏ;->ˈٴ:Lʼﾞ/ﹳـ;

    iput-object p1, v0, Lʼﾞ/ـˏ;->ᴵᵔ:[I

    iput v2, v0, Lʼﾞ/ـˏ;->ˉٴ:I

    invoke-interface {v5, p2, v0}, Lᵎˈ/ᵔᵢ;->ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v6, :cond_8

    :goto_3
    return-object v6

    :cond_8
    move-object v0, p0

    :goto_4
    iget-object p2, v0, Lʼﾞ/ﹳـ;->ʾˋ:Lˊʼ/ˏי;

    iput-object p1, p2, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1
.end method

.method public final bridge synthetic ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [I

    invoke-virtual {p0, p1, p2}, Lʼﾞ/ﹳـ;->ⁱˊ([ILˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
