.class public final Lᵎʽ/ᵔʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/util/concurrent/atomic/AtomicReference;

.field public final ⁱˊ:Lʿᵢ/ᵎﹶ;

.field public final ﹳٴ:Lʾˈ/ˈˏ;


# direct methods
.method public constructor <init>(Lˈי/ᵔᵢ;Lʾˈ/ˈˏ;Lʿᵢ/ᵎﹶ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lᵎʽ/ᵔʾ;->ﹳٴ:Lʾˈ/ˈˏ;

    iput-object p3, p0, Lᵎʽ/ᵔʾ;->ⁱˊ:Lʿᵢ/ᵎﹶ;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p2, p0, Lᵎʽ/ᵔʾ;->ʽ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lᴵי/ʾᵎ;->ⁱˊ(Lˈי/ᵔᵢ;)Lˊʽ/ˈ;

    move-result-object p1

    new-instance p2, Lᵎʽ/ﾞʻ;

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, p3}, Lᵎʽ/ﾞʻ;-><init>(Lᵎʽ/ᵔʾ;Lˈי/ˈ;I)V

    const/4 p3, 0x3

    invoke-static {p1, v0, p2, p3}, Lᴵי/ʾᵎ;->ˉˆ(Lᴵי/ـˆ;Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;I)Lᴵי/ˈˏ;

    return-void
.end method


# virtual methods
.method public final ʽ(Lᵎʽ/ᵎﹶ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 5

    .prologue
    instance-of v0, p2, Lᵎʽ/ˉʿ;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lᵎʽ/ˉʿ;

    iget v1, v0, Lᵎʽ/ˉʿ;->ˊʻ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lᵎʽ/ˉʿ;->ˊʻ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lᵎʽ/ˉʿ;

    invoke-direct {v0, p0, p2}, Lᵎʽ/ˉʿ;-><init>(Lᵎʽ/ᵔʾ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p2, v0, Lᵎʽ/ˉʿ;->ˈٴ:Ljava/lang/Object;

    iget v1, v0, Lᵎʽ/ˉʿ;->ˊʻ:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    :try_start_1
    iget-object p2, p0, Lᵎʽ/ᵔʾ;->ⁱˊ:Lʿᵢ/ᵎﹶ;

    new-instance v1, Lʼⁱ/ʾˋ;

    const/4 v3, 0x0

    const/16 v4, 0xe

    invoke-direct {v1, p1, v3, v4}, Lʼⁱ/ʾˋ;-><init>(Ljava/lang/Object;Lˈי/ˈ;I)V

    iput v2, v0, Lᵎʽ/ˉʿ;->ˊʻ:I

    invoke-interface {p2, v1, v0}, Lʿᵢ/ᵎﹶ;->ﹳٴ(Lᴵⁱ/ʼᐧ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    sget-object p2, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, p2, :cond_3

    return-object p2

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to update config values: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FirebaseSessions"

    nop

    :cond_3
    :goto_2
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1
.end method

.method public final ⁱˊ()Z
    .locals 6

    .prologue
    invoke-virtual {p0}, Lᵎʽ/ᵔʾ;->ﹳٴ()Lᵎʽ/ᵎﹶ;

    move-result-object v0

    iget-object v0, v0, Lᵎʽ/ᵎﹶ;->ˑﹳ:Ljava/lang/Long;

    invoke-virtual {p0}, Lᵎʽ/ᵔʾ;->ﹳٴ()Lᵎʽ/ᵎﹶ;

    move-result-object v1

    iget-object v1, v1, Lᵎʽ/ᵎﹶ;->ˈ:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lᵎʽ/ᵔʾ;->ﹳٴ:Lʾˈ/ˈˏ;

    invoke-virtual {v2}, Lʾˈ/ˈˏ;->ﹳٴ()Lʾˈ/ـﹶ;

    move-result-object v2

    iget-wide v2, v2, Lʾˈ/ـﹶ;->ʽ:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final ﹳٴ()Lᵎʽ/ᵎﹶ;
    .locals 4

    .prologue
    iget-object v0, p0, Lᵎʽ/ᵔʾ;->ʽ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Lᵎʽ/ﾞʻ;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lᵎʽ/ﾞʻ;-><init>(Lᵎʽ/ᵔʾ;Lˈי/ˈ;I)V

    sget-object v2, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;

    invoke-static {v2, v1}, Lᴵי/ʾᵎ;->יـ(Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᵎʽ/ᵎﹶ;

    return-object v0
.end method
