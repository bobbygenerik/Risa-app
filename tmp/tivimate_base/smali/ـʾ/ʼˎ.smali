.class public final Lـʾ/ʼˎ;
.super Lᴵʾ/ᵔᵢ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﹳᐧ;


# instance fields
.field public synthetic ˊʻ:Ljava/lang/Throwable;

.field public synthetic ٴᵢ:J

.field public ᴵᵔ:I


# virtual methods
.method public final ٴﹶ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lᵎˈ/ᵔᵢ;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p4, Lˈי/ˈ;

    new-instance p1, Lـʾ/ʼˎ;

    const/4 p3, 0x4

    invoke-direct {p1, p3, p4}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    iput-object p2, p1, Lـʾ/ʼˎ;->ˊʻ:Ljava/lang/Throwable;

    iput-wide v0, p1, Lـʾ/ʼˎ;->ٴᵢ:J

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lـʾ/ʼˎ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    iget v0, p0, Lـʾ/ʼˎ;->ᴵᵔ:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p1, p0, Lـʾ/ʼˎ;->ˊʻ:Ljava/lang/Throwable;

    iget-wide v2, p0, Lـʾ/ʼˎ;->ٴᵢ:J

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v0

    sget-object v4, Lـʾ/ٴﹶ;->ﹳٴ:Ljava/lang/String;

    const-string v5, "Cannot check for unfinished work"

    invoke-virtual {v0, v4, v5, p1}, Lᴵˋ/ˏי;->ˈ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p1, 0x7530

    int-to-long v4, p1

    mul-long/2addr v2, v4

    sget-wide v4, Lـʾ/ٴﹶ;->ⁱˊ:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput v1, p0, Lـʾ/ʼˎ;->ᴵᵔ:I

    invoke-static {v2, v3, p0}, Lᴵי/ʾᵎ;->ﾞᴵ(JLˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method
