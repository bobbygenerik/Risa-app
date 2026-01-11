.class public final Lʿᵢ/ʾᵎ;
.super Lᴵʾ/ᵔᵢ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﾞʻ;


# instance fields
.field public ˊʻ:I

.field public final synthetic ٴᵢ:Lʿᵢ/ˈٴ;

.field public ᴵᵔ:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lʿᵢ/ˈٴ;Lˈי/ˈ;)V
    .locals 0

    iput-object p1, p0, Lʿᵢ/ʾᵎ;->ٴᵢ:Lʿᵢ/ˈٴ;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    iget v0, p0, Lʿᵢ/ʾᵎ;->ˊʻ:I

    iget-object v1, p0, Lʿᵢ/ʾᵎ;->ٴᵢ:Lʿᵢ/ˈٴ;

    const/4 v2, 0x2

    const/4 v3, 0x1

    sget-object v4, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lʿᵢ/ʾᵎ;->ᴵᵔ:Ljava/lang/Throwable;

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_0
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, p1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    :try_start_1
    iput v3, p0, Lʿᵢ/ʾᵎ;->ˊʻ:I

    invoke-static {v1, v3, p0}, Lʿᵢ/ˈٴ;->ᵎﹶ(Lʿᵢ/ˈٴ;ZLᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_3

    goto :goto_2

    :cond_3
    :goto_0
    check-cast p1, Lʿᵢ/ˈˏ;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_1
    invoke-virtual {v1}, Lʿᵢ/ˈٴ;->ᵔᵢ()Lʿᵢ/ˑٴ;

    move-result-object p1

    iput-object v0, p0, Lʿᵢ/ʾᵎ;->ᴵᵔ:Ljava/lang/Throwable;

    iput v2, p0, Lʿᵢ/ʾᵎ;->ˊʻ:I

    invoke-interface {p1, p0}, Lʿᵢ/ˑٴ;->ˈ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_4

    :goto_2
    return-object v4

    :cond_4
    :goto_3
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    new-instance v1, Lʿᵢ/ᵎᵔ;

    invoke-direct {v1, p1, v0}, Lʿᵢ/ᵎᵔ;-><init>(ILjava/lang/Throwable;)V

    move-object p1, v1

    :goto_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v1, Lʻᵢ/ˑﹳ;

    invoke-direct {v1, p1, v0}, Lʻᵢ/ˑﹳ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lˈי/ˈ;

    new-instance v0, Lʿᵢ/ʾᵎ;

    iget-object v1, p0, Lʿᵢ/ʾᵎ;->ٴᵢ:Lʿᵢ/ˈٴ;

    invoke-direct {v0, v1, p1}, Lʿᵢ/ʾᵎ;-><init>(Lʿᵢ/ˈٴ;Lˈי/ˈ;)V

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {v0, p1}, Lʿᵢ/ʾᵎ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
