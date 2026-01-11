.class public final Lʽﹳ/ˈ;
.super Lcom/bumptech/glide/ˈ;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public final ˆʾ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public final ˉʿ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public final ٴﹶ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public final ﾞʻ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽﹳ/ˈ;->ʼˎ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p2, p0, Lʽﹳ/ˈ;->ˆʾ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p3, p0, Lʽﹳ/ˈ;->ٴﹶ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p4, p0, Lʽﹳ/ˈ;->ﾞʻ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p5, p0, Lʽﹳ/ˈ;->ˉʿ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method


# virtual methods
.method public final ʽʽ(Lʽﹳ/ﾞᴵ;Lʽﹳ/ﾞᴵ;)V
    .locals 1

    iget-object v0, p0, Lʽﹳ/ˈ;->ˆʾ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final ˈٴ(Lʽﹳ/ﾞᴵ;Ljava/lang/Thread;)V
    .locals 1

    iget-object v0, p0, Lʽﹳ/ˈ;->ʼˎ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final ˑﹳ(Lʽﹳ/ᵎﹶ;Lʽﹳ/ʽ;Lʽﹳ/ʽ;)Z
    .locals 2

    .prologue
    :cond_0
    iget-object v0, p0, Lʽﹳ/ˈ;->ﾞʻ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

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

.method public final ᵎﹶ(Lʽﹳ/ᵎﹶ;Lʽﹳ/ﾞᴵ;Lʽﹳ/ﾞᴵ;)Z
    .locals 2

    .prologue
    :cond_0
    iget-object v0, p0, Lʽﹳ/ˈ;->ٴﹶ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

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

.method public final ﾞᴵ(Lʽﹳ/ᵎﹶ;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    :cond_0
    iget-object v0, p0, Lʽﹳ/ˈ;->ˉʿ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

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
