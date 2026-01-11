.class public final Lʿᵢ/ـﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿᵢ/ˑٴ;


# instance fields
.field public final ʽ:Lʿᵢ/ﹳᐧ;

.field public final ⁱˊ:Landroidx/leanback/widget/ˉˆ;

.field public final ﹳٴ:Lﹶי/ʽ;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lﹶי/ˈ;->ﹳٴ()Lﹶי/ʽ;

    move-result-object v0

    iput-object v0, p0, Lʿᵢ/ـﹶ;->ﹳٴ:Lﹶי/ʽ;

    new-instance v0, Landroidx/leanback/widget/ˉˆ;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ˉˆ;-><init>(I)V

    iput-object v0, p0, Lʿᵢ/ـﹶ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    new-instance v0, Lar/tvplayer/core/data/api/parse/ˆʾ;

    const/4 v1, 0x2

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lar/tvplayer/core/data/api/parse/ˆʾ;-><init>(ILˈי/ˈ;I)V

    new-instance v1, Lʿᵢ/ﹳᐧ;

    invoke-direct {v1, v0}, Lʿᵢ/ﹳᐧ;-><init>(Lᴵⁱ/ʼᐧ;)V

    iput-object v1, p0, Lʿᵢ/ـﹶ;->ʽ:Lʿᵢ/ﹳᐧ;

    return-void
.end method


# virtual methods
.method public final ʽ()Lᵎˈ/ᵎﹶ;
    .locals 1

    iget-object v0, p0, Lʿᵢ/ـﹶ;->ʽ:Lʿᵢ/ﹳᐧ;

    return-object v0
.end method

.method public final ˈ(Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p0, Lʿᵢ/ـﹶ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    iget-object p1, p1, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public final ˑﹳ(Lʿᵢ/ʽʽ;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p0, Lʿᵢ/ـﹶ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    iget-object p1, p1, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public final ⁱˊ(Lᴵⁱ/ʼᐧ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 5

    .prologue
    instance-of v0, p2, Lʿᵢ/ˊᵔ;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lʿᵢ/ˊᵔ;

    iget v1, v0, Lʿᵢ/ˊᵔ;->ˉٴ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lʿᵢ/ˊᵔ;->ˉٴ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lʿᵢ/ˊᵔ;

    invoke-direct {v0, p0, p2}, Lʿᵢ/ˊᵔ;-><init>(Lʿᵢ/ـﹶ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p2, v0, Lʿᵢ/ˊᵔ;->ˊʻ:Ljava/lang/Object;

    iget v1, v0, Lʿᵢ/ˊᵔ;->ˉٴ:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-boolean p1, v0, Lʿᵢ/ˊᵔ;->ᴵᵔ:Z

    iget-object v0, v0, Lʿᵢ/ˊᵔ;->ˈٴ:Lﹶי/ʽ;

    :try_start_0
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p2, p0, Lʿᵢ/ـﹶ;->ﹳٴ:Lﹶי/ʽ;

    invoke-virtual {p2}, Lﹶי/ʽ;->ˈ()Z

    move-result v1

    :try_start_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object p2, v0, Lʿᵢ/ˊᵔ;->ˈٴ:Lﹶי/ʽ;

    iput-boolean v1, v0, Lʿᵢ/ˊᵔ;->ᴵᵔ:Z

    iput v2, v0, Lʿᵢ/ˊᵔ;->ˉٴ:I

    invoke-interface {p1, v4, v0}, Lᴵⁱ/ʼᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, p2

    move-object p2, p1

    move p1, v1

    :goto_1
    if-eqz p1, :cond_4

    invoke-interface {v0, v3}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    :cond_4
    return-object p2

    :catchall_1
    move-exception p1

    move-object v0, p2

    move-object p2, p1

    move p1, v1

    :goto_2
    if-eqz p1, :cond_5

    invoke-interface {v0, v3}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    :cond_5
    throw p2
.end method

.method public final ﹳٴ(Lᴵⁱ/ﾞʻ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 7

    .prologue
    instance-of v0, p2, Lʿᵢ/ʻᵎ;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lʿᵢ/ʻᵎ;

    iget v1, v0, Lʿᵢ/ʻᵎ;->ˉٴ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lʿᵢ/ʻᵎ;->ˉٴ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lʿᵢ/ʻᵎ;

    invoke-direct {v0, p0, p2}, Lʿᵢ/ʻᵎ;-><init>(Lʿᵢ/ـﹶ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p2, v0, Lʿᵢ/ʻᵎ;->ˊʻ:Ljava/lang/Object;

    iget v1, v0, Lʿᵢ/ʻᵎ;->ˉٴ:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Lʿᵢ/ʻᵎ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Lﹶי/ﹳٴ;

    :try_start_0
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lʿᵢ/ʻᵎ;->ᴵᵔ:Lﹶי/ʽ;

    iget-object v1, v0, Lʿᵢ/ʻᵎ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lᴵⁱ/ﾞʻ;

    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v1

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iput-object p1, v0, Lʿᵢ/ʻᵎ;->ˈٴ:Ljava/lang/Object;

    iget-object p2, p0, Lʿᵢ/ـﹶ;->ﹳٴ:Lﹶי/ʽ;

    iput-object p2, v0, Lʿᵢ/ʻᵎ;->ᴵᵔ:Lﹶי/ʽ;

    iput v3, v0, Lʿᵢ/ʻᵎ;->ˉٴ:I

    invoke-virtual {p2, v0}, Lﹶי/ʽ;->ʽ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    :try_start_1
    iput-object p2, v0, Lʿᵢ/ʻᵎ;->ˈٴ:Ljava/lang/Object;

    iput-object v4, v0, Lʿᵢ/ʻᵎ;->ᴵᵔ:Lﹶי/ʽ;

    iput v2, v0, Lʿᵢ/ʻᵎ;->ˉٴ:I

    invoke-interface {p1, v0}, Lᴵⁱ/ﾞʻ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v5, :cond_5

    :goto_2
    return-object v5

    :cond_5
    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    :goto_3
    invoke-interface {p1, v4}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    return-object p2

    :catchall_1
    move-exception p1

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    :goto_4
    invoke-interface {p1, v4}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    throw p2
.end method
