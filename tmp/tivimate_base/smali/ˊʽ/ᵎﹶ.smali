.class public final Lˊʽ/ᵎﹶ;
.super Lᴵי/ˏי;
.source "SourceFile"

# interfaces
.implements Lᴵי/ʽʽ;


# static fields
.field public static final synthetic ٴᵢ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic runningWorkers$volatile:I

.field public final ʽʽ:Lᴵי/ˏי;

.field public final ˈٴ:I

.field public final ˊʻ:Ljava/lang/Object;

.field public final synthetic ᴵˊ:Lᴵי/ʽʽ;

.field public final ᴵᵔ:Lˊʽ/ٴﹶ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lˊʽ/ᵎﹶ;

    const-string v1, "runningWorkers$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lˊʽ/ᵎﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lᴵי/ˏי;I)V
    .locals 1

    .prologue
    invoke-direct {p0}, Lᴵי/ˏי;-><init>()V

    instance-of v0, p1, Lᴵי/ʽʽ;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lᴵי/ʽʽ;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lᴵי/ᵢˏ;->ﹳٴ:Lᴵי/ʽʽ;

    :cond_1
    iput-object v0, p0, Lˊʽ/ᵎﹶ;->ᴵˊ:Lᴵי/ʽʽ;

    iput-object p1, p0, Lˊʽ/ᵎﹶ;->ʽʽ:Lᴵי/ˏי;

    iput p2, p0, Lˊʽ/ᵎﹶ;->ˈٴ:I

    new-instance p1, Lˊʽ/ٴﹶ;

    invoke-direct {p1}, Lˊʽ/ٴﹶ;-><init>()V

    iput-object p1, p0, Lˊʽ/ᵎﹶ;->ᴵᵔ:Lˊʽ/ٴﹶ;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˊʽ/ᵎﹶ;->ˊʻ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lˊʽ/ᵎﹶ;->ʽʽ:Lᴵי/ˏי;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".limitedParallelism("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˊʽ/ᵎﹶ;->ˈٴ:I

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->יـ(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʽᵔ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    iget-object p1, p0, Lˊʽ/ᵎﹶ;->ᴵᵔ:Lˊʽ/ٴﹶ;

    invoke-virtual {p1, p2}, Lˊʽ/ٴﹶ;->ﹳٴ(Ljava/lang/Runnable;)Z

    sget-object p1, Lˊʽ/ᵎﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p2

    iget v0, p0, Lˊʽ/ᵎﹶ;->ˈٴ:I

    if-ge p2, v0, :cond_1

    invoke-virtual {p0}, Lˊʽ/ᵎﹶ;->ˑ()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lˊʽ/ᵎﹶ;->ʾˊ()Ljava/lang/Runnable;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lˈˊ/ᵔﹳ;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, v1, v2}, Lˈˊ/ᵔﹳ;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object p2, p0, Lˊʽ/ᵎﹶ;->ʽʽ:Lᴵי/ˏי;

    invoke-virtual {p2, p0, v0}, Lᴵי/ˏי;->ʽᵔ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public final ʾˊ()Ljava/lang/Runnable;
    .locals 3

    .prologue
    :goto_0
    iget-object v0, p0, Lˊʽ/ᵎﹶ;->ᴵᵔ:Lˊʽ/ٴﹶ;

    invoke-virtual {v0}, Lˊʽ/ٴﹶ;->ˈ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lˊʽ/ᵎﹶ;->ˊʻ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lˊʽ/ᵎﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    iget-object v2, p0, Lˊʽ/ᵎﹶ;->ᴵᵔ:Lˊʽ/ٴﹶ;

    invoke-virtual {v2}, Lˊʽ/ٴﹶ;->ʽ()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    return-object v0
.end method

.method public final ʾˋ(JLᴵי/ٴﹶ;)V
    .locals 1

    iget-object v0, p0, Lˊʽ/ᵎﹶ;->ᴵˊ:Lᴵי/ʽʽ;

    invoke-interface {v0, p1, p2, p3}, Lᴵי/ʽʽ;->ʾˋ(JLᴵי/ٴﹶ;)V

    return-void
.end method

.method public final ˑ()Z
    .locals 4

    .prologue
    iget-object v0, p0, Lˊʽ/ᵎﹶ;->ˊʻ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lˊʽ/ᵎﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    iget v3, p0, Lˊʽ/ᵎﹶ;->ˈٴ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v3, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final ـᵎ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    iget-object p1, p0, Lˊʽ/ᵎﹶ;->ᴵᵔ:Lˊʽ/ٴﹶ;

    invoke-virtual {p1, p2}, Lˊʽ/ٴﹶ;->ﹳٴ(Ljava/lang/Runnable;)Z

    sget-object p1, Lˊʽ/ᵎﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p2

    iget v0, p0, Lˊʽ/ᵎﹶ;->ˈٴ:I

    if-ge p2, v0, :cond_1

    invoke-virtual {p0}, Lˊʽ/ᵎﹶ;->ˑ()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lˊʽ/ᵎﹶ;->ʾˊ()Ljava/lang/Runnable;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lˈˊ/ᵔﹳ;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, v1, v2}, Lˈˊ/ᵔﹳ;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object p2, p0, Lˊʽ/ᵎﹶ;->ʽʽ:Lᴵי/ˏי;

    invoke-static {p2, p0, v0}, Lˊʽ/ⁱˊ;->ʼˎ(Lᴵי/ˏי;Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public final ᴵʼ(JLᴵי/ʻˋ;Lˈי/ᵔᵢ;)Lᴵי/ᵎⁱ;
    .locals 1

    iget-object v0, p0, Lˊʽ/ᵎﹶ;->ᴵˊ:Lᴵי/ʽʽ;

    invoke-interface {v0, p1, p2, p3, p4}, Lᴵי/ʽʽ;->ᴵʼ(JLᴵי/ʻˋ;Lˈי/ᵔᵢ;)Lᴵי/ᵎⁱ;

    move-result-object p1

    return-object p1
.end method
