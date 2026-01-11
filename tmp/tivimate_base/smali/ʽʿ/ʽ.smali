.class public final Lʽʿ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵי/ʽᵔ;


# instance fields
.field public final synthetic ʽʽ:Lʽʿ/ﾞᴵ;

.field public ʾˋ:Ljava/lang/Object;

.field public ᴵˊ:Lᴵי/ٴﹶ;


# direct methods
.method public constructor <init>(Lʽʿ/ﾞᴵ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽʿ/ʽ;->ʽʽ:Lʽʿ/ﾞᴵ;

    sget-object p1, Lʽʿ/ᵔᵢ;->ʼᐧ:Lʻᴵ/ﹳٴ;

    iput-object p1, p0, Lʽʿ/ʽ;->ʾˋ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ʽ()Ljava/lang/Object;
    .locals 2

    .prologue
    iget-object v0, p0, Lʽʿ/ʽ;->ʾˋ:Ljava/lang/Object;

    sget-object v1, Lʽʿ/ᵔᵢ;->ʼᐧ:Lʻᴵ/ﹳٴ;

    if-eq v0, v1, :cond_1

    iput-object v1, p0, Lʽʿ/ʽ;->ʾˋ:Ljava/lang/Object;

    sget-object v1, Lʽʿ/ᵔᵢ;->ﾞʻ:Lʻᴵ/ﹳٴ;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lʽʿ/ʽ;->ʽʽ:Lʽʿ/ﾞᴵ;

    invoke-virtual {v0}, Lʽʿ/ﾞᴵ;->ᵔﹳ()Ljava/lang/Throwable;

    move-result-object v0

    sget v1, Lˊʽ/יـ;->ﹳٴ:I

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "`hasNext()` has not been invoked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ⁱˊ(Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 13

    .prologue
    iget-object v0, p0, Lʽʿ/ʽ;->ʾˋ:Ljava/lang/Object;

    sget-object v1, Lʽʿ/ᵔᵢ;->ʼᐧ:Lʻᴵ/ﹳٴ;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    sget-object v1, Lʽʿ/ᵔᵢ;->ﾞʻ:Lʻᴵ/ﹳٴ;

    if-eq v0, v1, :cond_0

    :goto_0
    move-object v8, p0

    goto/16 :goto_8

    :cond_0
    sget-object v0, Lʽʿ/ﾞᴵ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v3, p0, Lʽʿ/ʽ;->ʽʽ:Lʽʿ/ﾞᴵ;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʽʿ/ˉˆ;

    :goto_1
    invoke-virtual {v3}, Lʽʿ/ﾞᴵ;->ʻٴ()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lʽʿ/ᵔᵢ;->ﾞʻ:Lʻᴵ/ﹳٴ;

    iput-object p1, p0, Lʽʿ/ʽ;->ʾˋ:Ljava/lang/Object;

    invoke-virtual {v3}, Lʽʿ/ﾞᴵ;->ʼᐧ()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    sget v0, Lˊʽ/יـ;->ﹳٴ:I

    throw p1

    :cond_2
    sget-object v1, Lʽʿ/ﾞᴵ;->ʽʽ:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v6

    sget v1, Lʽʿ/ᵔᵢ;->ⁱˊ:I

    int-to-long v4, v1

    div-long v8, v6, v4

    rem-long v4, v6, v4

    long-to-int v5, v4

    iget-wide v10, v0, Lˊʽ/ﹳᐧ;->ʽ:J

    cmp-long v1, v10, v8

    if-eqz v1, :cond_4

    invoke-virtual {v3, v8, v9, v0}, Lʽʿ/ﾞᴵ;->ˉˆ(JLʽʿ/ˉˆ;)Lʽʿ/ˉˆ;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, v1

    goto :goto_2

    :cond_4
    move-object v4, v0

    :goto_2
    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lʽʿ/ﾞᴵ;->ٴᵢ(Lʽʿ/ˉˆ;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lʽʿ/ᵔᵢ;->ˉʿ:Lʻᴵ/ﹳٴ;

    if-eq v0, v1, :cond_13

    sget-object v9, Lʽʿ/ᵔᵢ;->ˉˆ:Lʻᴵ/ﹳٴ;

    if-ne v0, v9, :cond_6

    invoke-virtual {v3}, Lʽʿ/ﾞᴵ;->יـ()J

    move-result-wide v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_5

    invoke-virtual {v4}, Lˊʽ/ʽ;->ⁱˊ()V

    :cond_5
    move-object v0, v4

    goto :goto_1

    :cond_6
    sget-object v8, Lʽʿ/ᵔᵢ;->ᵔʾ:Lʻᴵ/ﹳٴ;

    if-ne v0, v8, :cond_12

    invoke-static {p1}, Lˉᵎ/ⁱˊ;->ˈٴ(Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    invoke-static {p1}, Lᴵי/ʾᵎ;->ﾞʻ(Lˈי/ˈ;)Lᴵי/ٴﹶ;

    move-result-object p1

    :try_start_0
    iput-object p1, p0, Lʽʿ/ʽ;->ᴵˊ:Lᴵי/ٴﹶ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v8, p0

    :try_start_1
    invoke-virtual/range {v3 .. v8}, Lʽʿ/ﾞᴵ;->ٴᵢ(Lʽʿ/ˉˆ;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_7

    invoke-virtual {p0, v4, v5}, Lʽʿ/ʽ;->ﹳٴ(Lˊʽ/ﹳᐧ;I)V

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_7
    const/4 v1, 0x0

    if-ne v0, v9, :cond_11

    invoke-virtual {v3}, Lʽʿ/ﾞᴵ;->יـ()J

    move-result-wide v9

    cmp-long v0, v6, v9

    if-gez v0, :cond_8

    invoke-virtual {v4}, Lˊʽ/ʽ;->ⁱˊ()V

    :cond_8
    sget-object v0, Lʽʿ/ﾞᴵ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʽʿ/ˉˆ;

    :goto_3
    invoke-virtual {v3}, Lʽʿ/ﾞᴵ;->ʻٴ()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v0, v8, Lʽʿ/ʽ;->ᴵˊ:Lᴵי/ٴﹶ;

    iput-object v1, v8, Lʽʿ/ʽ;->ᴵˊ:Lᴵי/ٴﹶ;

    sget-object v1, Lʽʿ/ᵔᵢ;->ﾞʻ:Lʻᴵ/ﹳٴ;

    iput-object v1, v8, Lʽʿ/ʽ;->ʾˋ:Ljava/lang/Object;

    invoke-virtual {v3}, Lʽʿ/ﾞᴵ;->ʼᐧ()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_9

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lᴵי/ٴﹶ;->ᵔᵢ(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_9
    new-instance v2, Lʻᵢ/ﾞᴵ;

    invoke-direct {v2, v1}, Lʻᵢ/ﾞᴵ;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Lᴵי/ٴﹶ;->ᵔᵢ(Ljava/lang/Object;)V

    goto :goto_6

    :cond_a
    sget-object v2, Lʽʿ/ﾞᴵ;->ʽʽ:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v6

    sget v2, Lʽʿ/ᵔᵢ;->ⁱˊ:I

    int-to-long v4, v2

    div-long v9, v6, v4

    rem-long v4, v6, v4

    long-to-int v5, v4

    iget-wide v11, v0, Lˊʽ/ﹳᐧ;->ʽ:J

    cmp-long v2, v11, v9

    if-eqz v2, :cond_c

    invoke-virtual {v3, v9, v10, v0}, Lʽʿ/ﾞᴵ;->ˉˆ(JLʽʿ/ˉˆ;)Lʽʿ/ˉˆ;

    move-result-object v2

    if-nez v2, :cond_b

    goto :goto_3

    :cond_b
    move-object v4, v2

    goto :goto_4

    :cond_c
    move-object v4, v0

    :goto_4
    invoke-virtual/range {v3 .. v8}, Lʽʿ/ﾞᴵ;->ٴᵢ(Lʽʿ/ˉˆ;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v4

    sget-object v4, Lʽʿ/ᵔᵢ;->ˉʿ:Lʻᴵ/ﹳٴ;

    if-ne v0, v4, :cond_d

    invoke-virtual {p0, v2, v5}, Lʽʿ/ʽ;->ﹳٴ(Lˊʽ/ﹳᐧ;I)V

    goto :goto_6

    :cond_d
    sget-object v4, Lʽʿ/ᵔᵢ;->ˉˆ:Lʻᴵ/ﹳٴ;

    if-ne v0, v4, :cond_f

    invoke-virtual {v3}, Lʽʿ/ﾞᴵ;->יـ()J

    move-result-wide v4

    cmp-long v0, v6, v4

    if-gez v0, :cond_e

    invoke-virtual {v2}, Lˊʽ/ʽ;->ⁱˊ()V

    :cond_e
    move-object v0, v2

    goto :goto_3

    :cond_f
    sget-object v3, Lʽʿ/ᵔᵢ;->ᵔʾ:Lʻᴵ/ﹳٴ;

    if-eq v0, v3, :cond_10

    invoke-virtual {v2}, Lˊʽ/ʽ;->ⁱˊ()V

    iput-object v0, v8, Lʽʿ/ʽ;->ʾˋ:Ljava/lang/Object;

    iput-object v1, v8, Lʽʿ/ʽ;->ᴵˊ:Lᴵי/ٴﹶ;

    :goto_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lᴵי/ٴﹶ;->ˉʿ(Ljava/lang/Object;Lᴵⁱ/ᵔﹳ;)V

    goto :goto_6

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {v4}, Lˊʽ/ʽ;->ⁱˊ()V

    iput-object v0, v8, Lʽʿ/ʽ;->ʾˋ:Ljava/lang/Object;

    iput-object v1, v8, Lʽʿ/ʽ;->ᴵˊ:Lᴵי/ٴﹶ;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_6
    invoke-virtual {p1}, Lᴵי/ٴﹶ;->ʽﹳ()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_1
    move-exception v0

    move-object v8, p0

    :goto_7
    invoke-virtual {p1}, Lᴵי/ٴﹶ;->ˈٴ()V

    throw v0

    :cond_12
    move-object v8, p0

    invoke-virtual {v4}, Lˊʽ/ʽ;->ⁱˊ()V

    iput-object v0, v8, Lʽʿ/ʽ;->ʾˋ:Ljava/lang/Object;

    :goto_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_13
    move-object v8, p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unreachable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﹳٴ(Lˊʽ/ﹳᐧ;I)V
    .locals 1

    .prologue
    iget-object v0, p0, Lʽʿ/ʽ;->ᴵˊ:Lᴵי/ٴﹶ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lᴵי/ٴﹶ;->ﹳٴ(Lˊʽ/ﹳᐧ;I)V

    :cond_0
    return-void
.end method
