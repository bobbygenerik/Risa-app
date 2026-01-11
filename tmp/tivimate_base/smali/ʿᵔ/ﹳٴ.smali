.class public abstract Lʿᵔ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽʽ:I

.field public ʾˋ:[Lʿᵔ/ʽ;

.field public ᴵˊ:I


# virtual methods
.method public final ˈ()Lʿᵔ/ʽ;
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lʿᵔ/ﹳٴ;->ʾˋ:[Lʿᵔ/ʽ;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lʿᵔ/ﹳٴ;->ﾞᴵ()[Lʿᵔ/ʽ;

    move-result-object v0

    iput-object v0, p0, Lʿᵔ/ﹳٴ;->ʾˋ:[Lʿᵔ/ʽ;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget v1, p0, Lʿᵔ/ﹳٴ;->ᴵˊ:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Lʿᵔ/ʽ;

    iput-object v1, p0, Lʿᵔ/ﹳٴ;->ʾˋ:[Lʿᵔ/ʽ;

    check-cast v0, [Lʿᵔ/ʽ;

    :cond_1
    :goto_0
    iget v1, p0, Lʿᵔ/ﹳٴ;->ʽʽ:I

    :cond_2
    aget-object v2, v0, v1

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lʿᵔ/ﹳٴ;->ˑﹳ()Lʿᵔ/ʽ;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    array-length v3, v0

    if-lt v1, v3, :cond_4

    const/4 v1, 0x0

    :cond_4
    invoke-virtual {v2, p0}, Lʿᵔ/ʽ;->ﹳٴ(Lʿᵔ/ﹳٴ;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput v1, p0, Lʿᵔ/ﹳٴ;->ʽʽ:I

    iget v0, p0, Lʿᵔ/ﹳٴ;->ᴵˊ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lʿᵔ/ﹳٴ;->ᴵˊ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public abstract ˑﹳ()Lʿᵔ/ʽ;
.end method

.method public final ᵎﹶ(Lʿᵔ/ʽ;)V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lʿᵔ/ﹳٴ;->ᴵˊ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lʿᵔ/ﹳٴ;->ᴵˊ:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Lʿᵔ/ﹳٴ;->ʽʽ:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p1, p0}, Lʿᵔ/ʽ;->ⁱˊ(Lʿᵔ/ﹳٴ;)[Lˈי/ˈ;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    sget-object v3, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-interface {v2, v3}, Lˈי/ˈ;->ᵔᵢ(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public abstract ﾞᴵ()[Lʿᵔ/ʽ;
.end method
