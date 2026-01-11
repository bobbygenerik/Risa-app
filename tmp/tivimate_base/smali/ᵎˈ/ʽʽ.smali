.class public Lᵎˈ/ʽʽ;
.super Lʿᵔ/ﹳٴ;
.source "SourceFile"

# interfaces
.implements Lᵎˈ/ᵎﹶ;
.implements Lᵎˈ/ᵔᵢ;
.implements Lʿᵔ/ٴﹶ;


# instance fields
.field public final ˈٴ:I

.field public ˉٴ:I

.field public ˊʻ:J

.field public ٴᵢ:J

.field public ᴵᵔ:[Ljava/lang/Object;

.field public ᵎⁱ:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lᵎˈ/ʽʽ;->ˈٴ:I

    return-void
.end method

.method public static ˆʾ(Lᵎˈ/ʽʽ;Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)V
    .locals 8

    .prologue
    instance-of v0, p2, Lᵎˈ/ᴵˊ;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lᵎˈ/ᴵˊ;

    iget v1, v0, Lᵎˈ/ᴵˊ;->ٴʼ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lᵎˈ/ᴵˊ;->ٴʼ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lᵎˈ/ᴵˊ;

    invoke-direct {v0, p0, p2}, Lᵎˈ/ᴵˊ;-><init>(Lᵎˈ/ʽʽ;Lˈי/ˈ;)V

    :goto_0
    iget-object p2, v0, Lᵎˈ/ᴵˊ;->ˉٴ:Ljava/lang/Object;

    iget v1, v0, Lᵎˈ/ᴵˊ;->ٴʼ:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v1, :cond_5

    const/4 p0, 0x1

    if-eq v1, p0, :cond_4

    if-eq v1, v3, :cond_3

    if-ne v1, v2, :cond_2

    iget-object p0, v0, Lᵎˈ/ᴵˊ;->ٴᵢ:Lᴵי/ᴵˑ;

    iget-object p1, v0, Lᵎˈ/ᴵˊ;->ˊʻ:Lᵎˈ/ᴵᵔ;

    iget-object v1, v0, Lᵎˈ/ᴵˊ;->ᴵᵔ:Lᵎˈ/ᵔᵢ;

    iget-object v4, v0, Lᵎˈ/ᴵˊ;->ˈٴ:Lᵎˈ/ʽʽ;

    :try_start_0
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object p2, v1

    move-object v1, p0

    move-object p0, v4

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object p0, v0, Lᵎˈ/ᴵˊ;->ٴᵢ:Lᴵי/ᴵˑ;

    iget-object p1, v0, Lᵎˈ/ᴵˊ;->ˊʻ:Lᵎˈ/ᴵᵔ;

    iget-object v1, v0, Lᵎˈ/ᴵˊ;->ᴵᵔ:Lᵎˈ/ᵔᵢ;

    iget-object v4, v0, Lᵎˈ/ᴵˊ;->ˈٴ:Lᵎˈ/ʽʽ;

    :try_start_1
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_4
    iget-object p1, v0, Lᵎˈ/ᴵˊ;->ˊʻ:Lᵎˈ/ᴵᵔ;

    iget-object p0, v0, Lᵎˈ/ᴵˊ;->ᴵᵔ:Lᵎˈ/ᵔᵢ;

    iget-object v1, v0, Lᵎˈ/ᴵˊ;->ˈٴ:Lᵎˈ/ʽʽ;

    :try_start_2
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object p2, p0

    move-object p0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v4, v1

    goto :goto_6

    :cond_5
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lʿᵔ/ﹳٴ;->ˈ()Lʿᵔ/ʽ;

    move-result-object p2

    check-cast p2, Lᵎˈ/ᴵᵔ;

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_1
    :try_start_3
    iget-object v1, v0, Lᴵʾ/ʽ;->ᴵˊ:Lˈי/ᵔᵢ;

    sget-object v4, Lᴵי/ʽﹳ;->ᴵˊ:Lᴵי/ʽﹳ;

    invoke-interface {v1, v4}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v1

    check-cast v1, Lᴵי/ᴵˑ;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    move-object v4, p0

    move-object p0, v1

    move-object v1, p2

    :cond_6
    :goto_3
    :try_start_4
    invoke-virtual {v4, p1}, Lᵎˈ/ʽʽ;->ﹳᐧ(Lᵎˈ/ᴵᵔ;)Ljava/lang/Object;

    move-result-object p2

    sget-object v5, Lᵎˈ/ˈٴ;->ﹳٴ:Lʻᴵ/ﹳٴ;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-object v6, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p2, v5, :cond_7

    :try_start_5
    iput-object v4, v0, Lᵎˈ/ᴵˊ;->ˈٴ:Lᵎˈ/ʽʽ;

    iput-object v1, v0, Lᵎˈ/ᴵˊ;->ᴵᵔ:Lᵎˈ/ᵔᵢ;

    iput-object p1, v0, Lᵎˈ/ᴵˊ;->ˊʻ:Lᵎˈ/ᴵᵔ;

    iput-object p0, v0, Lᵎˈ/ᴵˊ;->ٴᵢ:Lᴵי/ᴵˑ;

    iput v3, v0, Lᵎˈ/ᴵˊ;->ٴʼ:I

    invoke-virtual {v4, p1, v0}, Lᵎˈ/ʽʽ;->ᵔᵢ(Lᵎˈ/ᴵᵔ;Lᵎˈ/ᴵˊ;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v6, :cond_6

    goto :goto_5

    :cond_7
    if-eqz p0, :cond_9

    invoke-interface {p0}, Lᴵי/ᴵˑ;->ʽ()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_4

    :cond_8
    invoke-interface {p0}, Lᴵי/ᴵˑ;->ˈʿ()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0

    :cond_9
    :goto_4
    iput-object v4, v0, Lᵎˈ/ᴵˊ;->ˈٴ:Lᵎˈ/ʽʽ;

    iput-object v1, v0, Lᵎˈ/ᴵˊ;->ᴵᵔ:Lᵎˈ/ᵔᵢ;

    iput-object p1, v0, Lᵎˈ/ᴵˊ;->ˊʻ:Lᵎˈ/ᴵᵔ;

    iput-object p0, v0, Lᵎˈ/ᴵˊ;->ٴᵢ:Lᴵי/ᴵˑ;

    iput v2, v0, Lᵎˈ/ᴵˊ;->ٴʼ:I

    invoke-interface {v1, p2, v0}, Lᵎˈ/ᵔᵢ;->ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ne p2, v6, :cond_1

    :goto_5
    return-void

    :catchall_2
    move-exception p2

    move-object v4, p0

    move-object p0, p2

    :goto_6
    invoke-virtual {v4, p1}, Lʿᵔ/ﹳٴ;->ᵎﹶ(Lʿᵔ/ʽ;)V

    throw p0
.end method


# virtual methods
.method public final ʼˎ()V
    .locals 8

    .prologue
    iget v0, p0, Lᵎˈ/ʽʽ;->ˈٴ:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lᵎˈ/ʽʽ;->ᵎⁱ:I

    if-gt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lᵎˈ/ʽʽ;->ᴵᵔ:[Ljava/lang/Object;

    :goto_0
    iget v2, p0, Lᵎˈ/ʽʽ;->ᵎⁱ:I

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lᵎˈ/ʽʽ;->ᵔʾ()J

    move-result-wide v2

    iget v4, p0, Lᵎˈ/ʽʽ;->ˉٴ:I

    iget v5, p0, Lᵎˈ/ʽʽ;->ᵎⁱ:I

    add-int/2addr v4, v5

    int-to-long v6, v4

    add-long/2addr v2, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    long-to-int v2, v2

    array-length v3, v0

    sub-int/2addr v3, v1

    and-int/2addr v2, v3

    aget-object v2, v0, v2

    sget-object v3, Lᵎˈ/ˈٴ;->ﹳٴ:Lʻᴵ/ﹳٴ;

    if-ne v2, v3, :cond_1

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lᵎˈ/ʽʽ;->ᵎⁱ:I

    invoke-virtual {p0}, Lᵎˈ/ʽʽ;->ᵔʾ()J

    move-result-wide v2

    iget v4, p0, Lᵎˈ/ʽʽ;->ˉٴ:I

    iget v5, p0, Lᵎˈ/ʽʽ;->ᵎⁱ:I

    add-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lᵎˈ/ˈٴ;->ⁱˊ([Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final ʼᐧ(Ljava/lang/Object;)Z
    .locals 12

    .prologue
    iget v1, p0, Lʿᵔ/ﹳٴ;->ᴵˊ:I

    const/4 v9, 0x1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v1, p0, Lᵎˈ/ʽʽ;->ˉٴ:I

    iget v2, p0, Lᵎˈ/ʽʽ;->ˈٴ:I

    if-lt v1, v2, :cond_3

    iget-wide v3, p0, Lᵎˈ/ʽʽ;->ٴᵢ:J

    iget-wide v5, p0, Lᵎˈ/ʽʽ;->ˊʻ:J

    cmp-long v1, v3, v5

    if-gtz v1, :cond_3

    invoke-static {v9}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v1

    if-eqz v1, :cond_2

    if-eq v1, v9, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    :cond_2
    const/4 v1, 0x0

    return v1

    :cond_3
    invoke-virtual/range {p0 .. p1}, Lᵎˈ/ʽʽ;->ﾞʻ(Ljava/lang/Object;)V

    iget v1, p0, Lᵎˈ/ʽʽ;->ˉٴ:I

    add-int/2addr v1, v9

    iput v1, p0, Lᵎˈ/ʽʽ;->ˉٴ:I

    if-le v1, v2, :cond_7

    iget-object v1, p0, Lᵎˈ/ʽʽ;->ᴵᵔ:[Ljava/lang/Object;

    invoke-virtual {p0}, Lᵎˈ/ʽʽ;->ᵔʾ()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lᵎˈ/ˈٴ;->ⁱˊ([Ljava/lang/Object;JLjava/lang/Object;)V

    iget v1, p0, Lᵎˈ/ʽʽ;->ˉٴ:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lᵎˈ/ʽʽ;->ˉٴ:I

    invoke-virtual {p0}, Lᵎˈ/ʽʽ;->ᵔʾ()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iget-wide v3, p0, Lᵎˈ/ʽʽ;->ˊʻ:J

    cmp-long v3, v3, v1

    if-gez v3, :cond_4

    iput-wide v1, p0, Lᵎˈ/ʽʽ;->ˊʻ:J

    :cond_4
    iget-wide v3, p0, Lᵎˈ/ʽʽ;->ٴᵢ:J

    cmp-long v3, v3, v1

    if-gez v3, :cond_7

    iget v3, p0, Lʿᵔ/ﹳٴ;->ᴵˊ:I

    if-eqz v3, :cond_6

    iget-object v3, p0, Lʿᵔ/ﹳٴ;->ʾˋ:[Lʿᵔ/ʽ;

    if-eqz v3, :cond_6

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_6

    aget-object v6, v3, v5

    if-eqz v6, :cond_5

    check-cast v6, Lᵎˈ/ᴵᵔ;

    iget-wide v7, v6, Lᵎˈ/ᴵᵔ;->ﹳٴ:J

    const-wide/16 v10, 0x0

    cmp-long v10, v7, v10

    if-ltz v10, :cond_5

    cmp-long v7, v7, v1

    if-gez v7, :cond_5

    iput-wide v1, v6, Lᵎˈ/ᴵᵔ;->ﹳٴ:J

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    iput-wide v1, p0, Lᵎˈ/ʽʽ;->ٴᵢ:J

    :cond_7
    invoke-virtual {p0}, Lᵎˈ/ʽʽ;->ᵔʾ()J

    move-result-wide v1

    iget v3, p0, Lᵎˈ/ʽʽ;->ˉٴ:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iget-wide v3, p0, Lᵎˈ/ʽʽ;->ˊʻ:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    if-lez v1, :cond_8

    const-wide/16 v1, 0x1

    add-long/2addr v1, v3

    iget-wide v3, p0, Lᵎˈ/ʽʽ;->ٴᵢ:J

    invoke-virtual {p0}, Lᵎˈ/ʽʽ;->ᵔʾ()J

    move-result-wide v5

    iget v7, p0, Lᵎˈ/ʽʽ;->ˉٴ:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-virtual {p0}, Lᵎˈ/ʽʽ;->ᵔʾ()J

    move-result-wide v7

    iget v10, p0, Lᵎˈ/ʽʽ;->ˉٴ:I

    int-to-long v10, v10

    add-long/2addr v7, v10

    iget v10, p0, Lᵎˈ/ʽʽ;->ᵎⁱ:I

    int-to-long v10, v10

    add-long/2addr v7, v10

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lᵎˈ/ʽʽ;->יـ(JJJJ)V

    :cond_8
    :goto_1
    return v9
.end method

.method public final ʽ(Lˈי/ᵔᵢ;II)Lᵎˈ/ᵎﹶ;
    .locals 7

    .prologue
    if-eqz p2, :cond_0

    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    return-object p0

    :cond_1
    new-instance v1, Lʿᵔ/ˈ;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lʿᵔ/ˈ;-><init>(Ljava/lang/Object;Lˈי/ᵔᵢ;III)V

    return-object v1
.end method

.method public final ˉʿ([Lˈי/ˈ;)[Lˈי/ˈ;
    .locals 10

    .prologue
    array-length v0, p1

    iget v1, p0, Lʿᵔ/ﹳٴ;->ᴵˊ:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lʿᵔ/ﹳٴ;->ʾˋ:[Lʿᵔ/ʽ;

    if-eqz v1, :cond_3

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    check-cast v4, Lᵎˈ/ᴵᵔ;

    iget-object v5, v4, Lᵎˈ/ᴵᵔ;->ⁱˊ:Lᴵי/ٴﹶ;

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4}, Lᵎˈ/ʽʽ;->ᵔﹳ(Lᵎˈ/ᴵᵔ;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    array-length v6, p1

    if-lt v0, v6, :cond_1

    array-length v6, p1

    const/4 v7, 0x2

    mul-int/2addr v6, v7

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_1
    move-object v6, p1

    check-cast v6, [Lˈי/ˈ;

    add-int/lit8 v7, v0, 0x1

    aput-object v5, v6, v0

    const/4 v0, 0x0

    iput-object v0, v4, Lᵎˈ/ᴵᵔ;->ⁱˊ:Lᴵי/ٴﹶ;

    move v0, v7

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    check-cast p1, [Lˈי/ˈ;

    return-object p1
.end method

.method public final ˉˆ([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 7

    .prologue
    if-lez p3, :cond_2

    new-array p3, p3, [Ljava/lang/Object;

    iput-object p3, p0, Lᵎˈ/ʽʽ;->ᴵᵔ:[Ljava/lang/Object;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lᵎˈ/ʽʽ;->ᵔʾ()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    int-to-long v3, v2

    add-long/2addr v3, v0

    long-to-int v5, v3

    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    aget-object v5, p1, v5

    invoke-static {p3, v3, v4, v5}, Lᵎˈ/ˈٴ;->ⁱˊ([Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p3

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Buffer size overflow"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ˏי(J)[Lˈי/ˈ;
    .locals 22

    .prologue
    move-object/from16 v0, p0

    sget-object v1, Lᵎˈ/ˈٴ;->ﹳٴ:Lʻᴵ/ﹳٴ;

    sget-object v2, Lʿᵔ/ⁱˊ;->ﹳٴ:[Lˈי/ˈ;

    iget-wide v3, v0, Lᵎˈ/ʽʽ;->ٴᵢ:J

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lᵎˈ/ʽʽ;->ᵔʾ()J

    move-result-wide v3

    iget v5, v0, Lᵎˈ/ʽʽ;->ˉٴ:I

    int-to-long v5, v5

    add-long/2addr v5, v3

    iget v7, v0, Lᵎˈ/ʽʽ;->ˈٴ:I

    const-wide/16 v8, 0x1

    if-nez v7, :cond_1

    iget v10, v0, Lᵎˈ/ʽʽ;->ᵎⁱ:I

    if-lez v10, :cond_1

    add-long/2addr v5, v8

    :cond_1
    iget v10, v0, Lʿᵔ/ﹳٴ;->ᴵˊ:I

    if-eqz v10, :cond_3

    iget-object v10, v0, Lʿᵔ/ﹳٴ;->ʾˋ:[Lʿᵔ/ʽ;

    if-eqz v10, :cond_3

    array-length v12, v10

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v12, :cond_3

    aget-object v14, v10, v13

    if-eqz v14, :cond_2

    check-cast v14, Lᵎˈ/ᴵᵔ;

    iget-wide v14, v14, Lᵎˈ/ᴵᵔ;->ﹳٴ:J

    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-ltz v16, :cond_2

    cmp-long v16, v14, v5

    if-gez v16, :cond_2

    move-wide v5, v14

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    iget-wide v12, v0, Lᵎˈ/ʽʽ;->ٴᵢ:J

    cmp-long v10, v5, v12

    if-gtz v10, :cond_4

    :goto_1
    return-object v2

    :cond_4
    invoke-virtual {v0}, Lᵎˈ/ʽʽ;->ᵔʾ()J

    move-result-wide v12

    iget v10, v0, Lᵎˈ/ʽʽ;->ˉٴ:I

    int-to-long v14, v10

    add-long/2addr v12, v14

    iget v10, v0, Lʿᵔ/ﹳٴ;->ᴵˊ:I

    if-lez v10, :cond_5

    sub-long v14, v12, v5

    long-to-int v10, v14

    iget v14, v0, Lᵎˈ/ʽʽ;->ᵎⁱ:I

    sub-int v10, v7, v10

    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_2

    :cond_5
    iget v10, v0, Lᵎˈ/ʽʽ;->ᵎⁱ:I

    :goto_2
    iget v14, v0, Lᵎˈ/ʽʽ;->ᵎⁱ:I

    int-to-long v14, v14

    add-long/2addr v14, v12

    if-lez v10, :cond_9

    new-array v2, v10, [Lˈי/ˈ;

    move-wide/from16 p1, v8

    iget-object v8, v0, Lᵎˈ/ʽʽ;->ᴵᵔ:[Ljava/lang/Object;

    move-wide/from16 v18, v12

    const/4 v9, 0x0

    :goto_3
    cmp-long v16, v12, v14

    if-gez v16, :cond_8

    long-to-int v11, v12

    move-object/from16 v17, v2

    array-length v2, v8

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v11

    aget-object v2, v8, v2

    if-eq v2, v1, :cond_7

    check-cast v2, Lᵎˈ/ʾˋ;

    add-int/lit8 v11, v9, 0x1

    move-wide/from16 v20, v3

    iget-object v3, v2, Lᵎˈ/ʾˋ;->ˈٴ:Lᴵי/ٴﹶ;

    aput-object v3, v17, v9

    invoke-static {v8, v12, v13, v1}, Lᵎˈ/ˈٴ;->ⁱˊ([Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object v2, v2, Lᵎˈ/ʾˋ;->ʽʽ:Ljava/lang/Object;

    move-wide/from16 v3, v18

    invoke-static {v8, v3, v4, v2}, Lᵎˈ/ˈٴ;->ⁱˊ([Ljava/lang/Object;JLjava/lang/Object;)V

    add-long v3, v3, p1

    if-ge v11, v10, :cond_6

    move v9, v11

    move-wide/from16 v18, v3

    goto :goto_5

    :cond_6
    :goto_4
    move-wide v12, v3

    move-object/from16 v9, v17

    goto :goto_6

    :cond_7
    move-wide/from16 v20, v3

    move-wide/from16 v3, v18

    :goto_5
    add-long v12, v12, p1

    move-object/from16 v2, v17

    move-wide/from16 v3, v20

    goto :goto_3

    :cond_8
    move-object/from16 v17, v2

    move-wide/from16 v20, v3

    move-wide/from16 v3, v18

    goto :goto_4

    :cond_9
    move-wide/from16 v20, v3

    move-wide/from16 p1, v8

    move-object v9, v2

    :goto_6
    sub-long v2, v12, v20

    long-to-int v2, v2

    iget v3, v0, Lʿᵔ/ﹳٴ;->ᴵˊ:I

    if-nez v3, :cond_a

    move-wide v3, v12

    goto :goto_7

    :cond_a
    move-wide v3, v5

    :goto_7
    iget-wide v5, v0, Lᵎˈ/ʽʽ;->ˊʻ:J

    const/4 v8, 0x0

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v10, v2

    sub-long v10, v12, v10

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    if-nez v7, :cond_b

    cmp-long v2, v5, v14

    if-gez v2, :cond_b

    iget-object v2, v0, Lᵎˈ/ʽʽ;->ᴵᵔ:[Ljava/lang/Object;

    long-to-int v7, v5

    array-length v8, v2

    add-int/lit8 v8, v8, -0x1

    and-int/2addr v7, v8

    aget-object v2, v2, v7

    invoke-static {v2, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    add-long v12, v12, p1

    add-long v5, v5, p1

    :cond_b
    move-wide v1, v5

    move-wide v5, v12

    move-wide v7, v14

    invoke-virtual/range {v0 .. v8}, Lᵎˈ/ʽʽ;->יـ(JJJJ)V

    invoke-virtual {v0}, Lᵎˈ/ʽʽ;->ʼˎ()V

    array-length v1, v9

    if-nez v1, :cond_c

    return-object v9

    :cond_c
    invoke-virtual {v0, v9}, Lᵎˈ/ʽʽ;->ˉʿ([Lˈי/ˈ;)[Lˈי/ˈ;

    move-result-object v1

    return-object v1
.end method

.method public final ˑﹳ()Lʿᵔ/ʽ;
    .locals 3

    new-instance v0, Lᵎˈ/ᴵᵔ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lᵎˈ/ᴵᵔ;->ﹳٴ:J

    return-object v0
.end method

.method public final יـ(JJJJ)V
    .locals 6

    .prologue
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Lᵎˈ/ʽʽ;->ᵔʾ()J

    move-result-wide v2

    :goto_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    iget-object v4, p0, Lᵎˈ/ʽʽ;->ᴵᵔ:[Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v4, v2, v3, v5}, Lᵎˈ/ˈٴ;->ⁱˊ([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lᵎˈ/ʽʽ;->ˊʻ:J

    iput-wide p3, p0, Lᵎˈ/ʽʽ;->ٴᵢ:J

    sub-long p1, p5, v0

    long-to-int p1, p1

    iput p1, p0, Lᵎˈ/ʽʽ;->ˉٴ:I

    sub-long/2addr p7, p5

    long-to-int p1, p7

    iput p1, p0, Lᵎˈ/ʽʽ;->ᵎⁱ:I

    return-void
.end method

.method public final ٴﹶ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 7

    .prologue
    new-instance v5, Lᴵי/ٴﹶ;

    invoke-static {p2}, Lˉᵎ/ⁱˊ;->ˈٴ(Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p2

    const/4 v6, 0x1

    invoke-direct {v5, v6, p2}, Lᴵי/ٴﹶ;-><init>(ILˈי/ˈ;)V

    invoke-virtual {v5}, Lᴵי/ٴﹶ;->ʻٴ()V

    sget-object p2, Lʿᵔ/ⁱˊ;->ﹳٴ:[Lˈי/ˈ;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lᵎˈ/ʽʽ;->ʼᐧ(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    :try_start_1
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {v5, p1}, Lᴵי/ٴﹶ;->ᵔᵢ(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lᵎˈ/ʽʽ;->ˉʿ([Lˈי/ˈ;)[Lˈי/ˈ;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, 0x0

    move-object v1, p0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_4

    :cond_0
    :try_start_2
    new-instance v0, Lᵎˈ/ʾˋ;

    invoke-virtual {p0}, Lᵎˈ/ʽʽ;->ᵔʾ()J

    move-result-wide v1

    iget v3, p0, Lᵎˈ/ʽʽ;->ˉٴ:I

    iget v4, p0, Lᵎˈ/ʽʽ;->ᵎⁱ:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    add-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    move-object v4, p1

    move-wide v2, v1

    move-object v1, p0

    :try_start_3
    invoke-direct/range {v0 .. v5}, Lᵎˈ/ʾˋ;-><init>(Lᵎˈ/ʽʽ;JLjava/lang/Object;Lᴵי/ٴﹶ;)V

    invoke-virtual {p0, v0}, Lᵎˈ/ʽʽ;->ﾞʻ(Ljava/lang/Object;)V

    iget p1, v1, Lᵎˈ/ʽʽ;->ᵎⁱ:I

    add-int/2addr p1, v6

    iput p1, v1, Lᵎˈ/ʽʽ;->ᵎⁱ:I

    iget p1, v1, Lᵎˈ/ʽʽ;->ˈٴ:I

    if-nez p1, :cond_1

    invoke-virtual {p0, p2}, Lᵎˈ/ʽʽ;->ˉʿ([Lˈי/ˈ;)[Lˈי/ˈ;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_4

    :cond_1
    :goto_1
    move-object p1, p2

    move-object p2, v0

    :goto_2
    monitor-exit p0

    if-eqz p2, :cond_2

    new-instance v0, Lᴵי/ᵔᵢ;

    const/4 v2, 0x2

    invoke-direct {v0, v2, p2}, Lᴵי/ᵔᵢ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v0}, Lᴵי/ٴﹶ;->ʼʼ(Lᴵי/ˊᵔ;)V

    :cond_2
    array-length p2, p1

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p2, :cond_4

    aget-object v2, p1, v0

    if-eqz v2, :cond_3

    sget-object v3, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-interface {v2, v3}, Lˈי/ˈ;->ᵔᵢ(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Lᴵי/ٴﹶ;->ʽﹳ()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, p2, :cond_5

    return-object p1

    :cond_5
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1

    :catchall_2
    move-exception v0

    move-object v1, p0

    goto :goto_0

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public final ᵔʾ()J
    .locals 4

    iget-wide v0, p0, Lᵎˈ/ʽʽ;->ٴᵢ:J

    iget-wide v2, p0, Lᵎˈ/ʽʽ;->ˊʻ:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final ᵔᵢ(Lᵎˈ/ᴵᵔ;Lᵎˈ/ᴵˊ;)Ljava/lang/Object;
    .locals 5

    .prologue
    new-instance v0, Lᴵי/ٴﹶ;

    invoke-static {p2}, Lˉᵎ/ⁱˊ;->ˈٴ(Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lᴵי/ٴﹶ;-><init>(ILˈי/ˈ;)V

    invoke-virtual {v0}, Lᴵי/ٴﹶ;->ʻٴ()V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lᵎˈ/ʽʽ;->ᵔﹳ(Lᵎˈ/ᴵᵔ;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-gez p2, :cond_0

    iput-object v0, p1, Lᵎˈ/ᴵᵔ;->ⁱˊ:Lᴵי/ٴﹶ;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {v0, p1}, Lᴵי/ٴﹶ;->ᵔᵢ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    invoke-virtual {v0}, Lᴵי/ٴﹶ;->ʽﹳ()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final ᵔﹳ(Lᵎˈ/ᴵᵔ;)J
    .locals 6

    .prologue
    iget-wide v0, p1, Lᵎˈ/ᴵᵔ;->ﹳٴ:J

    invoke-virtual {p0}, Lᵎˈ/ʽʽ;->ᵔʾ()J

    move-result-wide v2

    iget p1, p0, Lᵎˈ/ʽʽ;->ˉٴ:I

    int-to-long v4, p1

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    iget p1, p0, Lᵎˈ/ʽʽ;->ˈٴ:I

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lᵎˈ/ʽʽ;->ᵔʾ()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    iget p1, p0, Lᵎˈ/ʽʽ;->ᵎⁱ:I

    if-nez p1, :cond_3

    :goto_0
    const-wide/16 v0, -0x1

    :cond_3
    :goto_1
    return-wide v0
.end method

.method public final ⁱˊ(Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lᵎˈ/ʽʽ;->ˆʾ(Lᵎˈ/ʽʽ;Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)V

    sget-object p1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    return-object p1
.end method

.method public final ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 6

    .prologue
    sget-object v0, Lʿᵔ/ⁱˊ;->ﹳٴ:[Lˈי/ˈ;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lᵎˈ/ʽʽ;->ʼᐧ(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lᵎˈ/ʽʽ;->ˉʿ([Lˈי/ˈ;)[Lˈי/ˈ;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    move v1, v2

    :goto_0
    monitor-exit p0

    array-length v3, v0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    if-eqz v4, :cond_1

    sget-object v5, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-interface {v4, v5}, Lˈי/ˈ;->ᵔᵢ(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1

    :cond_3
    invoke-virtual {p0, p1, p2}, Lᵎˈ/ʽʽ;->ٴﹶ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, p2, :cond_4

    return-object p1

    :cond_4
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final ﹳᐧ(Lᵎˈ/ᴵᵔ;)Ljava/lang/Object;
    .locals 8

    .prologue
    sget-object v0, Lʿᵔ/ⁱˊ;->ﹳٴ:[Lˈי/ˈ;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lᵎˈ/ʽʽ;->ᵔﹳ(Lᵎˈ/ᴵᵔ;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    sget-object p1, Lᵎˈ/ˈٴ;->ﹳٴ:Lʻᴵ/ﹳٴ;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-wide v3, p1, Lᵎˈ/ᴵᵔ;->ﹳٴ:J

    iget-object v0, p0, Lᵎˈ/ʽʽ;->ᴵᵔ:[Ljava/lang/Object;

    long-to-int v5, v1

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    aget-object v0, v0, v5

    instance-of v5, v0, Lᵎˈ/ʾˋ;

    if-eqz v5, :cond_1

    check-cast v0, Lᵎˈ/ʾˋ;

    iget-object v0, v0, Lᵎˈ/ʾˋ;->ʽʽ:Ljava/lang/Object;

    :cond_1
    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    iput-wide v1, p1, Lᵎˈ/ᴵᵔ;->ﹳٴ:J

    invoke-virtual {p0, v3, v4}, Lᵎˈ/ʽʽ;->ˏי(J)[Lˈי/ˈ;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    :goto_0
    monitor-exit p0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    sget-object v4, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-interface {v3, v4}, Lˈי/ˈ;->ᵔᵢ(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object p1

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final ﾞʻ(Ljava/lang/Object;)V
    .locals 6

    .prologue
    iget v0, p0, Lᵎˈ/ʽʽ;->ˉٴ:I

    iget v1, p0, Lᵎˈ/ʽʽ;->ᵎⁱ:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lᵎˈ/ʽʽ;->ᴵᵔ:[Ljava/lang/Object;

    const/4 v2, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lᵎˈ/ʽʽ;->ˉˆ([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    array-length v3, v1

    if-lt v0, v3, :cond_1

    array-length v3, v1

    mul-int/2addr v3, v2

    invoke-virtual {p0, v1, v0, v3}, Lᵎˈ/ʽʽ;->ˉˆ([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lᵎˈ/ʽʽ;->ᵔʾ()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3, p1}, Lᵎˈ/ˈٴ;->ⁱˊ([Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final ﾞᴵ()[Lʿᵔ/ʽ;
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Lᵎˈ/ᴵᵔ;

    return-object v0
.end method
