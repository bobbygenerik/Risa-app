.class public final Lˈˊ/ˈ;
.super Lﹳٴ/ﹳٴ;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public final ˆʾ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public final ٴﹶ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public final ᵎﹶ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public final ᵔᵢ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˈˊ/ˈ;->ᵎﹶ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p2, p0, Lˈˊ/ˈ;->ᵔᵢ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p3, p0, Lˈˊ/ˈ;->ʼˎ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p4, p0, Lˈˊ/ˈ;->ˆʾ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p5, p0, Lˈˊ/ˈ;->ٴﹶ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method


# virtual methods
.method public final ʽ(Lˈˊ/ˉʿ;Lˈˊ/ﾞʻ;Lˈˊ/ﾞʻ;)Z
    .locals 2

    .prologue
    :cond_0
    iget-object v0, p0, Lˈˊ/ˈ;->ʼˎ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public final ʽﹳ(Lˈˊ/ˉʿ;)Lˈˊ/ﾞʻ;
    .locals 2

    sget-object v0, Lˈˊ/ﾞʻ;->ʽ:Lˈˊ/ﾞʻ;

    iget-object v1, p0, Lˈˊ/ˈ;->ʼˎ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lˈˊ/ﾞʻ;

    return-object p1
.end method

.method public final ˉٴ(Lˈˊ/ﾞʻ;Ljava/lang/Thread;)V
    .locals 1

    iget-object v0, p0, Lˈˊ/ˈ;->ᵎﹶ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final ˏי(Lˈˊ/ˉʿ;)Lˈˊ/ʽ;
    .locals 2

    sget-object v0, Lˈˊ/ʽ;->ˈ:Lˈˊ/ʽ;

    iget-object v1, p0, Lˈˊ/ˈ;->ˆʾ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lˈˊ/ʽ;

    return-object p1
.end method

.method public final ٴᵢ(Lˈˊ/ﾞʻ;Lˈˊ/ﾞʻ;)V
    .locals 1

    iget-object v0, p0, Lˈˊ/ˈ;->ᵔᵢ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final ⁱˊ(Lˈˊ/ˉʿ;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    :cond_0
    iget-object v0, p0, Lˈˊ/ˈ;->ٴﹶ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public final ﹳٴ(Lˈˊ/ˉʿ;Lˈˊ/ʽ;Lˈˊ/ʽ;)Z
    .locals 2

    .prologue
    :cond_0
    iget-object v0, p0, Lˈˊ/ˈ;->ˆʾ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_0

    const/4 p1, 0x0

    return p1
.end method
