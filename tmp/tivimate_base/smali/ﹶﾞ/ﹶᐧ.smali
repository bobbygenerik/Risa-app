.class public final Lﹶﾞ/ﹶᐧ;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final ʽʽ:Ljava/lang/String;

.field public final ʾˋ:J

.field public final synthetic ˈٴ:Lﹶﾞ/ʻˋ;

.field public final ᴵˊ:Z


# direct methods
.method public constructor <init>(Lﹶﾞ/ʻˋ;Ljava/lang/Runnable;ZLjava/lang/String;)V
    .locals 2

    .prologue
    iput-object p1, p0, Lﹶﾞ/ﹶᐧ;->ˈٴ:Lﹶﾞ/ʻˋ;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    sget-object p2, Lﹶﾞ/ʻˋ;->ᵎˊ:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lﹶﾞ/ﹶᐧ;->ʾˋ:J

    iput-object p4, p0, Lﹶﾞ/ﹶᐧ;->ʽʽ:Ljava/lang/String;

    iput-boolean p3, p0, Lﹶﾞ/ﹶᐧ;->ᴵˊ:Z

    const-wide p2, 0x7fffffffffffffffL

    cmp-long p2, v0, p2

    if-nez p2, :cond_0

    iget-object p1, p1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Lﹶﾞ/ᵎʻ;

    iget-object p1, p1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string p2, "Tasks index overflow"

    invoke-virtual {p1, p2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ʻˋ;Ljava/util/concurrent/Callable;Z)V
    .locals 2

    .prologue
    iput-object p1, p0, Lﹶﾞ/ﹶᐧ;->ˈٴ:Lﹶﾞ/ʻˋ;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object p2, Lﹶﾞ/ʻˋ;->ᵎˊ:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lﹶﾞ/ﹶᐧ;->ʾˋ:J

    const-string p2, "Task exception on worker thread"

    iput-object p2, p0, Lﹶﾞ/ﹶᐧ;->ʽʽ:Ljava/lang/String;

    iput-boolean p3, p0, Lﹶﾞ/ﹶᐧ;->ᴵˊ:Z

    const-wide p2, 0x7fffffffffffffffL

    cmp-long p2, v0, p2

    if-nez p2, :cond_0

    iget-object p1, p1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Lﹶﾞ/ᵎʻ;

    iget-object p1, p1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string p2, "Tasks index overflow"

    invoke-virtual {p1, p2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    check-cast p1, Lﹶﾞ/ﹶᐧ;

    iget-boolean v0, p1, Lﹶﾞ/ﹶᐧ;->ᴵˊ:Z

    iget-boolean v1, p0, Lﹶﾞ/ﹶᐧ;->ᴵˊ:Z

    if-eq v1, v0, :cond_0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lﹶﾞ/ﹶᐧ;->ʾˋ:J

    iget-wide v2, p0, Lﹶﾞ/ﹶᐧ;->ʾˋ:J

    cmp-long p1, v2, v0

    if-gez p1, :cond_2

    :cond_1
    const/4 p1, -0x1

    return p1

    :cond_2
    if-lez p1, :cond_3

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    iget-object p1, p0, Lﹶﾞ/ﹶᐧ;->ˈٴ:Lﹶﾞ/ʻˋ;

    iget-object p1, p1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Lﹶﾞ/ᵎʻ;

    iget-object p1, p1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ٴᵢ:Lﹶﾞ/ʼˈ;

    const-string v0, "Two tasks share the same index. index"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final setException(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lﹶﾞ/ﹶᐧ;->ˈٴ:Lﹶﾞ/ʻˋ;

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    iget-object v1, p0, Lﹶﾞ/ﹶᐧ;->ʽʽ:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method
