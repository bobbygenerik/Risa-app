.class public final Lⁱᵎ/ᵔᵢ;
.super Lᴵʾ/ᵔᵢ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ᵔﹳ;


# instance fields
.field public synthetic ˊʻ:Lᵎˈ/ᵔᵢ;

.field public synthetic ٴᵢ:[Ljava/lang/Object;

.field public ᴵᵔ:I


# virtual methods
.method public final ᵎﹶ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lᵎˈ/ᵔᵢ;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Lˈי/ˈ;

    new-instance v0, Lⁱᵎ/ᵔᵢ;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p3}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    iput-object p1, v0, Lⁱᵎ/ᵔᵢ;->ˊʻ:Lᵎˈ/ᵔᵢ;

    iput-object p2, v0, Lⁱᵎ/ᵔᵢ;->ٴᵢ:[Ljava/lang/Object;

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {v0, p1}, Lⁱᵎ/ᵔᵢ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    iget v0, p0, Lⁱᵎ/ᵔᵢ;->ᴵᵔ:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p1, p0, Lⁱᵎ/ᵔᵢ;->ˊʻ:Lᵎˈ/ᵔᵢ;

    iget-object v0, p0, Lⁱᵎ/ᵔᵢ;->ٴᵢ:[Ljava/lang/Object;

    check-cast v0, [Lⁱᵎ/ʽ;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    sget-object v4, Lⁱᵎ/ﹳٴ;->ﹳٴ:Lⁱᵎ/ﹳٴ;

    if-ge v3, v2, :cond_3

    aget-object v5, v0, v3

    invoke-static {v5, v4}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v5

    :goto_2
    iput v1, p0, Lⁱᵎ/ᵔᵢ;->ᴵᵔ:I

    invoke-interface {p1, v4, p0}, Lᵎˈ/ᵔᵢ;->ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_3
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1
.end method
