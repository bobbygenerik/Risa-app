.class public abstract Lˊʽ/ﹳᐧ;
.super Lˊʽ/ʽ;
.source "SourceFile"

# interfaces
.implements Lᴵי/ˊᵔ;


# static fields
.field public static final synthetic ˈ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic cleanedAndPointers$volatile:I

.field public final ʽ:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lˊʽ/ﹳᐧ;

    const-string v1, "cleanedAndPointers$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lˊʽ/ﹳᐧ;->ˈ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(JLˊʽ/ﹳᐧ;I)V
    .locals 0

    invoke-direct {p0, p3}, Lˊʽ/ʽ;-><init>(Lˊʽ/ﹳᐧ;)V

    iput-wide p1, p0, Lˊʽ/ﹳᐧ;->ʽ:J

    shl-int/lit8 p1, p4, 0x10

    iput p1, p0, Lˊʽ/ﹳᐧ;->cleanedAndPointers$volatile:I

    return-void
.end method


# virtual methods
.method public final ʼˎ()V
    .locals 2

    .prologue
    sget-object v0, Lˊʽ/ﹳᐧ;->ˈ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lˊʽ/ﹳᐧ;->ᵎﹶ()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lˊʽ/ʽ;->ˑﹳ()V

    :cond_0
    return-void
.end method

.method public final ˆʾ()Z
    .locals 3

    .prologue
    :cond_0
    sget-object v0, Lˊʽ/ﹳᐧ;->ˈ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0}, Lˊʽ/ﹳᐧ;->ᵎﹶ()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lˊʽ/ʽ;->ʽ()Lˊʽ/ʽ;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/high16 v2, 0x10000

    add-int/2addr v2, v1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public final ˈ()Z
    .locals 2

    .prologue
    sget-object v0, Lˊʽ/ﹳᐧ;->ˈ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lˊʽ/ﹳᐧ;->ᵎﹶ()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lˊʽ/ʽ;->ʽ()Lˊʽ/ʽ;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract ᵎﹶ()I
.end method

.method public abstract ᵔᵢ(ILˈי/ᵔᵢ;)V
.end method

.method public final ﾞᴵ()Z
    .locals 2

    .prologue
    sget-object v0, Lˊʽ/ﹳᐧ;->ˈ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/high16 v1, -0x10000

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->addAndGet(Ljava/lang/Object;I)I

    move-result v0

    invoke-virtual {p0}, Lˊʽ/ﹳᐧ;->ᵎﹶ()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lˊʽ/ʽ;->ʽ()Lˊʽ/ʽ;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
