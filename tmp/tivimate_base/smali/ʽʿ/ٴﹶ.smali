.class public abstract Lʽʿ/ٴﹶ;
.super Lᴵי/ﹳٴ;
.source "SourceFile"

# interfaces
.implements Lʽʿ/ˆʾ;


# instance fields
.field public final ˈٴ:Lʽʿ/ﾞᴵ;


# direct methods
.method public constructor <init>(Lˈי/ᵔᵢ;Lʽʿ/ﾞᴵ;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lᴵי/ﹳٴ;-><init>(Lˈי/ᵔᵢ;ZZ)V

    iput-object p2, p0, Lʽʿ/ٴﹶ;->ˈٴ:Lʽʿ/ﾞᴵ;

    return-void
.end method


# virtual methods
.method public final iterator()Lʽʿ/ʽ;
    .locals 2

    iget-object v0, p0, Lʽʿ/ٴﹶ;->ˈٴ:Lʽʿ/ﾞᴵ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lʽʿ/ʽ;

    invoke-direct {v1, v0}, Lʽʿ/ʽ;-><init>(Lʽʿ/ﾞᴵ;)V

    return-object v1
.end method

.method public final ʼˎ()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lʽʿ/ٴﹶ;->ˈٴ:Lʽʿ/ﾞᴵ;

    invoke-virtual {v0}, Lʽʿ/ﾞᴵ;->ʼˎ()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final ˆʾ(Lʿᵔ/ᵔᵢ;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lʽʿ/ٴﹶ;->ˈٴ:Lʽʿ/ﾞᴵ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lʽʿ/ﾞᴵ;->ᴵˊ(Lʽʿ/ﾞᴵ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final יـ(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    iget-object v0, p0, Lʽʿ/ٴﹶ;->ˈٴ:Lʽʿ/ﾞᴵ;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lʽʿ/ﾞᴵ;->ٴﹶ(Ljava/lang/Throwable;Z)Z

    invoke-virtual {p0, p1}, Lᴵי/ᐧᴵ;->ᵔﹳ(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ᵎﹶ(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lᴵי/ᐧᴵ;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, Lᴵי/ﹳٴ;->ʽﹳ()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lᴵי/ᐧᴵ;)V

    :cond_1
    invoke-virtual {p0, p1}, Lʽʿ/ٴﹶ;->יـ(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lʽʿ/ٴﹶ;->ˈٴ:Lʽʿ/ﾞᴵ;

    invoke-interface {v0, p1}, Lʽʿ/ʻٴ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lʽʿ/ٴﹶ;->ˈٴ:Lʽʿ/ﾞᴵ;

    invoke-interface {v0, p1, p2}, Lʽʿ/ʻٴ;->ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ﹳﹳ(Lar/tvplayer/core/domain/ˈ;)V
    .locals 5

    .prologue
    iget-object v0, p0, Lʽʿ/ٴﹶ;->ˈٴ:Lʽʿ/ﾞᴵ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lʽʿ/ﾞᴵ;->ٴʼ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lʽʿ/ᵔᵢ;->ᵔﹳ:Lʻᴵ/ﹳٴ;

    if-ne v2, v3, :cond_4

    sget-object v4, Lʽʿ/ᵔᵢ;->ﹳᐧ:Lʻᴵ/ﹳٴ;

    :cond_2
    invoke-virtual {v1, v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lʽʿ/ﾞᴵ;->ʼᐧ()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lar/tvplayer/core/domain/ˈ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_4
    sget-object p1, Lʽʿ/ᵔᵢ;->ﹳᐧ:Lʻᴵ/ﹳٴ;

    if-ne v2, p1, :cond_5

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Another handler was already registered and successfully invoked"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Another handler is already registered: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
