.class public final Lʽˆ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Lˑʼ/ᵎˊ;

.field public final ʽ:J

.field public ˆʾ:I

.field public final ˈ:J

.field public final ˑﹳ:I

.field public ٴﹶ:J

.field public final ᵎﹶ:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final ᵔᵢ:Landroidx/leanback/widget/ʻٴ;

.field public final ⁱˊ:D

.field public final ﹳٴ:D

.field public final ﾞᴵ:Ljava/util/concurrent/ArrayBlockingQueue;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/ʻٴ;Lʾٴ/ﹳٴ;Lˑʼ/ᵎˊ;)V
    .locals 8

    iget-wide v0, p2, Lʾٴ/ﹳٴ;->ˈ:D

    iget-wide v2, p2, Lʾٴ/ﹳٴ;->ˑﹳ:D

    iget p2, p2, Lʾٴ/ﹳٴ;->ﾞᴵ:I

    int-to-long v4, p2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lʽˆ/ʽ;->ﹳٴ:D

    iput-wide v2, p0, Lʽˆ/ʽ;->ⁱˊ:D

    iput-wide v4, p0, Lʽˆ/ʽ;->ʽ:J

    iput-object p1, p0, Lʽˆ/ʽ;->ᵔᵢ:Landroidx/leanback/widget/ʻٴ;

    iput-object p3, p0, Lʽˆ/ʽ;->ʼˎ:Lˑʼ/ᵎˊ;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lʽˆ/ʽ;->ˈ:J

    double-to-int p1, v0

    iput p1, p0, Lʽˆ/ʽ;->ˑﹳ:I

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v6, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v6, p0, Lʽˆ/ʽ;->ﾞᴵ:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lʽˆ/ʽ;->ᵎﹶ:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 p1, 0x0

    iput p1, p0, Lʽˆ/ʽ;->ˆʾ:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lʽˆ/ʽ;->ٴﹶ:J

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Lﹳˎ/ⁱˊ;Lˏـ/ᵎﹶ;)V
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sending report through Google DataTransport: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lﹳˎ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebaseCrashlytics"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    nop

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lʽˆ/ʽ;->ˈ:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lﹳˎ/ⁱˊ;->ﹳٴ:Lˈˋ/ᴵˊ;

    new-instance v2, Lᴵˆ/ﹳٴ;

    sget-object v3, Lᴵˆ/ʽ;->ʽʽ:Lᴵˆ/ʽ;

    invoke-direct {v2, v1, v3}, Lᴵˆ/ﹳٴ;-><init>(Ljava/lang/Object;Lᴵˆ/ʽ;)V

    new-instance v1, Lʽˆ/ⁱˊ;

    invoke-direct {v1, v0, p0, p2, p1}, Lʽˆ/ⁱˊ;-><init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lʽˆ/ʽ;->ᵔᵢ:Landroidx/leanback/widget/ʻٴ;

    invoke-virtual {p1, v2, v1}, Landroidx/leanback/widget/ʻٴ;->ʻٴ(Lᴵˆ/ﹳٴ;Lᴵˆ/ﾞᴵ;)V

    return-void
.end method

.method public final ﹳٴ()I
    .locals 4

    .prologue
    iget-wide v0, p0, Lʽˆ/ʽ;->ٴﹶ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lʽˆ/ʽ;->ٴﹶ:J

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lʽˆ/ʽ;->ٴﹶ:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lʽˆ/ʽ;->ʽ:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lʽˆ/ʽ;->ﾞᴵ:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v1

    iget v2, p0, Lʽˆ/ʽ;->ˑﹳ:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lʽˆ/ʽ;->ˆʾ:I

    add-int/2addr v1, v0

    const/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lʽˆ/ʽ;->ˆʾ:I

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    iget v1, p0, Lʽˆ/ʽ;->ˆʾ:I

    if-eq v1, v0, :cond_2

    iput v0, p0, Lʽˆ/ʽ;->ˆʾ:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lʽˆ/ʽ;->ٴﹶ:J

    :cond_2
    return v0
.end method
