.class public abstract Lﹶﹳ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ConstraintTrkngWrkr"

    invoke-static {v0}, Lᴵˋ/ˏי;->ᵎﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lﹶﹳ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    return-void
.end method

.method public static final ﹳٴ(Lʼﹳ/ᵎﹶ;Lˑᵎ/ﹳᐧ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 4

    .prologue
    instance-of v0, p2, Lﹶﹳ/ˑﹳ;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lﹶﹳ/ˑﹳ;

    iget v1, v0, Lﹶﹳ/ˑﹳ;->ᴵᵔ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lﹶﹳ/ˑﹳ;->ᴵᵔ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lﹶﹳ/ˑﹳ;

    invoke-direct {v0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    :goto_0
    iget-object p2, v0, Lﹶﹳ/ˑﹳ;->ˈٴ:Ljava/lang/Object;

    iget v1, v0, Lﹶﹳ/ˑﹳ;->ᴵᵔ:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lʼﹳ/ᵎﹶ;->ʽ(Lˑᵎ/ﹳᐧ;)Lᵎˈ/ᵎﹶ;

    move-result-object p0

    new-instance p2, Lʼⁱ/ʾˋ;

    const/4 v1, 0x0

    const/16 v3, 0x15

    invoke-direct {p2, p1, v1, v3}, Lʼⁱ/ʾˋ;-><init>(Ljava/lang/Object;Lˈי/ˈ;I)V

    new-instance p1, Lʼﾞ/ᵔʾ;

    invoke-direct {p1, p0, p2}, Lʼﾞ/ᵔʾ;-><init>(Lᵎˈ/ᵎﹶ;Lᴵⁱ/ʼᐧ;)V

    new-instance p0, Lʿᵢ/ﹳᐧ;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lʿᵢ/ﹳᐧ;-><init>(ILjava/lang/Object;)V

    iput v2, v0, Lﹶﹳ/ˑﹳ;->ᴵᵔ:I

    invoke-static {p0, v0}, Lᵎˈ/ˈٴ;->ᵎﹶ(Lᵎˈ/ᵎﹶ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p2

    sget-object p0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p2, p0, :cond_3

    return-object p0

    :cond_3
    :goto_1
    check-cast p2, Lⁱᵎ/ⁱˊ;

    iget p0, p2, Lⁱᵎ/ⁱˊ;->ﹳٴ:I

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1
.end method
