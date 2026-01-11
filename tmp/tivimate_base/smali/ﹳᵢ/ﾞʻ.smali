.class public final Lﹳᵢ/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳᵢ/ʿᵢ;


# instance fields
.field public final ʾˋ:Lʼʻ/ʿᵢ;

.field public ᴵˊ:J


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 5

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lʼʻ/ᵎⁱ;->ˆʾ()Lʼʻ/ˊʻ;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    new-instance v1, Lﹳᵢ/ٴﹶ;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lﹳᵢ/ʿᵢ;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v1, v2, v4}, Lﹳᵢ/ٴﹶ;-><init>(Lﹳᵢ/ʿᵢ;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lʼʻ/ˊʻ;->ᵎﹶ()Lʼʻ/ʿᵢ;

    move-result-object p1

    iput-object p1, p0, Lﹳᵢ/ﾞʻ;->ʾˋ:Lʼʻ/ʿᵢ;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lﹳᵢ/ﾞʻ;->ᴵˊ:J

    return-void
.end method


# virtual methods
.method public final ʻٴ(J)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lﹳᵢ/ﾞʻ;->ʾˋ:Lʼʻ/ʿᵢ;

    iget v2, v1, Lʼʻ/ʿᵢ;->ˈٴ:I

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lʼʻ/ʿᵢ;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹳᵢ/ٴﹶ;

    invoke-virtual {v1, p1, p2}, Lﹳᵢ/ٴﹶ;->ʻٴ(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ˈ()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lﹳᵢ/ﾞʻ;->ʾˋ:Lʼʻ/ʿᵢ;

    iget v3, v2, Lʼʻ/ʿᵢ;->ˈٴ:I

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lʼʻ/ʿᵢ;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lﹳᵢ/ٴﹶ;

    iget-object v2, v2, Lﹳᵢ/ٴﹶ;->ʾˋ:Lﹳᵢ/ʿᵢ;

    invoke-interface {v2}, Lﹳᵢ/ʿᵢ;->ˈ()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final ˉˆ()J
    .locals 13

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    move-wide v3, v0

    move-wide v5, v3

    :goto_0
    iget-object v7, p0, Lﹳᵢ/ﾞʻ;->ʾˋ:Lʼʻ/ʿᵢ;

    iget v8, v7, Lʼʻ/ʿᵢ;->ˈٴ:I

    const-wide/high16 v9, -0x8000000000000000L

    if-ge v2, v8, :cond_3

    invoke-virtual {v7, v2}, Lʼʻ/ʿᵢ;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lﹳᵢ/ٴﹶ;

    iget-object v8, v7, Lﹳᵢ/ٴﹶ;->ʾˋ:Lﹳᵢ/ʿᵢ;

    invoke-interface {v8}, Lﹳᵢ/ʿᵢ;->ˉˆ()J

    move-result-wide v11

    iget-object v7, v7, Lﹳᵢ/ٴﹶ;->ᴵˊ:Lʼʻ/ᵎⁱ;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lʼʻ/ᵎⁱ;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lʼʻ/ᵎⁱ;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lʼʻ/ᵎⁱ;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    cmp-long v7, v11, v9

    if-eqz v7, :cond_1

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_1
    cmp-long v7, v11, v9

    if-eqz v7, :cond_2

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    cmp-long v2, v3, v0

    if-eqz v2, :cond_4

    iput-wide v3, p0, Lﹳᵢ/ﾞʻ;->ᴵˊ:J

    return-wide v3

    :cond_4
    cmp-long v0, v5, v0

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lﹳᵢ/ﾞʻ;->ᴵˊ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_5

    return-wide v0

    :cond_5
    return-wide v5

    :cond_6
    return-wide v9
.end method

.method public final ٴﹶ(Lⁱי/ˉٴ;)Z
    .locals 13

    .prologue
    const/4 v0, 0x0

    move v1, v0

    :cond_0
    invoke-virtual {p0}, Lﹳᵢ/ﾞʻ;->ﾞʻ()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    return v1

    :cond_1
    move v6, v0

    move v7, v6

    :goto_0
    iget-object v8, p0, Lﹳᵢ/ﾞʻ;->ʾˋ:Lʼʻ/ʿᵢ;

    iget v9, v8, Lʼʻ/ʿᵢ;->ˈٴ:I

    if-ge v6, v9, :cond_5

    invoke-virtual {v8, v6}, Lʼʻ/ʿᵢ;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lﹳᵢ/ٴﹶ;

    iget-object v9, v9, Lﹳᵢ/ٴﹶ;->ʾˋ:Lﹳᵢ/ʿᵢ;

    invoke-interface {v9}, Lﹳᵢ/ʿᵢ;->ﾞʻ()J

    move-result-wide v9

    cmp-long v11, v9, v4

    if-eqz v11, :cond_2

    iget-wide v11, p1, Lⁱי/ˉٴ;->ﹳٴ:J

    cmp-long v11, v9, v11

    if-gtz v11, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    move v11, v0

    :goto_1
    cmp-long v9, v9, v2

    if-eqz v9, :cond_3

    if-eqz v11, :cond_4

    :cond_3
    invoke-virtual {v8, v6}, Lʼʻ/ʿᵢ;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lﹳᵢ/ٴﹶ;

    iget-object v8, v8, Lﹳᵢ/ٴﹶ;->ʾˋ:Lﹳᵢ/ʿᵢ;

    invoke-interface {v8, p1}, Lﹳᵢ/ʿᵢ;->ٴﹶ(Lⁱי/ˉٴ;)Z

    move-result v8

    or-int/2addr v7, v8

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    or-int/2addr v1, v7

    if-nez v7, :cond_0

    return v1
.end method

.method public final ﾞʻ()J
    .locals 9

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    move-wide v3, v0

    :goto_0
    iget-object v5, p0, Lﹳᵢ/ﾞʻ;->ʾˋ:Lʼʻ/ʿᵢ;

    iget v6, v5, Lʼʻ/ʿᵢ;->ˈٴ:I

    const-wide/high16 v7, -0x8000000000000000L

    if-ge v2, v6, :cond_1

    invoke-virtual {v5, v2}, Lʼʻ/ʿᵢ;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lﹳᵢ/ٴﹶ;

    iget-object v5, v5, Lﹳᵢ/ٴﹶ;->ʾˋ:Lﹳᵢ/ʿᵢ;

    invoke-interface {v5}, Lﹳᵢ/ʿᵢ;->ﾞʻ()J

    move-result-wide v5

    cmp-long v7, v5, v7

    if-eqz v7, :cond_0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    cmp-long v0, v3, v0

    if-nez v0, :cond_2

    return-wide v7

    :cond_2
    return-wide v3
.end method
