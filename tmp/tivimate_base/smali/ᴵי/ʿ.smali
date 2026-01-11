.class public abstract Lᴵי/ʿ;
.super Lˊʽ/ˆʾ;
.source "SourceFile"

# interfaces
.implements Lᴵי/ᵎⁱ;
.implements Lᴵי/ـˏ;


# instance fields
.field public ˈٴ:Lᴵי/ᐧᴵ;


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lᴵי/ʾᵎ;->ٴﹶ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[job@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᴵי/ʿ;->ˈٴ:Lᴵי/ᐧᴵ;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lᴵי/ʾᵎ;->ٴﹶ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʽ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract ˆʾ()Z
.end method

.method public final ˈ()Lᴵי/ˏᵢ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract ٴﹶ(Ljava/lang/Throwable;)V
.end method

.method public final ﹳٴ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lᴵי/ʿ;->ˈٴ:Lᴵי/ᐧᴵ;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    sget-object v1, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lᴵי/ʿ;

    if-eqz v3, :cond_4

    if-eq v2, p0, :cond_1

    goto :goto_3

    :cond_1
    sget-object v3, Lᴵי/ʾᵎ;->ˆʾ:Lᴵי/ٴʼ;

    :cond_2
    invoke-virtual {v1, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v2, :cond_2

    goto :goto_1

    :cond_4
    instance-of v0, v2, Lᴵי/ـˏ;

    if-eqz v0, :cond_9

    check-cast v2, Lᴵי/ـˏ;

    invoke-interface {v2}, Lᴵי/ـˏ;->ˈ()Lᴵי/ˏᵢ;

    move-result-object v0

    if-eqz v0, :cond_9

    :goto_2
    sget-object v0, Lˊʽ/ˆʾ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lˊʽ/ˉˆ;

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    if-ne v1, p0, :cond_6

    check-cast v1, Lˊʽ/ˆʾ;

    return-void

    :cond_6
    move-object v2, v1

    check-cast v2, Lˊʽ/ˆʾ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lˊʽ/ˆʾ;->ʽʽ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lˊʽ/ˉˆ;

    if-nez v4, :cond_7

    new-instance v4, Lˊʽ/ˉˆ;

    invoke-direct {v4, v2}, Lˊʽ/ˉˆ;-><init>(Lˊʽ/ˆʾ;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v0, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lˊʽ/ˆʾ;->ﾞᴵ()Lˊʽ/ˆʾ;

    return-void

    :cond_8
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_7

    goto :goto_2

    :cond_9
    :goto_3
    return-void
.end method
