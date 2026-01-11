.class public final Lﹶ/ʾᵎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹶ/ˆʾ;


# static fields
.field public static ـᵎ:I

.field public static final ٴﹳ:Ljava/lang/Object;

.field public static ᵎʻ:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field public ʻˋ:Landroid/content/Context;

.field public ʻٴ:Lʾﾞ/ﾞᴵ;

.field public ʻᵎ:Z

.field public ʼʼ:Lﹶ/ˑﹳ;

.field public ʼˈ:Ljava/nio/ByteBuffer;

.field public final ʼˎ:Ljava/util/ArrayDeque;

.field public final ʼᐧ:Lﹶ/ᵢˏ;

.field public final ʽ:Lﹶ/ᵔʾ;

.field public ʽʽ:Lﹶ/ﹳᐧ;

.field public ʽﹳ:Lﹶ/ᵔﹳ;

.field public ʾˋ:Lʽⁱ/ˑﹳ;

.field public ʾᵎ:Lﹶ/ⁱˊ;

.field public ʿ:I

.field public ʿᵢ:Z

.field public final ˆʾ:I

.field public ˆﾞ:Z

.field public final ˈ:Lﹶ/ᴵᵔ;

.field public ˈʿ:J

.field public ˈˏ:J

.field public ˈٴ:Lʽⁱ/ᵎⁱ;

.field public ˈⁱ:Z

.field public final ˉʿ:Lʿٴ/ˆʾ;

.field public final ˉˆ:Lˑʼ/ᵎˊ;

.field public ˉـ:Z

.field public ˉٴ:J

.field public ˊʻ:Ljava/nio/ByteBuffer;

.field public ˊˋ:I

.field public ˊᵔ:Z

.field public ˋᵔ:Ljava/nio/ByteBuffer;

.field public ˏי:Lﹶ/ᵔﹳ;

.field public ˏᵢ:J

.field public final ˑʼ:Z

.field public ˑٴ:F

.field public final ˑﹳ:Lʾﾞ/ﾞʻ;

.field public יـ:Lᐧﹳ/ʽ;

.field public ـˆ:Landroid/media/AudioTrack;

.field public ـˏ:Z

.field public ـﹶ:Landroid/os/Looper;

.field public ٴʼ:J

.field public ٴᵢ:I

.field public ٴﹶ:Lﹶ/ـˆ;

.field public ᐧᴵ:Z

.field public ᐧﾞ:Lⁱʽ/ﹳٴ;

.field public ᴵʼ:J

.field public ᴵˊ:Lﹶ/ﹳᐧ;

.field public ᴵˑ:Z

.field public ᴵᵔ:Z

.field public ᵎˊ:J

.field public ᵎᵔ:Lʽⁱ/ﾞᴵ;

.field public ᵎⁱ:J

.field public final ᵎﹶ:Lʼʻ/ʿᵢ;

.field public final ᵔʾ:Lﹶ/ʼʼ;

.field public ᵔי:I

.field public ᵔٴ:Z

.field public final ᵔᵢ:Lﹶ/ˉʿ;

.field public final ᵔﹳ:I

.field public ᵢˏ:Lﹶ/ˏי;

.field public final ⁱˊ:Lᵢ/ﹳٴ;

.field public ﹳـ:Z

.field public final ﹳٴ:Landroid/content/Context;

.field public ﹳᐧ:Lʻʿ/יـ;

.field public ﹳﹳ:Landroid/os/Handler;

.field public ﹶᐧ:J

.field public final ﾞʻ:Lʿٴ/ˆʾ;

.field public final ﾞᴵ:Lﹶ/ˈٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lﹶ/ʾᵎ;->ٴﹳ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lﹶ/ʼᐧ;)V
    .locals 10

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lﹶ/ʼᐧ;->ﹳٴ:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lﹶ/ʾᵎ;->ﹳٴ:Landroid/content/Context;

    sget-object v3, Lʽⁱ/ˑﹳ;->ʽ:Lʽⁱ/ˑﹳ;

    iput-object v3, p0, Lﹶ/ʾᵎ;->ʾˋ:Lʽⁱ/ˑﹳ;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lﹶ/ʼᐧ;->ⁱˊ:Lﹶ/ⁱˊ;

    :goto_1
    iput-object v1, p0, Lﹶ/ʾᵎ;->ʾᵎ:Lﹶ/ⁱˊ;

    iget-object v1, p1, Lﹶ/ʼᐧ;->ʽ:Lᵢ/ﹳٴ;

    iput-object v1, p0, Lﹶ/ʾᵎ;->ⁱˊ:Lᵢ/ﹳٴ;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    iput v2, p0, Lﹶ/ʾᵎ;->ˆʾ:I

    iget-object v3, p1, Lﹶ/ʼᐧ;->ˑﹳ:Lﹶ/ʼʼ;

    iput-object v3, p0, Lﹶ/ʾᵎ;->ᵔʾ:Lﹶ/ʼʼ;

    iget-object v3, p1, Lﹶ/ʼᐧ;->ᵎﹶ:Lˑʼ/ᵎˊ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, p0, Lﹶ/ʾᵎ;->ˉˆ:Lˑʼ/ᵎˊ;

    new-instance v3, Lﹶ/ˉʿ;

    new-instance v4, Lⁱʽ/ﹳٴ;

    invoke-direct {v4, p0}, Lⁱʽ/ﹳٴ;-><init>(Ljava/lang/Object;)V

    invoke-direct {v3, v4}, Lﹶ/ˉʿ;-><init>(Lⁱʽ/ﹳٴ;)V

    iput-object v3, p0, Lﹶ/ʾᵎ;->ᵔᵢ:Lﹶ/ˉʿ;

    new-instance v3, Lﹶ/ᵔʾ;

    invoke-direct {v3}, Lʾﾞ/ʼˎ;-><init>()V

    iput-object v3, p0, Lﹶ/ʾᵎ;->ʽ:Lﹶ/ᵔʾ;

    new-instance v4, Lﹶ/ᴵᵔ;

    invoke-direct {v4}, Lʾﾞ/ʼˎ;-><init>()V

    sget-object v5, Lᐧˎ/ʼʼ;->ⁱˊ:[B

    iput-object v5, v4, Lﹶ/ᴵᵔ;->ˉʿ:[B

    iput-object v4, p0, Lﹶ/ʾᵎ;->ˈ:Lﹶ/ᴵᵔ;

    new-instance v5, Lʾﾞ/ﾞʻ;

    invoke-direct {v5}, Lʾﾞ/ʼˎ;-><init>()V

    iput-object v5, p0, Lﹶ/ʾᵎ;->ˑﹳ:Lʾﾞ/ﾞʻ;

    new-instance v5, Lﹶ/ˈٴ;

    invoke-direct {v5}, Lʾﾞ/ʼˎ;-><init>()V

    iput-object v5, p0, Lﹶ/ʾᵎ;->ﾞᴵ:Lﹶ/ˈٴ;

    invoke-static {v4, v3}, Lʼʻ/ᵎⁱ;->ᵔﹳ(Ljava/lang/Object;Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object v3

    iput-object v3, p0, Lﹶ/ʾᵎ;->ᵎﹶ:Lʼʻ/ʿᵢ;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lﹶ/ʾᵎ;->ˑٴ:F

    iput v2, p0, Lﹶ/ʾᵎ;->ʿ:I

    new-instance v3, Lʽⁱ/ﾞᴵ;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lﹶ/ʾᵎ;->ᵎᵔ:Lʽⁱ/ﾞᴵ;

    new-instance v4, Lﹶ/ﹳᐧ;

    sget-object v5, Lʽⁱ/ᵎⁱ;->ˈ:Lʽⁱ/ᵎⁱ;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v4 .. v9}, Lﹶ/ﹳᐧ;-><init>(Lʽⁱ/ᵎⁱ;JJ)V

    iput-object v4, p0, Lﹶ/ʾᵎ;->ʽʽ:Lﹶ/ﹳᐧ;

    iput-object v5, p0, Lﹶ/ʾᵎ;->ˈٴ:Lʽⁱ/ᵎⁱ;

    iput-boolean v2, p0, Lﹶ/ʾᵎ;->ᴵᵔ:Z

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lﹶ/ʾᵎ;->ʼˎ:Ljava/util/ArrayDeque;

    new-instance v2, Lʿٴ/ˆʾ;

    invoke-direct {v2}, Lʿٴ/ˆʾ;-><init>()V

    iput-object v2, p0, Lﹶ/ʾᵎ;->ﾞʻ:Lʿٴ/ˆʾ;

    new-instance v2, Lʿٴ/ˆʾ;

    invoke-direct {v2}, Lʿٴ/ˆʾ;-><init>()V

    iput-object v2, p0, Lﹶ/ʾᵎ;->ˉʿ:Lʿٴ/ˆʾ;

    iget-object p1, p1, Lﹶ/ʼᐧ;->ﾞᴵ:Lﹶ/ᵢˏ;

    iput-object p1, p0, Lﹶ/ʾᵎ;->ʼᐧ:Lﹶ/ᵢˏ;

    const/16 p1, 0x22

    const/4 v2, -0x1

    if-lt v1, p1, :cond_3

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result p1

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_3

    move v2, p1

    :cond_3
    :goto_2
    iput v2, p0, Lﹶ/ʾᵎ;->ᵔﹳ:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lﹶ/ʾᵎ;->ˑʼ:Z

    return-void
.end method

.method public static ˉٴ(Landroid/media/AudioTrack;)Z
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final flush()V
    .locals 11

    .prologue
    invoke-virtual {p0}, Lﹶ/ʾᵎ;->ٴᵢ()Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iput-wide v1, p0, Lﹶ/ʾᵎ;->ˉٴ:J

    iput-wide v1, p0, Lﹶ/ʾᵎ;->ᵎⁱ:J

    iput-wide v1, p0, Lﹶ/ʾᵎ;->ٴʼ:J

    iput-wide v1, p0, Lﹶ/ʾᵎ;->ᵎˊ:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lﹶ/ʾᵎ;->ˊᵔ:Z

    iput v0, p0, Lﹶ/ʾᵎ;->ᵔי:I

    new-instance v4, Lﹶ/ﹳᐧ;

    iget-object v5, p0, Lﹶ/ʾᵎ;->ˈٴ:Lʽⁱ/ᵎⁱ;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v4 .. v9}, Lﹶ/ﹳᐧ;-><init>(Lʽⁱ/ᵎⁱ;JJ)V

    iput-object v4, p0, Lﹶ/ʾᵎ;->ʽʽ:Lﹶ/ﹳᐧ;

    iput-wide v1, p0, Lﹶ/ʾᵎ;->ˈʿ:J

    iput-object v3, p0, Lﹶ/ʾᵎ;->ᴵˊ:Lﹶ/ﹳᐧ;

    iget-object v4, p0, Lﹶ/ʾᵎ;->ʼˎ:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    iput-object v3, p0, Lﹶ/ʾᵎ;->ˋᵔ:Ljava/nio/ByteBuffer;

    iput v0, p0, Lﹶ/ʾᵎ;->ˊˋ:I

    iput-object v3, p0, Lﹶ/ʾᵎ;->ʼˈ:Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lﹶ/ʾᵎ;->ﹳـ:Z

    iput-boolean v0, p0, Lﹶ/ʾᵎ;->ـˏ:Z

    iput-boolean v0, p0, Lﹶ/ʾᵎ;->ˈⁱ:Z

    iput-object v3, p0, Lﹶ/ʾᵎ;->ˊʻ:Ljava/nio/ByteBuffer;

    iput v0, p0, Lﹶ/ʾᵎ;->ٴᵢ:I

    iget-object v0, p0, Lﹶ/ʾᵎ;->ˈ:Lﹶ/ᴵᵔ;

    iput-wide v1, v0, Lﹶ/ᴵᵔ;->ˉˆ:J

    iget-object v0, p0, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    iget-object v0, v0, Lﹶ/ᵔﹳ;->ʼˎ:Lʾﾞ/ﾞᴵ;

    iput-object v0, p0, Lﹶ/ʾᵎ;->ʻٴ:Lʾﾞ/ﾞᴵ;

    invoke-virtual {v0}, Lʾﾞ/ﾞᴵ;->ﹳٴ()V

    iget-object v0, p0, Lﹶ/ʾᵎ;->ᵔᵢ:Lﹶ/ˉʿ;

    iget-object v0, v0, Lﹶ/ˉʿ;->ʽ:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    iget-object v0, p0, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    invoke-static {v0}, Lﹶ/ʾᵎ;->ˉٴ(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lﹶ/ʾᵎ;->ٴﹶ:Lﹶ/ـˆ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    invoke-virtual {v0, v4}, Lﹶ/ـˆ;->ﹳٴ(Landroid/media/AudioTrack;)V

    :cond_1
    iget-object v0, p0, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    invoke-virtual {v0}, Lﹶ/ᵔﹳ;->ﹳٴ()Lﹶ/ʼˎ;

    move-result-object v8

    iget-object v0, p0, Lﹶ/ʾᵎ;->ˏי:Lﹶ/ᵔﹳ;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    iput-object v3, p0, Lﹶ/ʾᵎ;->ˏי:Lﹶ/ᵔﹳ;

    :cond_2
    iget-object v0, p0, Lﹶ/ʾᵎ;->ᵔᵢ:Lﹶ/ˉʿ;

    invoke-virtual {v0}, Lﹶ/ˉʿ;->ﾞᴵ()V

    iput-object v3, v0, Lﹶ/ˉʿ;->ʽ:Landroid/media/AudioTrack;

    iput-object v3, v0, Lﹶ/ˉʿ;->ˑﹳ:Lﹶ/ﾞʻ;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_3

    iget-object v0, p0, Lﹶ/ʾᵎ;->ᵢˏ:Lﹶ/ˏי;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lﹶ/ˏי;->ⁱˊ()V

    iput-object v3, p0, Lﹶ/ʾᵎ;->ᵢˏ:Lﹶ/ˏי;

    :cond_3
    iget-object v5, p0, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    iget-object v6, p0, Lﹶ/ʾᵎ;->יـ:Lᐧﹳ/ʽ;

    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v10, Lﹶ/ʾᵎ;->ٴﹳ:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    sget-object v0, Lﹶ/ʾᵎ;->ᵎʻ:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_4

    sget-object v0, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    new-instance v0, Lᐧˎ/ʾᵎ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lﹶ/ʾᵎ;->ᵎʻ:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_4
    :goto_0
    sget v0, Lﹶ/ʾᵎ;->ـᵎ:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lﹶ/ʾᵎ;->ـᵎ:I

    sget-object v0, Lﹶ/ʾᵎ;->ᵎʻ:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lˆי/ˉˆ;

    const/4 v9, 0x3

    invoke-direct/range {v4 .. v9}, Lˆי/ˉˆ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x14

    invoke-interface {v0, v4, v6, v7, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v3, p0, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    :goto_2
    iget-object v0, p0, Lﹶ/ʾᵎ;->ˉʿ:Lʿٴ/ˆʾ;

    iput-object v3, v0, Lʿٴ/ˆʾ;->ʽ:Ljava/io/Serializable;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v4, v0, Lʿٴ/ˆʾ;->ﹳٴ:J

    iput-wide v4, v0, Lʿٴ/ˆʾ;->ⁱˊ:J

    iget-object v0, p0, Lﹶ/ʾᵎ;->ﾞʻ:Lʿٴ/ˆʾ;

    iput-object v3, v0, Lʿٴ/ˆʾ;->ʽ:Ljava/io/Serializable;

    iput-wide v4, v0, Lʿٴ/ˆʾ;->ﹳٴ:J

    iput-wide v4, v0, Lʿٴ/ˆʾ;->ⁱˊ:J

    iput-wide v1, p0, Lﹶ/ʾᵎ;->ˈˏ:J

    iput-wide v1, p0, Lﹶ/ʾᵎ;->ﹶᐧ:J

    iget-object v0, p0, Lﹶ/ʾᵎ;->ﹳﹳ:Landroid/os/Handler;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public final reset()V
    .locals 5

    .prologue
    invoke-virtual {p0}, Lﹶ/ʾᵎ;->flush()V

    iget-object v0, p0, Lﹶ/ʾᵎ;->ᵎﹶ:Lʼʻ/ʿᵢ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lʼʻ/ᵎⁱ;->ˉʿ(I)Lʼʻ/ٴᵢ;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lʼʻ/ٴᵢ;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lʼʻ/ٴᵢ;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʾﾞ/ᵔᵢ;

    invoke-interface {v2}, Lʾﾞ/ᵔᵢ;->reset()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lﹶ/ʾᵎ;->ˑﹳ:Lʾﾞ/ﾞʻ;

    invoke-virtual {v0}, Lʾﾞ/ʼˎ;->reset()V

    iget-object v0, p0, Lﹶ/ʾᵎ;->ﾞᴵ:Lﹶ/ˈٴ;

    invoke-virtual {v0}, Lʾﾞ/ʼˎ;->reset()V

    iget-object v0, p0, Lﹶ/ʾᵎ;->ʻٴ:Lʾﾞ/ﾞᴵ;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lʾﾞ/ﾞᴵ;->ﹳٴ:Lʼʻ/ᵎⁱ;

    move v3, v1

    :goto_1
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʾﾞ/ᵔᵢ;

    invoke-interface {v4}, Lʾﾞ/ᵔᵢ;->flush()V

    invoke-interface {v4}, Lʾﾞ/ᵔᵢ;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-array v2, v1, [Ljava/nio/ByteBuffer;

    iput-object v2, v0, Lʾﾞ/ﾞᴵ;->ʽ:[Ljava/nio/ByteBuffer;

    sget-object v2, Lʾﾞ/ᵎﹶ;->ˑﹳ:Lʾﾞ/ᵎﹶ;

    iput-boolean v1, v0, Lʾﾞ/ﾞᴵ;->ˈ:Z

    :cond_2
    iput-boolean v1, p0, Lﹶ/ʾᵎ;->ᴵˑ:Z

    iput-boolean v1, p0, Lﹶ/ʾᵎ;->ʻᵎ:Z

    return-void
.end method

.method public final setPreferredDevice(Landroid/media/AudioDeviceInfo;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lⁱʽ/ﹳٴ;

    invoke-direct {v1, p1}, Lⁱʽ/ﹳٴ;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v1, p0, Lﹶ/ʾᵎ;->ᐧﾞ:Lⁱʽ/ﹳٴ;

    iget-object v1, p0, Lﹶ/ʾᵎ;->ʼʼ:Lﹶ/ˑﹳ;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lﹶ/ˑﹳ;->ⁱˊ(Landroid/media/AudioDeviceInfo;)V

    :cond_1
    iget-object p1, p0, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lﹶ/ʾᵎ;->ᐧﾞ:Lⁱʽ/ﹳٴ;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, v1, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioDeviceInfo;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    :cond_3
    return-void
.end method

.method public final ʻٴ(Lʽⁱ/ﹳᐧ;[I)V
    .locals 27

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-virtual {v1}, Lﹶ/ʾᵎ;->ᵎⁱ()V

    iget-object v0, v3, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    iget v2, v3, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    iget v4, v3, Lʽⁱ/ﹳᐧ;->ˊʻ:I

    iget v5, v3, Lʽⁱ/ﹳᐧ;->ˉٴ:I

    const-string v6, "audio/raw"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iget-object v9, v1, Lﹶ/ʾᵎ;->ʼᐧ:Lﹶ/ᵢˏ;

    const/4 v10, 0x1

    const/4 v11, -0x1

    if-eqz v6, :cond_4

    invoke-static {v5}, Lᐧˎ/ʼʼ;->ˈʿ(I)Z

    move-result v6

    invoke-static {v6}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    invoke-static {v5}, Lᐧˎ/ʼʼ;->ˏי(I)I

    move-result v6

    mul-int/2addr v6, v4

    new-instance v12, Lʼʻ/ˊʻ;

    const/4 v13, 0x4

    invoke-direct {v12, v13}, Lʼʻ/ʽʽ;-><init>(I)V

    iget-object v13, v1, Lﹶ/ʾᵎ;->ᵎﹶ:Lʼʻ/ʿᵢ;

    invoke-virtual {v12, v13}, Lʼʻ/ʽʽ;->ˈ(Ljava/lang/Iterable;)V

    iget-object v13, v1, Lﹶ/ʾᵎ;->ˑﹳ:Lʾﾞ/ﾞʻ;

    invoke-virtual {v12, v13}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V

    iget-object v13, v1, Lﹶ/ʾᵎ;->ⁱˊ:Lᵢ/ﹳٴ;

    iget-object v13, v13, Lᵢ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v13, [Lʾﾞ/ᵔᵢ;

    invoke-virtual {v12, v13}, Lʼʻ/ʽʽ;->ⁱˊ([Ljava/lang/Object;)V

    new-instance v13, Lʾﾞ/ﾞᴵ;

    invoke-virtual {v12}, Lʼʻ/ˊʻ;->ᵎﹶ()Lʼʻ/ʿᵢ;

    move-result-object v12

    invoke-direct {v13, v12}, Lʾﾞ/ﾞᴵ;-><init>(Lʼʻ/ᵎⁱ;)V

    iget-object v12, v1, Lﹶ/ʾᵎ;->ʻٴ:Lʾﾞ/ﾞᴵ;

    invoke-virtual {v13, v12}, Lʾﾞ/ﾞᴵ;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v13, v1, Lﹶ/ʾᵎ;->ʻٴ:Lʾﾞ/ﾞᴵ;

    :cond_0
    iget v12, v3, Lʽⁱ/ﹳᐧ;->ᵎⁱ:I

    iget v14, v3, Lʽⁱ/ﹳᐧ;->ٴʼ:I

    iget-object v15, v1, Lﹶ/ʾᵎ;->ˈ:Lﹶ/ᴵᵔ;

    iput v12, v15, Lﹶ/ᴵᵔ;->ʼˎ:I

    iput v14, v15, Lﹶ/ᴵᵔ;->ˆʾ:I

    iget-object v12, v1, Lﹶ/ʾᵎ;->ʽ:Lﹶ/ᵔʾ;

    move-object/from16 v14, p2

    iput-object v14, v12, Lﹶ/ᵔʾ;->ʼˎ:[I

    new-instance v12, Lʾﾞ/ᵎﹶ;

    invoke-direct {v12, v2, v4, v5}, Lʾﾞ/ᵎﹶ;-><init>(III)V

    :try_start_0
    iget-object v2, v13, Lʾﾞ/ﾞᴵ;->ﹳٴ:Lʼʻ/ᵎⁱ;

    sget-object v4, Lʾﾞ/ᵎﹶ;->ˑﹳ:Lʾﾞ/ᵎﹶ;

    invoke-virtual {v12, v4}, Lʾﾞ/ᵎﹶ;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lʾﾞ/ᵔᵢ;

    invoke-interface {v5, v12}, Lʾﾞ/ᵔᵢ;->ᵎﹶ(Lʾﾞ/ᵎﹶ;)Lʾﾞ/ᵎﹶ;

    move-result-object v14

    invoke-interface {v5}, Lʾﾞ/ᵔᵢ;->ʽ()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lʾﾞ/ᵎﹶ;->ˑﹳ:Lʾﾞ/ᵎﹶ;

    invoke-virtual {v14, v5}, Lʾﾞ/ᵎﹶ;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V
    :try_end_0
    .catch Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v14

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget v2, v12, Lʾﾞ/ᵎﹶ;->ⁱˊ:I

    iget v4, v12, Lʾﾞ/ᵎﹶ;->ʽ:I

    iget v5, v12, Lʾﾞ/ᵎﹶ;->ﹳٴ:I

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lᐧˎ/ʼʼ;->יـ(I)I

    move-result v9

    invoke-static {v4}, Lᐧˎ/ʼʼ;->ˏי(I)I

    move-result v12

    mul-int/2addr v12, v2

    move v7, v5

    move v8, v9

    move-object v2, v13

    const/4 v5, 0x0

    const/4 v13, 0x0

    move v9, v4

    move v4, v6

    move v6, v12

    const/4 v12, 0x0

    goto/16 :goto_7

    :cond_3
    :try_start_1
    new-instance v0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v0, v12}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lʾﾞ/ᵎﹶ;)V

    throw v0
    :try_end_1
    .catch Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    invoke-direct {v2, v0, v3}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;Lʽⁱ/ﹳᐧ;)V

    throw v2

    :cond_4
    new-instance v13, Lʾﾞ/ﾞᴵ;

    sget-object v5, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    invoke-direct {v13, v5}, Lʾﾞ/ﾞᴵ;-><init>(Lʼʻ/ᵎⁱ;)V

    iget v5, v1, Lﹶ/ʾᵎ;->ˆʾ:I

    if-eqz v5, :cond_f

    iget-boolean v5, v1, Lﹶ/ʾᵎ;->ʻᵎ:Z

    if-eqz v5, :cond_5

    sget-object v5, Lﹶ/ﾞᴵ;->ˈ:Lﹶ/ﾞᴵ;

    goto/16 :goto_6

    :cond_5
    iget-object v5, v1, Lﹶ/ʾᵎ;->ʾˋ:Lʽⁱ/ˑﹳ;

    iget-object v6, v1, Lﹶ/ʾᵎ;->ˉˆ:Lˑʼ/ᵎˊ;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v12, v3, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1d

    if-lt v14, v15, :cond_e

    const/4 v15, -0x1

    if-ne v12, v15, :cond_6

    goto/16 :goto_5

    :cond_6
    iget-object v15, v6, Lˑʼ/ᵎˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v15, Landroid/content/Context;

    iget-object v8, v6, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_3

    :cond_7
    if-eqz v15, :cond_9

    invoke-static {v15}, Lʾﾞ/ˑﹳ;->ˈ(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v8

    const-string v15, "offloadVariableRateSupported"

    invoke-virtual {v8, v15}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    const-string v15, "offloadVariableRateSupported=1"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    goto :goto_1

    :cond_8
    const/4 v8, 0x0

    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v6, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    goto :goto_2

    :cond_9
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v8, v6, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    :goto_2
    iget-object v6, v6, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    :goto_3
    iget-object v8, v3, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v3, Lʽⁱ/ﹳᐧ;->ٴﹶ:Ljava/lang/String;

    invoke-static {v8, v15}, Lʽⁱ/ˉٴ;->ˈ(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_d

    invoke-static {v8}, Lᐧˎ/ʼʼ;->ﹳᐧ(I)I

    move-result v15

    if-ge v14, v15, :cond_a

    goto :goto_4

    :cond_a
    iget v15, v3, Lʽⁱ/ﹳᐧ;->ˊʻ:I

    invoke-static {v15}, Lᐧˎ/ʼʼ;->יـ(I)I

    move-result v15

    if-nez v15, :cond_b

    sget-object v5, Lﹶ/ﾞᴵ;->ˈ:Lﹶ/ﾞᴵ;

    goto :goto_6

    :cond_b
    :try_start_2
    new-instance v7, Landroid/media/AudioFormat$Builder;

    invoke-direct {v7}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v7, v12}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v7

    invoke-virtual {v7, v15}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v8, 0x1f

    if-lt v14, v8, :cond_c

    invoke-virtual {v5}, Lʽⁱ/ˑﹳ;->ﹳٴ()Lﹳי/ʽ;

    move-result-object v5

    iget-object v5, v5, Lﹳי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast v5, Landroid/media/AudioAttributes;

    invoke-static {v7, v5, v6}, Lʼᵢ/ˉˆ;->ﹳٴ(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Lﹶ/ﾞᴵ;

    move-result-object v5

    goto :goto_6

    :cond_c
    invoke-virtual {v5}, Lʽⁱ/ˑﹳ;->ﹳٴ()Lﹳי/ʽ;

    move-result-object v5

    iget-object v5, v5, Lﹳי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast v5, Landroid/media/AudioAttributes;

    invoke-static {v7, v5, v6}, Lʼˉ/ʽ;->ᵔᵢ(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Lﹶ/ﾞᴵ;

    move-result-object v5

    goto :goto_6

    :catch_1
    sget-object v5, Lﹶ/ﾞᴵ;->ˈ:Lﹶ/ﾞᴵ;

    goto :goto_6

    :cond_d
    :goto_4
    sget-object v5, Lﹶ/ﾞᴵ;->ˈ:Lﹶ/ﾞᴵ;

    goto :goto_6

    :cond_e
    :goto_5
    sget-object v5, Lﹶ/ﾞᴵ;->ˈ:Lﹶ/ﾞᴵ;

    goto :goto_6

    :cond_f
    sget-object v5, Lﹶ/ﾞᴵ;->ˈ:Lﹶ/ﾞᴵ;

    :goto_6
    iget v6, v1, Lﹶ/ʾᵎ;->ˆʾ:I

    if-eqz v6, :cond_10

    iget-boolean v6, v5, Lﹶ/ﾞᴵ;->ﹳٴ:Z

    if-eqz v6, :cond_10

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v3, Lʽⁱ/ﹳᐧ;->ٴﹶ:Ljava/lang/String;

    invoke-static {v0, v6}, Lʽⁱ/ˉٴ;->ˈ(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lᐧˎ/ʼʼ;->יـ(I)I

    move-result v9

    iget-boolean v4, v5, Lﹶ/ﾞᴵ;->ⁱˊ:Z

    move v7, v2

    move v8, v9

    move v5, v10

    move v12, v5

    move-object v2, v13

    move v13, v4

    move v9, v6

    move v4, v11

    move v6, v4

    goto :goto_7

    :cond_10
    iget-object v4, v1, Lﹶ/ʾᵎ;->ʾᵎ:Lﹶ/ⁱˊ;

    iget-object v5, v1, Lﹶ/ʾᵎ;->ʾˋ:Lʽⁱ/ˑﹳ;

    invoke-virtual {v4, v5, v3}, Lﹶ/ⁱˊ;->ˈ(Lʽⁱ/ˑﹳ;Lʽⁱ/ﹳᐧ;)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_24

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move v7, v2

    move v8, v9

    move v4, v11

    move v6, v4

    move-object v2, v13

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v9, v5

    const/4 v5, 0x2

    :goto_7
    const-string v14, ") for: "

    if-eqz v9, :cond_23

    if-eqz v8, :cond_22

    iget v14, v3, Lʽⁱ/ﹳᐧ;->ˆʾ:I

    const-string v15, "audio/vnd.dts.hd;profile=lbr"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-ne v14, v11, :cond_11

    const v14, 0xbb800

    :cond_11
    invoke-static {v7, v8, v9}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    const/4 v15, -0x2

    if-eq v0, v15, :cond_12

    move v15, v10

    goto :goto_8

    :cond_12
    const/4 v15, 0x0

    :goto_8
    invoke-static {v15}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    if-eq v6, v11, :cond_13

    move v15, v6

    goto :goto_9

    :cond_13
    move v15, v10

    :goto_9
    if-eqz v12, :cond_14

    const-wide/high16 v17, 0x4020000000000000L    # 8.0

    goto :goto_a

    :cond_14
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    :goto_a
    iget-object v11, v1, Lﹶ/ʾᵎ;->ᵔʾ:Lﹶ/ʼʼ;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v20, 0xf4240

    if-eqz v5, :cond_20

    if-eq v5, v10, :cond_1e

    move/from16 v22, v10

    const/4 v10, 0x2

    if-ne v5, v10, :cond_1d

    const/4 v10, 0x5

    const/16 v11, 0x8

    if-ne v9, v10, :cond_15

    const v10, 0x7a120

    :goto_b
    move/from16 v19, v11

    :goto_c
    const/4 v11, -0x1

    goto :goto_d

    :cond_15
    if-ne v9, v11, :cond_16

    const v10, 0xf4240

    goto :goto_b

    :cond_16
    move/from16 v19, v11

    const v10, 0x3d090

    goto :goto_c

    :goto_d
    if-eq v14, v11, :cond_1b

    sget-object v11, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    div-int/lit8 v16, v14, 0x8

    mul-int v23, v19, v16

    sub-int v23, v14, v23

    if-nez v23, :cond_17

    goto :goto_f

    :cond_17
    xor-int/lit8 v14, v14, 0x8

    shr-int/lit8 v14, v14, 0x1f

    or-int/lit8 v14, v14, 0x1

    sget-object v24, Lᵔˏ/ˈ;->ﹳٴ:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v24, v11

    packed-switch v11, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    sub-int v19, v19, v11

    sub-int v11, v11, v19

    if-nez v11, :cond_18

    sget-object v11, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    sget-object v11, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    goto :goto_f

    :cond_18
    if-lez v11, :cond_19

    goto :goto_e

    :pswitch_1
    if-lez v14, :cond_19

    goto :goto_e

    :pswitch_2
    if-gez v14, :cond_19

    :goto_e
    :pswitch_3
    add-int v16, v16, v14

    goto :goto_f

    :pswitch_4
    if-nez v23, :cond_1a

    :cond_19
    :goto_f
    :pswitch_5
    move/from16 v11, v16

    :goto_10
    move-object/from16 v19, v2

    goto :goto_12

    :cond_1a
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v2, "mode was UNNECESSARY, but rounding was necessary"

    invoke-direct {v0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    invoke-static {v9}, Lˊﾞ/ﹳٴ;->ٴﹶ(I)I

    move-result v11

    const v14, -0x7fffffff

    if-eq v11, v14, :cond_1c

    move/from16 v14, v22

    goto :goto_11

    :cond_1c
    const/4 v14, 0x0

    :goto_11
    invoke-static {v14}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    goto :goto_10

    :goto_12
    int-to-long v2, v10

    int-to-long v10, v11

    mul-long/2addr v2, v10

    div-long v2, v2, v20

    invoke-static {v2, v3}, Lˈˊ/ˉˆ;->ᵔᵢ(J)I

    move-result v2

    :goto_13
    move/from16 p2, v4

    goto :goto_15

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1e
    move-object/from16 v19, v2

    move/from16 v22, v10

    invoke-static {v9}, Lˊﾞ/ﹳٴ;->ٴﹶ(I)I

    move-result v2

    const v14, -0x7fffffff

    if-eq v2, v14, :cond_1f

    move/from16 v3, v22

    goto :goto_14

    :cond_1f
    const/4 v3, 0x0

    :goto_14
    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    const v3, 0x2faf080

    int-to-long v10, v3

    int-to-long v2, v2

    mul-long/2addr v10, v2

    div-long v10, v10, v20

    invoke-static {v10, v11}, Lˈˊ/ˉˆ;->ᵔᵢ(J)I

    move-result v2

    goto :goto_13

    :cond_20
    move-object/from16 v19, v2

    move/from16 v22, v10

    mul-int/lit8 v2, v0, 0x4

    const v3, 0x3d090

    int-to-long v10, v3

    move/from16 p2, v4

    int-to-long v3, v7

    mul-long/2addr v10, v3

    move-wide/from16 v23, v3

    int-to-long v3, v15

    mul-long/2addr v10, v3

    div-long v10, v10, v20

    invoke-static {v10, v11}, Lˈˊ/ˉˆ;->ᵔᵢ(J)I

    move-result v10

    const v11, 0xb71b0

    move-wide/from16 v25, v3

    int-to-long v3, v11

    mul-long v3, v3, v23

    mul-long v3, v3, v25

    div-long v3, v3, v20

    invoke-static {v3, v4}, Lˈˊ/ˉˆ;->ᵔᵢ(J)I

    move-result v3

    invoke-static {v2, v10, v3}, Lᐧˎ/ʼʼ;->ʼˎ(III)I

    move-result v2

    :goto_15
    int-to-double v2, v2

    mul-double v2, v2, v17

    double-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v15

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v15

    mul-int v10, v0, v15

    const/4 v0, 0x0

    iput-boolean v0, v1, Lﹶ/ʾᵎ;->ʻᵎ:Z

    new-instance v2, Lﹶ/ᵔﹳ;

    iget-boolean v14, v1, Lﹶ/ʾᵎ;->ᐧᴵ:Z

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v11, v19

    invoke-direct/range {v2 .. v14}, Lﹶ/ᵔﹳ;-><init>(Lʽⁱ/ﹳᐧ;IIIIIIILʾﾞ/ﾞᴵ;ZZZ)V

    invoke-virtual {v1}, Lﹶ/ʾᵎ;->ٴᵢ()Z

    move-result v0

    if-eqz v0, :cond_21

    iput-object v2, v1, Lﹶ/ʾᵎ;->ˏי:Lﹶ/ᵔﹳ;

    return-void

    :cond_21
    iput-object v2, v1, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    return-void

    :cond_22
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid output channel config (mode="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Lʽⁱ/ﹳᐧ;)V

    throw v0

    :cond_23
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid output encoding (mode="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Lʽⁱ/ﹳᐧ;)V

    throw v0

    :cond_24
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unable to configure passthrough for: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Lʽⁱ/ﹳᐧ;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final ʼʼ(J)V
    .locals 9

    .prologue
    iget-object v0, p0, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    const/4 v1, 0x0

    iget-object v2, p0, Lﹶ/ʾᵎ;->ⁱˊ:Lᵢ/ﹳٴ;

    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lﹶ/ᵔﹳ;->ˆʾ:Z

    if-eqz v3, :cond_0

    sget-object v0, Lʽⁱ/ᵎⁱ;->ˈ:Lʽⁱ/ᵎⁱ;

    :goto_0
    move-object v4, v0

    goto :goto_4

    :cond_0
    iget-boolean v3, p0, Lﹶ/ʾᵎ;->ᐧᴵ:Z

    if-nez v3, :cond_4

    iget v3, v0, Lﹶ/ᵔﹳ;->ʽ:I

    if-nez v3, :cond_4

    iget-object v0, v0, Lﹶ/ᵔﹳ;->ﹳٴ:Lʽⁱ/ﹳᐧ;

    iget v0, v0, Lʽⁱ/ﹳᐧ;->ˉٴ:I

    iget-object v0, p0, Lﹶ/ʾᵎ;->ˈٴ:Lʽⁱ/ᵎⁱ;

    iget-object v3, v2, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Lʾﾞ/ٴﹶ;

    iget v4, v0, Lʽⁱ/ᵎⁱ;->ﹳٴ:F

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    const/4 v7, 0x1

    if-lez v6, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    invoke-static {v6}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    iget v6, v3, Lʾﾞ/ٴﹶ;->ʽ:F

    cmpl-float v6, v6, v4

    if-eqz v6, :cond_2

    iput v4, v3, Lʾﾞ/ٴﹶ;->ʽ:F

    iput-boolean v7, v3, Lʾﾞ/ٴﹶ;->ʼˎ:Z

    :cond_2
    iget v4, v0, Lʽⁱ/ᵎⁱ;->ⁱˊ:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_3

    move v5, v7

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    invoke-static {v5}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    iget v5, v3, Lʾﾞ/ٴﹶ;->ˈ:F

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_5

    iput v4, v3, Lʾﾞ/ٴﹶ;->ˈ:F

    iput-boolean v7, v3, Lʾﾞ/ٴﹶ;->ʼˎ:Z

    goto :goto_3

    :cond_4
    sget-object v0, Lʽⁱ/ᵎⁱ;->ˈ:Lʽⁱ/ᵎⁱ;

    :cond_5
    :goto_3
    iput-object v0, p0, Lﹶ/ʾᵎ;->ˈٴ:Lʽⁱ/ᵎⁱ;

    goto :goto_0

    :goto_4
    iget-boolean v0, p0, Lﹶ/ʾᵎ;->ᐧᴵ:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    iget v3, v0, Lﹶ/ᵔﹳ;->ʽ:I

    if-nez v3, :cond_6

    iget-object v0, v0, Lﹶ/ᵔﹳ;->ﹳٴ:Lʽⁱ/ﹳᐧ;

    iget v0, v0, Lʽⁱ/ﹳᐧ;->ˉٴ:I

    iget-boolean v1, p0, Lﹶ/ʾᵎ;->ᴵᵔ:Z

    iget-object v0, v2, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lﹶ/ʽʽ;

    iput-boolean v1, v0, Lﹶ/ʽʽ;->ˉˆ:Z

    :cond_6
    iput-boolean v1, p0, Lﹶ/ʾᵎ;->ᴵᵔ:Z

    new-instance v3, Lﹶ/ﹳᐧ;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-object p1, p0, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    invoke-virtual {p0}, Lﹶ/ʾᵎ;->ᴵᵔ()J

    move-result-wide v0

    iget p1, p1, Lﹶ/ᵔﹳ;->ˑﹳ:I

    invoke-static {p1, v0, v1}, Lᐧˎ/ʼʼ;->ʿ(IJ)J

    move-result-wide v7

    invoke-direct/range {v3 .. v8}, Lﹶ/ﹳᐧ;-><init>(Lʽⁱ/ᵎⁱ;JJ)V

    iget-object p1, p0, Lﹶ/ʾᵎ;->ʼˎ:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    iget-object p1, p1, Lﹶ/ᵔﹳ;->ʼˎ:Lʾﾞ/ﾞᴵ;

    iput-object p1, p0, Lﹶ/ʾᵎ;->ʻٴ:Lʾﾞ/ﾞᴵ;

    invoke-virtual {p1}, Lʾﾞ/ﾞᴵ;->ﹳٴ()V

    iget-object p1, p0, Lﹶ/ʾᵎ;->יـ:Lᐧﹳ/ʽ;

    if-eqz p1, :cond_7

    iget-boolean p2, p0, Lﹶ/ʾᵎ;->ᴵᵔ:Z

    iget v0, p1, Lᐧﹳ/ʽ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lﹶ/ʾˋ;

    iget-object p1, p1, Lﹶ/ʾˋ;->ˊﹳ:Lـʾ/ᵔﹳ;

    iget-object v0, p1, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_7

    new-instance v1, Lᐧⁱ/ﹳٴ;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1, p2}, Lᐧⁱ/ﹳٴ;-><init>(ILjava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :pswitch_0
    iget-object p1, p1, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/decoder/ffmpeg/ʽ;

    iget-object p1, p1, Landroidx/media3/decoder/ffmpeg/ʽ;->ʼˈ:Lـʾ/ᵔﹳ;

    iget-object v0, p1, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_7

    new-instance v1, Lᐧⁱ/ﹳٴ;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1, p2}, Lᐧⁱ/ﹳٴ;-><init>(ILjava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public final ʼˎ()Z
    .locals 10

    .prologue
    invoke-virtual {p0}, Lﹶ/ʾᵎ;->ٴᵢ()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lﹶ/ʾᵎ;->ˈⁱ:Z

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lﹶ/ʾᵎ;->ᴵᵔ()J

    move-result-wide v0

    iget-object v2, p0, Lﹶ/ʾᵎ;->ᵔᵢ:Lﹶ/ˉʿ;

    invoke-virtual {v2}, Lﹶ/ˉʿ;->ﹳٴ()J

    move-result-wide v3

    iget v2, v2, Lﹶ/ˉʿ;->ﾞᴵ:I

    sget-object v5, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    int-to-long v5, v2

    const-wide/32 v7, 0xf4240

    sget-object v9, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-static/range {v3 .. v9}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ʼᐧ()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lﹶ/ʾᵎ;->ᐧᴵ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lﹶ/ʾᵎ;->ᐧᴵ:Z

    invoke-virtual {p0}, Lﹶ/ʾᵎ;->flush()V

    :cond_0
    return-void
.end method

.method public final ʽ(Lʽⁱ/ᵎⁱ;)V
    .locals 7

    .prologue
    new-instance v0, Lʽⁱ/ᵎⁱ;

    iget v1, p1, Lʽⁱ/ᵎⁱ;->ﹳٴ:F

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v1, v2, v3}, Lᐧˎ/ʼʼ;->ᵔᵢ(FFF)F

    move-result v1

    iget v4, p1, Lʽⁱ/ᵎⁱ;->ⁱˊ:F

    invoke-static {v4, v2, v3}, Lᐧˎ/ʼʼ;->ᵔᵢ(FFF)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lʽⁱ/ᵎⁱ;-><init>(FF)V

    iput-object v0, p0, Lﹶ/ʾᵎ;->ˈٴ:Lʽⁱ/ᵎⁱ;

    iget-object v0, p0, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lﹶ/ᵔﹳ;->ˆʾ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lﹶ/ʾᵎ;->ᵔי()V

    return-void

    :cond_0
    new-instance v1, Lﹶ/ﹳᐧ;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lﹶ/ﹳᐧ;-><init>(Lʽⁱ/ᵎⁱ;JJ)V

    invoke-virtual {p0}, Lﹶ/ʾᵎ;->ٴᵢ()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v1, p0, Lﹶ/ʾᵎ;->ᴵˊ:Lﹶ/ﹳᐧ;

    return-void

    :cond_1
    iput-object v1, p0, Lﹶ/ʾᵎ;->ʽʽ:Lﹶ/ﹳᐧ;

    return-void
.end method

.method public final ʽʽ()Z
    .locals 6

    .prologue
    iget-object v0, p0, Lﹶ/ʾᵎ;->ʻٴ:Lʾﾞ/ﾞᴵ;

    invoke-virtual {v0}, Lʾﾞ/ﾞᴵ;->ˈ()Z

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v2}, Lﹶ/ʾᵎ;->ᴵˊ(J)V

    iget-object v0, p0, Lﹶ/ʾᵎ;->ʼˈ:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lﹶ/ʾᵎ;->ʻٴ:Lʾﾞ/ﾞᴵ;

    invoke-virtual {v0}, Lʾﾞ/ﾞᴵ;->ˈ()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, v0, Lʾﾞ/ﾞᴵ;->ˈ:Z

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v4, v0, Lʾﾞ/ﾞᴵ;->ˈ:Z

    iget-object v0, v0, Lʾﾞ/ﾞᴵ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʾﾞ/ᵔᵢ;

    invoke-interface {v0}, Lʾﾞ/ᵔᵢ;->ˑﹳ()V

    :cond_2
    :goto_0
    invoke-virtual {p0, v1, v2}, Lﹶ/ʾᵎ;->ᵎˊ(J)V

    iget-object v0, p0, Lﹶ/ʾᵎ;->ʻٴ:Lʾﾞ/ﾞᴵ;

    invoke-virtual {v0}, Lʾﾞ/ﾞᴵ;->ʽ()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lﹶ/ʾᵎ;->ʼˈ:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    return v4

    :cond_4
    return v3
.end method

.method public final ʽﹳ(Z)V
    .locals 6

    .prologue
    iput-boolean p1, p0, Lﹶ/ʾᵎ;->ᴵᵔ:Z

    iget-object p1, p0, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lﹶ/ᵔﹳ;->ˆʾ:Z

    if-eqz p1, :cond_0

    sget-object p1, Lʽⁱ/ᵎⁱ;->ˈ:Lʽⁱ/ᵎⁱ;

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lﹶ/ʾᵎ;->ˈٴ:Lʽⁱ/ᵎⁱ;

    goto :goto_0

    :goto_1
    new-instance v0, Lﹶ/ﹳᐧ;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v0 .. v5}, Lﹶ/ﹳᐧ;-><init>(Lʽⁱ/ᵎⁱ;JJ)V

    invoke-virtual {p0}, Lﹶ/ʾᵎ;->ٴᵢ()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v0, p0, Lﹶ/ʾᵎ;->ᴵˊ:Lﹶ/ﹳᐧ;

    return-void

    :cond_1
    iput-object v0, p0, Lﹶ/ʾᵎ;->ʽʽ:Lﹶ/ﹳᐧ;

    return-void
.end method

.method public final ʾˋ(Lﹶ/ᵔﹳ;)Landroid/media/AudioTrack;
    .locals 8

    .prologue
    :try_start_0
    iget v0, p0, Lﹶ/ʾᵎ;->ʿ:I

    iget v1, p0, Lﹶ/ʾᵎ;->ᵔﹳ:I
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lﹶ/ʾᵎ;->ﹳٴ:Landroid/content/Context;

    if-eqz v2, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    if-lt v3, v4, :cond_1

    iget-object v0, p0, Lﹶ/ʾᵎ;->ʻˋ:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {v2, v1}, Landroid/content/Context;->createDeviceContext(I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lﹶ/ʾᵎ;->ʻˋ:Landroid/content/Context;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_3

    :cond_0
    :goto_0
    iget-object v0, p0, Lﹶ/ʾᵎ;->ʻˋ:Landroid/content/Context;
    :try_end_1
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x0

    move-object v7, v0

    move v5, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    move v5, v0

    move-object v7, v1

    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lﹶ/ᵔﹳ;->ﹳٴ()Lﹶ/ʼˎ;

    move-result-object v3

    iget-object v4, p0, Lﹶ/ʾᵎ;->ʾˋ:Lʽⁱ/ˑﹳ;

    iget-object v6, p1, Lﹶ/ᵔﹳ;->ﹳٴ:Lʽⁱ/ﹳᐧ;
    :try_end_2
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, p0

    :try_start_3
    invoke-virtual/range {v2 .. v7}, Lﹶ/ʾᵎ;->ᵢˏ(Lﹶ/ʼˎ;Lʽⁱ/ˑﹳ;ILʽⁱ/ﹳᐧ;Landroid/content/Context;)Landroid/media/AudioTrack;

    move-result-object p1
    :try_end_3
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_3 .. :try_end_3} :catch_1

    return-object p1

    :catch_1
    move-exception v0

    :goto_2
    move-object p1, v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v2, p0

    goto :goto_2

    :goto_3
    iget-object v0, v2, Lﹶ/ʾᵎ;->יـ:Lᐧﹳ/ʽ;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lᐧﹳ/ʽ;->ᵔʾ(Ljava/lang/Exception;)V

    :cond_2
    throw p1
.end method

.method public final ʾᵎ(F)V
    .locals 1

    .prologue
    iget v0, p0, Lﹶ/ʾᵎ;->ˑٴ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lﹶ/ʾᵎ;->ˑٴ:F

    invoke-virtual {p0}, Lﹶ/ʾᵎ;->ٴᵢ()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    iget v0, p0, Lﹶ/ʾᵎ;->ˑٴ:F

    invoke-virtual {p1, v0}, Landroid/media/AudioTrack;->setVolume(F)I

    :cond_0
    return-void
.end method

.method public final ˆʾ(I)V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lﹶ/ʾᵎ;->ʿᵢ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lﹶ/ʾᵎ;->ʿ:I

    if-ne v0, p1, :cond_2

    iput-boolean v1, p0, Lﹶ/ʾᵎ;->ʿᵢ:Z

    :cond_0
    iget v0, p0, Lﹶ/ʾᵎ;->ʿ:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lﹶ/ʾᵎ;->ʿ:I

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lﹶ/ʾᵎ;->ˉـ:Z

    invoke-virtual {p0}, Lﹶ/ʾᵎ;->flush()V

    :cond_2
    return-void
.end method

.method public final ˆﾞ(Ljava/nio/ByteBuffer;)V
    .locals 18

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lﹶ/ʾᵎ;->ʼˈ:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    iget v1, v1, Lﹶ/ᵔﹳ;->ʽ:I

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x14

    invoke-static {v1, v2}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v3

    iget-object v1, v0, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    iget v1, v1, Lﹶ/ᵔﹳ;->ˑﹳ:I

    int-to-long v5, v1

    const-wide/32 v7, 0xf4240

    sget-object v9, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-static/range {v3 .. v9}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0}, Lﹶ/ʾᵎ;->ᴵᵔ()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3

    :goto_1
    move-object/from16 v3, p1

    goto/16 :goto_8

    :cond_3
    iget-object v6, v0, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    iget v7, v6, Lﹶ/ᵔﹳ;->ᵎﹶ:I

    iget v6, v6, Lﹶ/ᵔﹳ;->ˈ:I

    long-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v8

    :cond_4
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v9

    if-eqz v9, :cond_17

    if-ge v2, v1, :cond_17

    const/high16 v12, 0x50000000

    const/high16 v13, 0x10000000

    const/16 v14, 0x16

    const/16 v15, 0x15

    const/high16 v16, 0x4f000000

    const/4 v9, 0x4

    const/high16 v17, -0x31000000

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eq v7, v11, :cond_d

    if-eq v7, v10, :cond_c

    if-eq v7, v9, :cond_a

    if-eq v7, v15, :cond_9

    if-eq v7, v14, :cond_8

    if-eq v7, v13, :cond_7

    if-eq v7, v12, :cond_6

    const/high16 v12, 0x60000000

    if-ne v7, v12, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    :goto_3
    or-int/2addr v12, v13

    goto/16 :goto_6

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    goto :goto_3

    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    goto :goto_3

    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    :goto_4
    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    goto :goto_3

    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    goto :goto_4

    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v12

    const/high16 v13, -0x40800000    # -1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v12, v13, v14}, Lᐧˎ/ʼʼ;->ᵔᵢ(FFF)F

    move-result v12

    const/4 v13, 0x0

    cmpg-float v13, v12, v13

    if-gez v13, :cond_b

    neg-float v12, v12

    mul-float v12, v12, v17

    :goto_5
    float-to-int v12, v12

    goto :goto_6

    :cond_b
    mul-float v12, v12, v16

    goto :goto_5

    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    goto :goto_6

    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    goto :goto_4

    :goto_6
    int-to-long v12, v12

    int-to-long v9, v2

    mul-long/2addr v12, v9

    div-long/2addr v12, v4

    long-to-int v9, v12

    if-eq v7, v11, :cond_16

    const/4 v10, 0x3

    if-eq v7, v10, :cond_15

    const/4 v14, 0x4

    if-eq v7, v14, :cond_13

    if-eq v7, v15, :cond_12

    const/16 v10, 0x16

    if-eq v7, v10, :cond_11

    const/high16 v10, 0x10000000

    if-eq v7, v10, :cond_10

    const/high16 v10, 0x50000000

    if-eq v7, v10, :cond_f

    const/high16 v12, 0x60000000

    if-ne v7, v12, :cond_e

    shr-int/lit8 v10, v9, 0x18

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v10, v9, 0x10

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v10, v9, 0x8

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_7

    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_f
    shr-int/lit8 v10, v9, 0x18

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v10, v9, 0x10

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_10
    shr-int/lit8 v10, v9, 0x18

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v9, 0x10

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_11
    int-to-byte v10, v9

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v10, v9, 0x8

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v10, v9, 0x10

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v9, 0x18

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_12
    shr-int/lit8 v10, v9, 0x8

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v10, v9, 0x10

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v9, 0x18

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_13
    if-gez v9, :cond_14

    int-to-float v9, v9

    neg-float v9, v9

    div-float v9, v9, v17

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_14
    int-to-float v9, v9

    div-float v9, v9, v16

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_15
    shr-int/lit8 v9, v9, 0x18

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_16
    shr-int/lit8 v10, v9, 0x10

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v9, 0x18

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v9

    add-int v10, v8, v6

    if-ne v9, v10, :cond_4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v8

    goto/16 :goto_2

    :cond_17
    move-object/from16 v1, p1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_8
    iput-object v3, v0, Lﹶ/ʾᵎ;->ʼˈ:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final ˈ()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lﹶ/ʾᵎ;->ᴵˑ:Z

    invoke-virtual {p0}, Lﹶ/ʾᵎ;->ٴᵢ()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lﹶ/ʾᵎ;->ᵔᵢ:Lﹶ/ˉʿ;

    invoke-virtual {v1}, Lﹶ/ˉʿ;->ﾞᴵ()V

    iget-wide v2, v1, Lﹶ/ˉʿ;->ʾᵎ:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, v1, Lﹶ/ˉʿ;->ˑﹳ:Lﹶ/ﾞʻ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v0}, Lﹶ/ﾞʻ;->ﹳٴ(I)V

    :cond_0
    invoke-virtual {v1}, Lﹶ/ˉʿ;->ⁱˊ()J

    move-result-wide v2

    iput-wide v2, v1, Lﹶ/ˉʿ;->ᵢˏ:J

    iget-boolean v0, p0, Lﹶ/ʾᵎ;->ﹳـ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    invoke-static {v0}, Lﹶ/ʾᵎ;->ˉٴ(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_2
    return-void
.end method

.method public final ˈٴ()J
    .locals 5

    .prologue
    iget-object v0, p0, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    iget v1, v0, Lﹶ/ᵔﹳ;->ʽ:I

    if-nez v1, :cond_0

    iget-wide v1, p0, Lﹶ/ʾᵎ;->ˉٴ:J

    iget v0, v0, Lﹶ/ᵔﹳ;->ⁱˊ:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    return-wide v1

    :cond_0
    iget-wide v0, p0, Lﹶ/ʾᵎ;->ᵎⁱ:J

    return-wide v0
.end method

.method public final ˉʿ()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lﹶ/ʾᵎ;->ᴵˑ:Z

    invoke-virtual {p0}, Lﹶ/ʾᵎ;->ٴᵢ()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lﹶ/ʾᵎ;->ᵔᵢ:Lﹶ/ˉʿ;

    iget-wide v1, v0, Lﹶ/ˉʿ;->ʾᵎ:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, v0, Lﹶ/ˉʿ;->ٴᵢ:Lᐧˎ/ˏי;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v1

    iput-wide v1, v0, Lﹶ/ˉʿ;->ʾᵎ:J

    :cond_0
    invoke-virtual {v0}, Lﹶ/ˉʿ;->ⁱˊ()J

    move-result-wide v1

    iget v3, v0, Lﹶ/ˉʿ;->ﾞᴵ:I

    invoke-static {v3, v1, v2}, Lᐧˎ/ʼʼ;->ʿ(IJ)J

    move-result-wide v1

    iput-wide v1, v0, Lﹶ/ˉʿ;->ˆʾ:J

    iget-object v0, v0, Lﹶ/ˉʿ;->ˑﹳ:Lﹶ/ﾞʻ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lﹶ/ﾞʻ;->ﹳٴ(I)V

    iget-boolean v0, p0, Lﹶ/ʾᵎ;->ﹳـ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    invoke-static {v0}, Lﹶ/ʾᵎ;->ˉٴ(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_2
    return-void
.end method

.method public final ˉˆ(Z)J
    .locals 12

    .prologue
    invoke-virtual {p0}, Lﹶ/ʾᵎ;->ٴᵢ()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lﹶ/ʾᵎ;->ᵔٴ:Z

    if-eqz p1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lﹶ/ʾᵎ;->ᵔᵢ:Lﹶ/ˉʿ;

    invoke-virtual {p1}, Lﹶ/ˉʿ;->ﹳٴ()J

    move-result-wide v0

    iget-object p1, p0, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    invoke-virtual {p0}, Lﹶ/ʾᵎ;->ᴵᵔ()J

    move-result-wide v2

    iget p1, p1, Lﹶ/ᵔﹳ;->ˑﹳ:I

    invoke-static {p1, v2, v3}, Lᐧˎ/ʼʼ;->ʿ(IJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    iget-object p1, p0, Lﹶ/ʾᵎ;->ʼˎ:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lﹶ/ﹳᐧ;

    iget-wide v2, v2, Lﹶ/ﹳᐧ;->ʽ:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lﹶ/ﹳᐧ;

    iput-object p1, p0, Lﹶ/ʾᵎ;->ʽʽ:Lﹶ/ﹳᐧ;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lﹶ/ʾᵎ;->ʽʽ:Lﹶ/ﹳᐧ;

    iget-wide v3, v2, Lﹶ/ﹳᐧ;->ʽ:J

    sub-long v5, v0, v3

    iget-object v0, v2, Lﹶ/ﹳᐧ;->ﹳٴ:Lʽⁱ/ᵎⁱ;

    iget v0, v0, Lʽⁱ/ᵎⁱ;->ﹳٴ:F

    invoke-static {v5, v6, v0}, Lᐧˎ/ʼʼ;->ᴵˊ(JF)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    iget-object v2, p0, Lﹶ/ʾᵎ;->ⁱˊ:Lᵢ/ﹳٴ;

    if-eqz p1, :cond_5

    iget-object p1, v2, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Lʾﾞ/ٴﹶ;

    invoke-virtual {p1}, Lʾﾞ/ٴﹶ;->ʽ()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v3, p1, Lʾﾞ/ٴﹶ;->ˉˆ:J

    const-wide/16 v7, 0x400

    cmp-long v3, v3, v7

    if-ltz v3, :cond_3

    iget-wide v3, p1, Lʾﾞ/ٴﹶ;->ᵔʾ:J

    iget-object v7, p1, Lʾﾞ/ٴﹶ;->ˆʾ:Lʾﾞ/ˆʾ;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v7, Lʾﾞ/ˆʾ;->ٴﹶ:I

    iget v7, v7, Lʾﾞ/ˆʾ;->ⁱˊ:I

    mul-int/2addr v8, v7

    mul-int/lit8 v8, v8, 0x2

    int-to-long v7, v8

    sub-long v7, v3, v7

    iget-object v3, p1, Lʾﾞ/ٴﹶ;->ᵔᵢ:Lʾﾞ/ᵎﹶ;

    iget v3, v3, Lʾﾞ/ᵎﹶ;->ﹳٴ:I

    iget-object v4, p1, Lʾﾞ/ٴﹶ;->ᵎﹶ:Lʾﾞ/ᵎﹶ;

    iget v4, v4, Lʾﾞ/ᵎﹶ;->ﹳٴ:I

    if-ne v3, v4, :cond_2

    iget-wide v9, p1, Lʾﾞ/ٴﹶ;->ˉˆ:J

    sget-object v11, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static/range {v5 .. v11}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    goto :goto_1

    :cond_2
    int-to-long v9, v3

    mul-long/2addr v7, v9

    iget-wide v9, p1, Lʾﾞ/ٴﹶ;->ˉˆ:J

    int-to-long v3, v4

    mul-long/2addr v9, v3

    sget-object v11, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static/range {v5 .. v11}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    goto :goto_1

    :cond_3
    iget p1, p1, Lʾﾞ/ٴﹶ;->ʽ:F

    float-to-double v3, p1

    long-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-long v5, v3

    :cond_4
    :goto_1
    iget-object p1, p0, Lﹶ/ʾᵎ;->ʽʽ:Lﹶ/ﹳᐧ;

    iget-wide v3, p1, Lﹶ/ﹳᐧ;->ⁱˊ:J

    add-long/2addr v3, v5

    sub-long/2addr v5, v0

    iput-wide v5, p1, Lﹶ/ﹳᐧ;->ˈ:J

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lﹶ/ʾᵎ;->ʽʽ:Lﹶ/ﹳᐧ;

    iget-wide v3, p1, Lﹶ/ﹳᐧ;->ⁱˊ:J

    add-long/2addr v3, v0

    iget-wide v0, p1, Lﹶ/ﹳᐧ;->ˈ:J

    add-long/2addr v3, v0

    :goto_2
    iget-object p1, v2, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lﹶ/ʽʽ;

    iget-wide v0, p1, Lﹶ/ʽʽ;->ᵔﹳ:J

    iget-object p1, p0, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    iget p1, p1, Lﹶ/ᵔﹳ;->ˑﹳ:I

    invoke-static {p1, v0, v1}, Lᐧˎ/ʼʼ;->ʿ(IJ)J

    move-result-wide v5

    add-long/2addr v5, v3

    iget-wide v2, p0, Lﹶ/ʾᵎ;->ˈˏ:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_7

    iget-object p1, p0, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    sub-long v2, v0, v2

    iget p1, p1, Lﹶ/ᵔﹳ;->ˑﹳ:I

    invoke-static {p1, v2, v3}, Lᐧˎ/ʼʼ;->ʿ(IJ)J

    move-result-wide v2

    iput-wide v0, p0, Lﹶ/ʾᵎ;->ˈˏ:J

    iget-wide v0, p0, Lﹶ/ʾᵎ;->ﹶᐧ:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lﹶ/ʾᵎ;->ﹶᐧ:J

    iget-object p1, p0, Lﹶ/ʾᵎ;->ﹳﹳ:Landroid/os/Handler;

    if-nez p1, :cond_6

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lﹶ/ʾᵎ;->ﹳﹳ:Landroid/os/Handler;

    :cond_6
    iget-object p1, p0, Lﹶ/ʾᵎ;->ﹳﹳ:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lﹶ/ʾᵎ;->ﹳﹳ:Landroid/os/Handler;

    new-instance v0, Lٴˉ/ⁱˊ;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Lٴˉ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-wide v5

    :cond_8
    :goto_3
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final ˊʻ()Z
    .locals 20

    .prologue
    move-object/from16 v1, p0

    iget-object v0, v1, Lﹶ/ʾᵎ;->ﾞʻ:Lʿٴ/ˆʾ;

    iget-object v2, v0, Lʿٴ/ˆʾ;->ʽ:Ljava/io/Serializable;

    check-cast v2, Ljava/lang/Exception;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    sget-object v2, Lﹶ/ʾᵎ;->ٴﹳ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget v5, Lﹶ/ʾᵎ;->ـᵎ:I

    if-lez v5, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v0, Lʿٴ/ˆʾ;->ⁱˊ:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_3

    :goto_1
    return v3

    :cond_3
    :goto_2
    :try_start_1
    iget-object v0, v1, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lﹶ/ʾᵎ;->ʾˋ(Lﹶ/ᵔﹳ;)Landroid/media/AudioTrack;

    move-result-object v0
    :try_end_1
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    iget-object v0, v1, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    iget v5, v0, Lﹶ/ᵔﹳ;->ᵔᵢ:I

    const v6, 0xf4240

    if-le v5, v6, :cond_f

    new-instance v7, Lﹶ/ᵔﹳ;

    iget-object v8, v0, Lﹶ/ᵔﹳ;->ﹳٴ:Lʽⁱ/ﹳᐧ;

    iget v9, v0, Lﹶ/ᵔﹳ;->ⁱˊ:I

    iget v10, v0, Lﹶ/ᵔﹳ;->ʽ:I

    iget v11, v0, Lﹶ/ᵔﹳ;->ˈ:I

    iget v12, v0, Lﹶ/ᵔﹳ;->ˑﹳ:I

    iget v13, v0, Lﹶ/ᵔﹳ;->ﾞᴵ:I

    iget v14, v0, Lﹶ/ᵔﹳ;->ᵎﹶ:I

    iget-object v5, v0, Lﹶ/ᵔﹳ;->ʼˎ:Lʾﾞ/ﾞᴵ;

    iget-boolean v6, v0, Lﹶ/ᵔﹳ;->ˆʾ:Z

    iget-boolean v15, v0, Lﹶ/ᵔﹳ;->ٴﹶ:Z

    iget-boolean v0, v0, Lﹶ/ᵔﹳ;->ﾞʻ:Z

    move/from16 v18, v15

    const v15, 0xf4240

    move/from16 v19, v0

    move-object/from16 v16, v5

    move/from16 v17, v6

    invoke-direct/range {v7 .. v19}, Lﹶ/ᵔﹳ;-><init>(Lʽⁱ/ﹳᐧ;IIIIIIILʾﾞ/ﾞᴵ;ZZZ)V

    :try_start_2
    invoke-virtual {v1, v7}, Lﹶ/ʾᵎ;->ʾˋ(Lﹶ/ᵔﹳ;)Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v7, v1, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;
    :try_end_2
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    iput-object v0, v1, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    invoke-static {v0}, Lﹶ/ʾᵎ;->ˉٴ(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    iget-object v2, v1, Lﹶ/ʾᵎ;->ٴﹶ:Lﹶ/ـˆ;

    if-nez v2, :cond_4

    new-instance v2, Lﹶ/ـˆ;

    invoke-direct {v2, v1}, Lﹶ/ـˆ;-><init>(Lﹶ/ʾᵎ;)V

    iput-object v2, v1, Lﹶ/ʾᵎ;->ٴﹶ:Lﹶ/ـˆ;

    :cond_4
    iget-object v2, v1, Lﹶ/ʾᵎ;->ٴﹶ:Lﹶ/ـˆ;

    iget-object v5, v2, Lﹶ/ـˆ;->ﹳٴ:Landroid/os/Handler;

    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lﹶ/ʽﹳ;

    invoke-direct {v6, v5}, Lﹶ/ʽﹳ;-><init>(Landroid/os/Handler;)V

    iget-object v2, v2, Lﹶ/ـˆ;->ⁱˊ:Lﹶ/ʻٴ;

    invoke-virtual {v0, v6, v2}, Landroid/media/AudioTrack;->registerStreamEventCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V

    iget-object v0, v1, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    iget-boolean v2, v0, Lﹶ/ᵔﹳ;->ٴﹶ:Z

    if-eqz v2, :cond_5

    iget-object v2, v1, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    iget-object v0, v0, Lﹶ/ᵔﹳ;->ﹳٴ:Lʽⁱ/ﹳᐧ;

    iget v5, v0, Lʽⁱ/ﹳᐧ;->ᵎⁱ:I

    iget v0, v0, Lʽⁱ/ﹳᐧ;->ٴʼ:I

    invoke-virtual {v2, v5, v0}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_6

    iget-object v2, v1, Lﹶ/ʾᵎ;->ﹳᐧ:Lʻʿ/יـ;

    if-eqz v2, :cond_6

    iget-object v5, v1, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    invoke-static {v5, v2}, Lʼᵢ/ˉˆ;->ˑﹳ(Landroid/media/AudioTrack;Lʻʿ/יـ;)V

    :cond_6
    iget-object v2, v1, Lﹶ/ʾᵎ;->ᵔᵢ:Lﹶ/ˉʿ;

    iget-object v5, v1, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    iget-object v6, v1, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    iget v7, v6, Lﹶ/ᵔﹳ;->ʽ:I

    iget v7, v6, Lﹶ/ᵔﹳ;->ᵎﹶ:I

    iget v8, v6, Lﹶ/ᵔﹳ;->ˈ:I

    iget v6, v6, Lﹶ/ᵔﹳ;->ᵔᵢ:I

    iget-boolean v9, v1, Lﹶ/ʾᵎ;->ˑʼ:Z

    iput-object v5, v2, Lﹶ/ˉʿ;->ʽ:Landroid/media/AudioTrack;

    iput v6, v2, Lﹶ/ˉʿ;->ˈ:I

    new-instance v10, Lﹶ/ﾞʻ;

    iget-object v11, v2, Lﹶ/ˉʿ;->ﹳٴ:Lⁱʽ/ﹳٴ;

    invoke-direct {v10, v5, v11}, Lﹶ/ﾞʻ;-><init>(Landroid/media/AudioTrack;Lⁱʽ/ﹳٴ;)V

    iput-object v10, v2, Lﹶ/ˉʿ;->ˑﹳ:Lﹶ/ﾞʻ;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v5

    iput v5, v2, Lﹶ/ˉʿ;->ﾞᴵ:I

    invoke-static {v7}, Lᐧˎ/ʼʼ;->ˈʿ(I)Z

    move-result v5

    iput-boolean v5, v2, Lﹶ/ˉʿ;->ᵔﹳ:Z

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v5, :cond_7

    div-int/2addr v6, v8

    int-to-long v5, v6

    iget v7, v2, Lﹶ/ˉʿ;->ﾞᴵ:I

    invoke-static {v7, v5, v6}, Lᐧˎ/ʼʼ;->ʿ(IJ)J

    move-result-wide v5

    goto :goto_4

    :cond_7
    move-wide v5, v10

    :goto_4
    iput-wide v5, v2, Lﹶ/ˉʿ;->ᵎﹶ:J

    const-wide/16 v5, 0x0

    iput-wide v5, v2, Lﹶ/ˉʿ;->ˏי:J

    iput-wide v5, v2, Lﹶ/ˉʿ;->ʽﹳ:J

    iput-boolean v3, v2, Lﹶ/ˉʿ;->ᴵᵔ:Z

    iput-wide v5, v2, Lﹶ/ˉʿ;->ˊʻ:J

    iput-boolean v3, v2, Lﹶ/ˉʿ;->ʼᐧ:Z

    iput-wide v10, v2, Lﹶ/ˉʿ;->ʾᵎ:J

    iput-wide v10, v2, Lﹶ/ˉʿ;->ʼʼ:J

    iput-wide v5, v2, Lﹶ/ˉʿ;->ﹳᐧ:J

    iput-wide v5, v2, Lﹶ/ˉʿ;->ˉˆ:J

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v2, Lﹶ/ˉʿ;->ᵔᵢ:F

    iput v3, v2, Lﹶ/ˉʿ;->ٴﹶ:I

    iput-wide v10, v2, Lﹶ/ˉʿ;->ˆʾ:J

    iput-boolean v9, v2, Lﹶ/ˉʿ;->ᴵˊ:Z

    invoke-virtual {v1}, Lﹶ/ʾᵎ;->ٴᵢ()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v1, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    iget v5, v1, Lﹶ/ʾᵎ;->ˑٴ:F

    invoke-virtual {v2, v5}, Landroid/media/AudioTrack;->setVolume(F)I

    :cond_8
    iget-object v2, v1, Lﹶ/ʾᵎ;->ᵎᵔ:Lʽⁱ/ﾞᴵ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lﹶ/ʾᵎ;->ᐧﾞ:Lⁱʽ/ﹳٴ;

    if-eqz v2, :cond_9

    iget-object v5, v1, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    iget-object v2, v2, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioDeviceInfo;

    invoke-virtual {v5, v2}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    iget-object v2, v1, Lﹶ/ʾᵎ;->ʼʼ:Lﹶ/ˑﹳ;

    if-eqz v2, :cond_9

    iget-object v5, v1, Lﹶ/ʾᵎ;->ᐧﾞ:Lⁱʽ/ﹳٴ;

    iget-object v5, v5, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v5, Landroid/media/AudioDeviceInfo;

    invoke-virtual {v2, v5}, Lﹶ/ˑﹳ;->ⁱˊ(Landroid/media/AudioDeviceInfo;)V

    :cond_9
    const/16 v2, 0x18

    if-lt v0, v2, :cond_a

    iget-object v0, v1, Lﹶ/ʾᵎ;->ʼʼ:Lﹶ/ˑﹳ;

    if-eqz v0, :cond_a

    new-instance v2, Lﹶ/ˏי;

    iget-object v5, v1, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    invoke-direct {v2, v5, v0}, Lﹶ/ˏי;-><init>(Landroid/media/AudioTrack;Lﹶ/ˑﹳ;)V

    iput-object v2, v1, Lﹶ/ʾᵎ;->ᵢˏ:Lﹶ/ˏי;

    :cond_a
    iput-boolean v4, v1, Lﹶ/ʾᵎ;->ᵔٴ:Z

    iget-object v0, v1, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    iget v2, v1, Lﹶ/ʾᵎ;->ʿ:I

    if-eq v0, v2, :cond_b

    move v3, v4

    :cond_b
    iput v0, v1, Lﹶ/ʾᵎ;->ʿ:I

    iget-object v0, v1, Lﹶ/ʾᵎ;->יـ:Lᐧﹳ/ʽ;

    if-eqz v0, :cond_e

    iget-object v2, v1, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    invoke-virtual {v2}, Lﹶ/ᵔﹳ;->ﹳٴ()Lﹶ/ʼˎ;

    move-result-object v2

    iget v5, v0, Lᐧﹳ/ʽ;->ʾˋ:I

    packed-switch v5, :pswitch_data_0

    iget-object v0, v0, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹶ/ʾˋ;

    iget-object v0, v0, Lﹶ/ʾˋ;->ˊﹳ:Lـʾ/ᵔﹳ;

    iget-object v5, v0, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v5, Landroid/os/Handler;

    if-eqz v5, :cond_c

    new-instance v6, Lﹶ/ᵎﹶ;

    const/4 v7, 0x7

    invoke-direct {v6, v0, v2, v7}, Lﹶ/ᵎﹶ;-><init>(Lـʾ/ᵔﹳ;Ljava/lang/Object;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :pswitch_0
    iget-object v0, v0, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/decoder/ffmpeg/ʽ;

    iget-object v0, v0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʼˈ:Lـʾ/ᵔﹳ;

    iget-object v5, v0, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v5, Landroid/os/Handler;

    if-eqz v5, :cond_c

    new-instance v6, Lﹶ/ᵎﹶ;

    const/4 v7, 0x7

    invoke-direct {v6, v0, v2, v7}, Lﹶ/ᵎﹶ;-><init>(Lـʾ/ᵔﹳ;Ljava/lang/Object;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    :goto_5
    if-eqz v3, :cond_e

    iput-boolean v4, v1, Lﹶ/ʾᵎ;->ʿᵢ:Z

    iget-object v0, v1, Lﹶ/ʾᵎ;->יـ:Lᐧﹳ/ʽ;

    iget v2, v1, Lﹶ/ʾᵎ;->ʿ:I

    iget v3, v0, Lᐧﹳ/ʽ;->ʾˋ:I

    packed-switch v3, :pswitch_data_1

    iget-object v0, v0, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹶ/ʾˋ;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x23

    if-lt v3, v5, :cond_d

    iget-object v3, v0, Lﹶ/ʾˋ;->ˆˑ:Lʼᵢ/ˆʾ;

    if-eqz v3, :cond_d

    invoke-virtual {v3, v2}, Lʼᵢ/ˆʾ;->ˈ(I)V

    :cond_d
    iget-object v0, v0, Lﹶ/ʾˋ;->ˊﹳ:Lـʾ/ᵔﹳ;

    iget-object v3, v0, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Landroid/os/Handler;

    if-eqz v3, :cond_e

    new-instance v5, Lʾﾞ/ⁱˊ;

    const/4 v6, 0x4

    invoke-direct {v5, v2, v6, v0}, Lʾﾞ/ⁱˊ;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :pswitch_1
    iget-object v0, v0, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/decoder/ffmpeg/ʽ;

    iget-object v0, v0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʼˈ:Lـʾ/ᵔﹳ;

    iget-object v3, v0, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Landroid/os/Handler;

    if-eqz v3, :cond_e

    new-instance v5, Lʾﾞ/ⁱˊ;

    const/4 v6, 0x4

    invoke-direct {v5, v2, v6, v0}, Lʾﾞ/ⁱˊ;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    :goto_6
    return v4

    :catch_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    iget-object v0, v1, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    iget v0, v0, Lﹶ/ᵔﹳ;->ʽ:I

    if-ne v0, v4, :cond_10

    iput-boolean v4, v1, Lﹶ/ʾᵎ;->ʻᵎ:Z

    :cond_10
    throw v2

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_1
    .end packed-switch
.end method

.method public final ˏי(Lʽⁱ/ﾞᴵ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lﹶ/ʾᵎ;->ᵎᵔ:Lʽⁱ/ﾞᴵ;

    invoke-virtual {v0, p1}, Lʽⁱ/ﾞᴵ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lﹶ/ʾᵎ;->ᵎᵔ:Lʽⁱ/ﾞᴵ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    iput-object p1, p0, Lﹶ/ʾᵎ;->ᵎᵔ:Lʽⁱ/ﾞᴵ;

    return-void
.end method

.method public final ˑﹳ()Lʽⁱ/ᵎⁱ;
    .locals 1

    iget-object v0, p0, Lﹶ/ʾᵎ;->ˈٴ:Lʽⁱ/ᵎⁱ;

    return-object v0
.end method

.method public final יـ(Lʽⁱ/ﹳᐧ;)I
    .locals 4

    .prologue
    invoke-virtual {p0}, Lﹶ/ʾᵎ;->ᵎⁱ()V

    iget-object v0, p1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    iget v1, p1, Lʽⁱ/ﹳᐧ;->ˉٴ:I

    const-string v2, "audio/raw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    invoke-static {v1}, Lᐧˎ/ʼʼ;->ˈʿ(I)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "DefaultAudioSink"

    const-string v0, "Invalid PCM encoding: "

    invoke-static {v1, v0, p1}, Lˉˆ/ٴᴵ;->יـ(ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    if-eq v1, v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lﹶ/ʾᵎ;->ʾᵎ:Lﹶ/ⁱˊ;

    iget-object v1, p0, Lﹶ/ʾᵎ;->ʾˋ:Lʽⁱ/ˑﹳ;

    invoke-virtual {v0, v1, p1}, Lﹶ/ⁱˊ;->ˈ(Lʽⁱ/ˑﹳ;Lʽⁱ/ﹳᐧ;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_3

    :cond_2
    return v3

    :cond_3
    return v2
.end method

.method public final ـˆ()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lﹶ/ʾᵎ;->ˆﾞ:Z

    return-void
.end method

.method public final ٴʼ()V
    .locals 5

    .prologue
    iget-boolean v0, p0, Lﹶ/ʾᵎ;->ﹳـ:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lﹶ/ʾᵎ;->ﹳـ:Z

    invoke-virtual {p0}, Lﹶ/ʾᵎ;->ᴵᵔ()J

    move-result-wide v0

    iget-object v2, p0, Lﹶ/ʾᵎ;->ᵔᵢ:Lﹶ/ˉʿ;

    invoke-virtual {v2}, Lﹶ/ˉʿ;->ⁱˊ()J

    move-result-wide v3

    iput-wide v3, v2, Lﹶ/ˉʿ;->ᵢˏ:J

    iget-object v3, v2, Lﹶ/ˉʿ;->ٴᵢ:Lᐧˎ/ˏי;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v3

    iput-wide v3, v2, Lﹶ/ˉʿ;->ʾᵎ:J

    iput-wide v0, v2, Lﹶ/ˉʿ;->ʾˋ:J

    iget-object v0, p0, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    invoke-static {v0}, Lﹶ/ʾᵎ;->ˉٴ(Landroid/media/AudioTrack;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lﹶ/ʾᵎ;->ˈⁱ:Z

    :cond_0
    iget-object v0, p0, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iput v1, p0, Lﹶ/ʾᵎ;->ٴᵢ:I

    :cond_1
    return-void
.end method

.method public final ٴᵢ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ٴﹶ()J
    .locals 9

    .prologue
    invoke-virtual {p0}, Lﹶ/ʾᵎ;->ٴᵢ()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    iget-object v0, p0, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    iget-object v1, p0, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    iget v2, v1, Lﹶ/ᵔﹳ;->ʽ:I

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result v0

    int-to-long v2, v0

    iget v0, v1, Lﹶ/ᵔﹳ;->ˑﹳ:I

    invoke-static {v0, v2, v3}, Lᐧˎ/ʼʼ;->ʿ(IJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result v0

    int-to-long v2, v0

    iget v0, v1, Lﹶ/ᵔﹳ;->ᵎﹶ:I

    invoke-static {v0}, Lˊﾞ/ﹳٴ;->ٴﹶ(I)I

    move-result v0

    const v1, -0x7fffffff

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    int-to-long v6, v0

    sget-object v8, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v8}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final ᴵˊ(J)V
    .locals 12

    .prologue
    iget-object v0, p0, Lﹶ/ʾᵎ;->ˉʿ:Lʿٴ/ˆʾ;

    iget-object v1, p0, Lﹶ/ʾᵎ;->ʼˈ:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v1, v0, Lʿٴ/ˆʾ;->ʽ:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/Exception;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lﹶ/ʾᵎ;->ٴﹳ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v4, Lﹶ/ʾᵎ;->ـᵎ:I

    if-lez v4, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    goto/16 :goto_8

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v0, Lʿٴ/ˆʾ;->ⁱˊ:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_4

    goto/16 :goto_8

    :cond_4
    :goto_1
    iget-object v1, p0, Lﹶ/ʾᵎ;->ʼˈ:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    iget-boolean v1, p0, Lﹶ/ʾᵎ;->ᐧᴵ:Z

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_d

    cmp-long v1, p1, v10

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, p1, v4

    if-nez v1, :cond_6

    iget-wide p1, p0, Lﹶ/ʾᵎ;->ˏᵢ:J

    goto :goto_3

    :cond_6
    iput-wide p1, p0, Lﹶ/ʾᵎ;->ˏᵢ:J

    :goto_3
    iget-object v4, p0, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    iget-object v5, p0, Lﹶ/ʾᵎ;->ʼˈ:Ljava/nio/ByteBuffer;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    const-wide/16 v8, 0x3e8

    if-lt v1, v7, :cond_7

    const/4 v7, 0x1

    mul-long/2addr v8, p1

    invoke-virtual/range {v4 .. v9}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    move-result p1

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lﹶ/ʾᵎ;->ˊʻ:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_8

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lﹶ/ʾᵎ;->ˊʻ:Ljava/nio/ByteBuffer;

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lﹶ/ʾᵎ;->ˊʻ:Ljava/nio/ByteBuffer;

    const v7, 0x55550001

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_8
    iget v1, p0, Lﹶ/ʾᵎ;->ٴᵢ:I

    if-nez v1, :cond_9

    iget-object v1, p0, Lﹶ/ʾᵎ;->ˊʻ:Ljava/nio/ByteBuffer;

    const/4 v7, 0x4

    invoke-virtual {v1, v7, v6}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lﹶ/ʾᵎ;->ˊʻ:Ljava/nio/ByteBuffer;

    const/16 v7, 0x8

    mul-long/2addr p1, v8

    invoke-virtual {v1, v7, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lﹶ/ʾᵎ;->ˊʻ:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v6, p0, Lﹶ/ʾᵎ;->ٴᵢ:I

    :cond_9
    iget-object p1, p0, Lﹶ/ʾᵎ;->ˊʻ:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    if-lez p1, :cond_b

    iget-object p2, p0, Lﹶ/ʾᵎ;->ˊʻ:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p2, p1, v3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p2

    if-gez p2, :cond_a

    iput v2, p0, Lﹶ/ʾᵎ;->ٴᵢ:I

    move p1, p2

    goto :goto_4

    :cond_a
    if-ge p2, p1, :cond_b

    move p1, v2

    goto :goto_4

    :cond_b
    invoke-virtual {v4, v5, v6, v3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    if-gez p1, :cond_c

    iput v2, p0, Lﹶ/ʾᵎ;->ٴᵢ:I

    goto :goto_4

    :cond_c
    iget p2, p0, Lﹶ/ʾᵎ;->ٴᵢ:I

    sub-int/2addr p2, p1

    iput p2, p0, Lﹶ/ʾᵎ;->ٴᵢ:I

    goto :goto_4

    :cond_d
    iget-object p1, p0, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    iget-object p2, p0, Lﹶ/ʾᵎ;->ʼˈ:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, v6, v3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lﹶ/ʾᵎ;->ᴵʼ:J

    const-wide/16 v4, 0x0

    if-gez p1, :cond_16

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p2, v1, :cond_e

    const/4 p2, -0x6

    if-eq p1, p2, :cond_f

    :cond_e
    const/16 p2, -0x20

    if-ne p1, p2, :cond_12

    :cond_f
    invoke-virtual {p0}, Lﹶ/ʾᵎ;->ᴵᵔ()J

    move-result-wide v6

    cmp-long p2, v6, v4

    if-lez p2, :cond_11

    :cond_10
    :goto_5
    move v2, v3

    goto :goto_6

    :cond_11
    iget-object p2, p0, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    invoke-static {p2}, Lﹶ/ʾᵎ;->ˉٴ(Landroid/media/AudioTrack;)Z

    move-result p2

    if-eqz p2, :cond_12

    iget-object p2, p0, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    iget p2, p2, Lﹶ/ᵔﹳ;->ʽ:I

    if-ne p2, v3, :cond_10

    iput-boolean v3, p0, Lﹶ/ʾᵎ;->ʻᵎ:Z

    goto :goto_5

    :cond_12
    :goto_6
    new-instance p2, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;

    iget-object v1, p0, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    iget-object v1, v1, Lﹶ/ᵔﹳ;->ﹳٴ:Lʽⁱ/ﹳᐧ;

    invoke-direct {p2, p1, v1, v2}, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;-><init>(ILʽⁱ/ﹳᐧ;Z)V

    iget-object p1, p0, Lﹶ/ʾᵎ;->יـ:Lᐧﹳ/ʽ;

    if-eqz p1, :cond_13

    invoke-virtual {p1, p2}, Lᐧﹳ/ʽ;->ᵔʾ(Ljava/lang/Exception;)V

    :cond_13
    iget-boolean p1, p2, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->ᴵˊ:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Lﹶ/ʾᵎ;->ﹳٴ:Landroid/content/Context;

    if-nez p1, :cond_14

    goto :goto_7

    :cond_14
    sget-object p1, Lﹶ/ⁱˊ;->ʽ:Lﹶ/ⁱˊ;

    iput-object p1, p0, Lﹶ/ʾᵎ;->ʾᵎ:Lﹶ/ⁱˊ;

    iget-object v0, p0, Lﹶ/ʾᵎ;->ʼʼ:Lﹶ/ˑﹳ;

    invoke-virtual {v0, p1}, Lﹶ/ˑﹳ;->ﹳٴ(Lﹶ/ⁱˊ;)V

    throw p2

    :cond_15
    :goto_7
    invoke-virtual {v0, p2}, Lʿٴ/ˆʾ;->ˑﹳ(Ljava/lang/Exception;)V

    return-void

    :cond_16
    const/4 p2, 0x0

    iput-object p2, v0, Lʿٴ/ˆʾ;->ʽ:Ljava/io/Serializable;

    iput-wide v10, v0, Lʿٴ/ˆʾ;->ﹳٴ:J

    iput-wide v10, v0, Lʿٴ/ˆʾ;->ⁱˊ:J

    iget-object v0, p0, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    invoke-static {v0}, Lﹶ/ʾᵎ;->ˉٴ(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-wide v0, p0, Lﹶ/ʾᵎ;->ᵎˊ:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_17

    iput-boolean v2, p0, Lﹶ/ʾᵎ;->ˊᵔ:Z

    :cond_17
    iget-boolean v0, p0, Lﹶ/ʾᵎ;->ᴵˑ:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lﹶ/ʾᵎ;->יـ:Lᐧﹳ/ʽ;

    if-eqz v0, :cond_18

    if-ge p1, v6, :cond_18

    iget-boolean v1, p0, Lﹶ/ʾᵎ;->ˊᵔ:Z

    if-nez v1, :cond_18

    iget v1, v0, Lᐧﹳ/ʽ;->ʾˋ:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹶ/ʾˋ;

    iget-object v0, v0, Lʼᵢ/ᵔﹳ;->ـﹶ:Lⁱי/ʾˋ;

    if-eqz v0, :cond_18

    iget-object v0, v0, Lⁱי/ʾˋ;->ﹳٴ:Lⁱי/ᴵᵔ;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lⁱי/ᴵᵔ;->ʽᵔ:Z

    :cond_18
    :pswitch_0
    iget-object v0, p0, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    iget v0, v0, Lﹶ/ᵔﹳ;->ʽ:I

    if-nez v0, :cond_19

    iget-wide v4, p0, Lﹶ/ʾᵎ;->ٴʼ:J

    int-to-long v7, p1

    add-long/2addr v4, v7

    iput-wide v4, p0, Lﹶ/ʾᵎ;->ٴʼ:J

    :cond_19
    if-ne p1, v6, :cond_1c

    if-eqz v0, :cond_1b

    iget-object p1, p0, Lﹶ/ʾᵎ;->ʼˈ:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lﹶ/ʾᵎ;->ˋᵔ:Ljava/nio/ByteBuffer;

    if-ne p1, v0, :cond_1a

    move v2, v3

    :cond_1a
    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-wide v0, p0, Lﹶ/ʾᵎ;->ᵎˊ:J

    iget p1, p0, Lﹶ/ʾᵎ;->ᵔי:I

    int-to-long v2, p1

    iget p1, p0, Lﹶ/ʾᵎ;->ˊˋ:I

    int-to-long v4, p1

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lﹶ/ʾᵎ;->ᵎˊ:J

    :cond_1b
    iput-object p2, p0, Lﹶ/ʾᵎ;->ʼˈ:Ljava/nio/ByteBuffer;

    :cond_1c
    :goto_8
    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public final ᴵᵔ()J
    .locals 7

    .prologue
    iget-object v0, p0, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    iget v1, v0, Lﹶ/ᵔﹳ;->ʽ:I

    if-nez v1, :cond_0

    iget-wide v1, p0, Lﹶ/ʾᵎ;->ٴʼ:J

    iget v0, v0, Lﹶ/ᵔﹳ;->ˈ:I

    int-to-long v3, v0

    sget-object v0, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    add-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    div-long/2addr v1, v3

    return-wide v1

    :cond_0
    iget-wide v0, p0, Lﹶ/ʾᵎ;->ᵎˊ:J

    return-wide v0
.end method

.method public final ᵎˊ(J)V
    .locals 3

    .prologue
    invoke-virtual {p0, p1, p2}, Lﹶ/ʾᵎ;->ᴵˊ(J)V

    iget-object v0, p0, Lﹶ/ʾᵎ;->ʼˈ:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lﹶ/ʾᵎ;->ʻٴ:Lʾﾞ/ﾞᴵ;

    invoke-virtual {v0}, Lʾﾞ/ﾞᴵ;->ˈ()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lﹶ/ʾᵎ;->ˋᵔ:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Lﹶ/ʾᵎ;->ˆﾞ(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1, p2}, Lﹶ/ʾᵎ;->ᴵˊ(J)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lﹶ/ʾᵎ;->ʻٴ:Lʾﾞ/ﾞᴵ;

    invoke-virtual {v0}, Lʾﾞ/ﾞᴵ;->ʽ()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_2
    iget-object v0, p0, Lﹶ/ʾᵎ;->ʻٴ:Lʾﾞ/ﾞᴵ;

    invoke-virtual {v0}, Lʾﾞ/ﾞᴵ;->ˈ()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v0, Lʾﾞ/ᵔᵢ;->ﹳٴ:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lʾﾞ/ﾞᴵ;->ʽ:[Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lʾﾞ/ﾞᴵ;->ⁱˊ()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    goto :goto_1

    :cond_4
    sget-object v1, Lʾﾞ/ᵔᵢ;->ﹳٴ:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lʾﾞ/ﾞᴵ;->ˑﹳ(Ljava/nio/ByteBuffer;)V

    iget-object v1, v0, Lʾﾞ/ﾞᴵ;->ʽ:[Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lʾﾞ/ﾞᴵ;->ⁱˊ()I

    move-result v0

    aget-object v0, v1, v0

    :goto_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Lﹶ/ʾᵎ;->ˆﾞ(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1, p2}, Lﹶ/ʾᵎ;->ᴵˊ(J)V

    iget-object v0, p0, Lﹶ/ʾᵎ;->ʼˈ:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lﹶ/ʾᵎ;->ˋᵔ:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lﹶ/ʾᵎ;->ʻٴ:Lʾﾞ/ﾞᴵ;

    iget-object v1, p0, Lﹶ/ʾᵎ;->ˋᵔ:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lʾﾞ/ﾞᴵ;->ˈ()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lʾﾞ/ﾞᴵ;->ˈ:Z

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v0, v1}, Lʾﾞ/ﾞᴵ;->ˑﹳ(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_8
    :goto_2
    return-void
.end method

.method public final ᵎⁱ()V
    .locals 7

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lﹶ/ʾᵎ;->ʼʼ:Lﹶ/ˑﹳ;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lﹶ/ʾᵎ;->ـﹶ:Landroid/os/Looper;

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DefaultAudioSink accessed on multiple threads: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lﹶ/ʾᵎ;->ـﹶ:Landroid/os/Looper;

    const-string v6, "null"

    if-nez v5, :cond_2

    move-object v5, v6

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lᐧˎ/ﹳٴ;->ˆʾ(Ljava/lang/String;Z)V

    iget-object v1, p0, Lﹶ/ʾᵎ;->ʼʼ:Lﹶ/ˑﹳ;

    if-nez v1, :cond_7

    iget-object v1, p0, Lﹶ/ʾᵎ;->ﹳٴ:Landroid/content/Context;

    if-eqz v1, :cond_7

    iput-object v0, p0, Lﹶ/ʾᵎ;->ـﹶ:Landroid/os/Looper;

    new-instance v0, Lﹶ/ˑﹳ;

    new-instance v4, Lٴˉ/ﹳٴ;

    const/16 v5, 0x1c

    invoke-direct {v4, v5, p0}, Lٴˉ/ﹳٴ;-><init>(ILjava/lang/Object;)V

    iget-object v5, p0, Lﹶ/ʾᵎ;->ʾˋ:Lʽⁱ/ˑﹳ;

    iget-object v6, p0, Lﹶ/ʾᵎ;->ᐧﾞ:Lⁱʽ/ﹳٴ;

    invoke-direct {v0, v1, v4, v5, v6}, Lﹶ/ˑﹳ;-><init>(Landroid/content/Context;Lٴˉ/ﹳٴ;Lʽⁱ/ˑﹳ;Lⁱʽ/ﹳٴ;)V

    iput-object v0, p0, Lﹶ/ʾᵎ;->ʼʼ:Lﹶ/ˑﹳ;

    iget-boolean v1, v0, Lﹶ/ˑﹳ;->ˆʾ:Z

    if-eqz v1, :cond_4

    iget-object v0, v0, Lﹶ/ˑﹳ;->ᵎﹶ:Lﹶ/ⁱˊ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :cond_4
    iput-boolean v2, v0, Lﹶ/ˑﹳ;->ˆʾ:Z

    iget-object v1, v0, Lﹶ/ˑﹳ;->ﾞᴵ:Lﹶ/ˈ;

    if-eqz v1, :cond_5

    iget-object v2, v1, Lﹶ/ˈ;->ﹳٴ:Landroid/content/ContentResolver;

    iget-object v4, v1, Lﹶ/ˈ;->ⁱˊ:Landroid/net/Uri;

    invoke-virtual {v2, v4, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_5
    iget-object v1, v0, Lﹶ/ˑﹳ;->ʽ:Landroid/os/Handler;

    iget-object v2, v0, Lﹶ/ˑﹳ;->ﹳٴ:Landroid/content/Context;

    iget-object v3, v0, Lﹶ/ˑﹳ;->ˈ:Lﹶ/ʽ;

    if-eqz v3, :cond_6

    invoke-static {v2}, Lʾﾞ/ˑﹳ;->ˈ(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    :cond_6
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v5, v0, Lﹶ/ˑﹳ;->ˑﹳ:Lʾʽ/ˈ;

    invoke-virtual {v2, v5, v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v1

    iget-object v3, v0, Lﹶ/ˑﹳ;->ʼˎ:Lʽⁱ/ˑﹳ;

    iget-object v4, v0, Lﹶ/ˑﹳ;->ᵔᵢ:Lⁱʽ/ﹳٴ;

    invoke-static {v2, v1, v3, v4}, Lﹶ/ⁱˊ;->ⁱˊ(Landroid/content/Context;Landroid/content/Intent;Lʽⁱ/ˑﹳ;Lⁱʽ/ﹳٴ;)Lﹶ/ⁱˊ;

    move-result-object v1

    iput-object v1, v0, Lﹶ/ˑﹳ;->ᵎﹶ:Lﹶ/ⁱˊ;

    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lﹶ/ʾᵎ;->ʾᵎ:Lﹶ/ⁱˊ;

    :cond_7
    iget-object v0, p0, Lﹶ/ʾᵎ;->ʾᵎ:Lﹶ/ⁱˊ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final ᵎﹶ(Lʽⁱ/ˑﹳ;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lﹶ/ʾᵎ;->ʾˋ:Lʽⁱ/ˑﹳ;

    invoke-virtual {v0, p1}, Lʽⁱ/ˑﹳ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lﹶ/ʾᵎ;->ʾˋ:Lʽⁱ/ˑﹳ;

    iget-boolean v0, p0, Lﹶ/ʾᵎ;->ᐧᴵ:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lﹶ/ʾᵎ;->ʼʼ:Lﹶ/ˑﹳ;

    if-eqz v0, :cond_2

    iput-object p1, v0, Lﹶ/ˑﹳ;->ʼˎ:Lʽⁱ/ˑﹳ;

    iget-object v1, v0, Lﹶ/ˑﹳ;->ﹳٴ:Landroid/content/Context;

    iget-object v2, v0, Lﹶ/ˑﹳ;->ᵔᵢ:Lⁱʽ/ﹳٴ;

    invoke-static {v1, p1, v2}, Lﹶ/ⁱˊ;->ʽ(Landroid/content/Context;Lʽⁱ/ˑﹳ;Lⁱʽ/ﹳٴ;)Lﹶ/ⁱˊ;

    move-result-object p1

    invoke-virtual {v0, p1}, Lﹶ/ˑﹳ;->ﹳٴ(Lﹶ/ⁱˊ;)V

    :cond_2
    invoke-virtual {p0}, Lﹶ/ʾᵎ;->flush()V

    return-void
.end method

.method public final ᵔʾ(Ljava/nio/ByteBuffer;JI)Z
    .locals 27

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    iget-object v5, v1, Lﹶ/ʾᵎ;->ˋᵔ:Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v6

    :goto_1
    invoke-static {v5}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    iget-object v5, v1, Lﹶ/ʾᵎ;->ˏי:Lﹶ/ᵔﹳ;

    const/4 v8, 0x3

    iget-object v9, v1, Lﹶ/ʾᵎ;->ᵔᵢ:Lﹶ/ˉʿ;

    const/4 v10, 0x0

    if-eqz v5, :cond_7

    invoke-virtual {v1}, Lﹶ/ʾᵎ;->ʽʽ()Z

    move-result v5

    if-nez v5, :cond_2

    :goto_2
    move/from16 v21, v7

    goto/16 :goto_23

    :cond_2
    iget-object v5, v1, Lﹶ/ʾᵎ;->ˏי:Lﹶ/ᵔﹳ;

    iget-object v11, v1, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v12, v11, Lﹶ/ᵔﹳ;->ʽ:I

    iget v13, v5, Lﹶ/ᵔﹳ;->ʽ:I

    if-ne v12, v13, :cond_4

    iget v12, v11, Lﹶ/ᵔﹳ;->ᵎﹶ:I

    iget v13, v5, Lﹶ/ᵔﹳ;->ᵎﹶ:I

    if-ne v12, v13, :cond_4

    iget v12, v11, Lﹶ/ᵔﹳ;->ˑﹳ:I

    iget v13, v5, Lﹶ/ᵔﹳ;->ˑﹳ:I

    if-ne v12, v13, :cond_4

    iget v12, v11, Lﹶ/ᵔﹳ;->ﾞᴵ:I

    iget v13, v5, Lﹶ/ᵔﹳ;->ﾞᴵ:I

    if-ne v12, v13, :cond_4

    iget v12, v11, Lﹶ/ᵔﹳ;->ˈ:I

    iget v13, v5, Lﹶ/ᵔﹳ;->ˈ:I

    if-ne v12, v13, :cond_4

    iget-boolean v12, v11, Lﹶ/ᵔﹳ;->ˆʾ:Z

    iget-boolean v13, v5, Lﹶ/ᵔﹳ;->ˆʾ:Z

    if-ne v12, v13, :cond_4

    iget-boolean v11, v11, Lﹶ/ᵔﹳ;->ٴﹶ:Z

    iget-boolean v5, v5, Lﹶ/ᵔﹳ;->ٴﹶ:Z

    if-ne v11, v5, :cond_4

    iget-object v5, v1, Lﹶ/ʾᵎ;->ˏי:Lﹶ/ᵔﹳ;

    iput-object v5, v1, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    iput-object v10, v1, Lﹶ/ʾᵎ;->ˏי:Lﹶ/ᵔﹳ;

    iget-object v5, v1, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    if-eqz v5, :cond_6

    invoke-static {v5}, Lﹶ/ʾᵎ;->ˉٴ(Landroid/media/AudioTrack;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v1, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    iget-boolean v5, v5, Lﹶ/ᵔﹳ;->ٴﹶ:Z

    if-eqz v5, :cond_6

    iget-object v5, v1, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    if-ne v5, v8, :cond_3

    iget-object v5, v1, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->setOffloadEndOfStream()V

    iput-boolean v6, v9, Lﹶ/ˉʿ;->ᴵᵔ:Z

    iget-object v5, v9, Lﹶ/ˉʿ;->ˑﹳ:Lﹶ/ﾞʻ;

    if-eqz v5, :cond_3

    iget-object v5, v5, Lﹶ/ﾞʻ;->ﹳٴ:Lﹶ/ٴﹶ;

    iput-boolean v6, v5, Lﹶ/ٴﹶ;->ﾞᴵ:Z

    :cond_3
    iget-object v5, v1, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    iget-object v11, v1, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    iget-object v11, v11, Lﹶ/ᵔﹳ;->ﹳٴ:Lʽⁱ/ﹳᐧ;

    iget v12, v11, Lʽⁱ/ﹳᐧ;->ᵎⁱ:I

    iget v11, v11, Lʽⁱ/ﹳᐧ;->ٴʼ:I

    invoke-virtual {v5, v12, v11}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    iput-boolean v6, v1, Lﹶ/ʾᵎ;->ˊᵔ:Z

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lﹶ/ʾᵎ;->ٴʼ()V

    invoke-virtual {v1}, Lﹶ/ʾᵎ;->ʼˎ()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lﹶ/ʾᵎ;->flush()V

    :cond_6
    :goto_3
    invoke-virtual {v1, v2, v3}, Lﹶ/ʾᵎ;->ʼʼ(J)V

    :cond_7
    invoke-virtual {v1}, Lﹶ/ʾᵎ;->ٴᵢ()Z

    move-result v5

    iget-object v11, v1, Lﹶ/ʾᵎ;->ﾞʻ:Lʿٴ/ˆʾ;

    if-nez v5, :cond_9

    :try_start_0
    invoke-virtual {v1}, Lﹶ/ʾᵎ;->ˊʻ()Z

    move-result v5
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_9

    goto/16 :goto_2

    :catch_0
    move-exception v0

    iget-boolean v2, v0, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;->ᴵˊ:Z

    if-nez v2, :cond_8

    invoke-virtual {v11, v0}, Lʿٴ/ˆʾ;->ˑﹳ(Ljava/lang/Exception;)V

    return v7

    :cond_8
    throw v0

    :cond_9
    iput-object v10, v11, Lʿٴ/ˆʾ;->ʽ:Ljava/io/Serializable;

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v12, v11, Lʿٴ/ˆʾ;->ﹳٴ:J

    iput-wide v12, v11, Lʿٴ/ˆʾ;->ⁱˊ:J

    iget-boolean v5, v1, Lﹶ/ʾᵎ;->ᵔٴ:Z

    const-wide/16 v14, 0x0

    move-wide/from16 v16, v12

    if-eqz v5, :cond_b

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v1, Lﹶ/ʾᵎ;->ˈʿ:J

    iput-boolean v7, v1, Lﹶ/ʾᵎ;->ˆﾞ:Z

    iput-boolean v7, v1, Lﹶ/ʾᵎ;->ᵔٴ:Z

    iget-object v5, v1, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    if-eqz v5, :cond_a

    iget-boolean v5, v5, Lﹶ/ᵔﹳ;->ˆʾ:Z

    if-eqz v5, :cond_a

    invoke-virtual {v1}, Lﹶ/ʾᵎ;->ᵔי()V

    :cond_a
    invoke-virtual {v1, v2, v3}, Lﹶ/ʾᵎ;->ʼʼ(J)V

    iget-boolean v5, v1, Lﹶ/ʾᵎ;->ᴵˑ:Z

    if-eqz v5, :cond_b

    invoke-virtual {v1}, Lﹶ/ʾᵎ;->ˉʿ()V

    :cond_b
    invoke-virtual {v1}, Lﹶ/ʾᵎ;->ᴵᵔ()J

    move-result-wide v11

    iget-object v5, v9, Lﹶ/ˉʿ;->ʽ:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    move-wide/from16 v18, v14

    const/16 v14, 0x18

    if-lt v13, v14, :cond_d

    iget-object v5, v9, Lﹶ/ˉʿ;->ʽ:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result v5

    iget v11, v9, Lﹶ/ˉʿ;->ٴﹶ:I

    if-le v5, v11, :cond_c

    move v11, v6

    goto :goto_4

    :cond_c
    move v11, v7

    :goto_4
    iput v5, v9, Lﹶ/ˉʿ;->ٴﹶ:I

    goto :goto_6

    :cond_d
    iget-boolean v13, v9, Lﹶ/ˉʿ;->ʼᐧ:Z

    invoke-virtual {v9}, Lﹶ/ˉʿ;->ﹳٴ()J

    move-result-wide v20

    iget v14, v9, Lﹶ/ˉʿ;->ﾞᴵ:I

    sget-object v15, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    int-to-long v14, v14

    const-wide/32 v24, 0xf4240

    sget-object v26, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    move-wide/from16 v22, v14

    invoke-static/range {v20 .. v26}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v14

    cmp-long v11, v11, v14

    if-gtz v11, :cond_e

    move v11, v7

    goto :goto_5

    :cond_e
    move v11, v6

    :goto_5
    iput-boolean v11, v9, Lﹶ/ˉʿ;->ʼᐧ:Z

    if-eqz v13, :cond_f

    if-nez v11, :cond_f

    if-eq v5, v6, :cond_f

    move v11, v6

    goto :goto_6

    :cond_f
    move v11, v7

    :goto_6
    if-eqz v11, :cond_10

    iget-object v5, v9, Lﹶ/ˉʿ;->ﹳٴ:Lⁱʽ/ﹳٴ;

    iget v11, v9, Lﹶ/ˉʿ;->ˈ:I

    iget-wide v12, v9, Lﹶ/ˉʿ;->ᵎﹶ:J

    invoke-static {v12, v13}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide v23

    iget-object v5, v5, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v5, Lﹶ/ʾᵎ;

    iget-object v12, v5, Lﹶ/ʾᵎ;->יـ:Lᐧﹳ/ʽ;

    if-eqz v12, :cond_10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iget-wide v14, v5, Lﹶ/ʾᵎ;->ᴵʼ:J

    sub-long v25, v12, v14

    iget-object v5, v5, Lﹶ/ʾᵎ;->יـ:Lᐧﹳ/ʽ;

    iget v12, v5, Lᐧﹳ/ʽ;->ʾˋ:I

    packed-switch v12, :pswitch_data_0

    iget-object v5, v5, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v5, Lﹶ/ʾˋ;

    iget-object v5, v5, Lﹶ/ʾˋ;->ˊﹳ:Lـʾ/ᵔﹳ;

    iget-object v12, v5, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v12, Landroid/os/Handler;

    if-eqz v12, :cond_10

    new-instance v20, Lﹶ/ᵎﹶ;

    move-object/from16 v21, v5

    move/from16 v22, v11

    invoke-direct/range {v20 .. v26}, Lﹶ/ᵎﹶ;-><init>(Lـʾ/ᵔﹳ;IJJ)V

    move-object/from16 v5, v20

    invoke-virtual {v12, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    :pswitch_0
    move/from16 v22, v11

    iget-object v5, v5, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/decoder/ffmpeg/ʽ;

    iget-object v5, v5, Landroidx/media3/decoder/ffmpeg/ʽ;->ʼˈ:Lـʾ/ᵔﹳ;

    iget-object v11, v5, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v11, Landroid/os/Handler;

    if-eqz v11, :cond_10

    new-instance v20, Lﹶ/ᵎﹶ;

    move-object/from16 v21, v5

    invoke-direct/range {v20 .. v26}, Lﹶ/ᵎﹶ;-><init>(Lـʾ/ᵔﹳ;IJJ)V

    move-object/from16 v5, v20

    invoke-virtual {v11, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    :goto_7
    iget-object v5, v1, Lﹶ/ʾᵎ;->ˋᵔ:Ljava/nio/ByteBuffer;

    if-nez v5, :cond_3c

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v11, :cond_11

    move v5, v6

    goto :goto_8

    :cond_11
    move v5, v7

    :goto_8
    invoke-static {v5}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_12

    goto/16 :goto_1e

    :cond_12
    iget-object v5, v1, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    iget v11, v5, Lﹶ/ᵔﹳ;->ʽ:I

    if-eqz v11, :cond_33

    iget v11, v1, Lﹶ/ʾᵎ;->ᵔי:I

    if-nez v11, :cond_33

    iget v5, v5, Lﹶ/ᵔﹳ;->ᵎﹶ:I

    const/16 v11, 0x14

    const/4 v12, 0x2

    const/4 v13, 0x5

    if-eq v5, v11, :cond_2e

    const/16 v11, 0x1e

    const/4 v14, -0x2

    const/4 v15, -0x1

    if-eq v5, v11, :cond_26

    const/16 v11, 0xa

    packed-switch v5, :pswitch_data_1

    const/16 v12, 0x10

    packed-switch v5, :pswitch_data_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected audio encoding: "

    invoke-static {v5, v2}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-array v5, v12, [B

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v8

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v8, Lʻᴵ/ʻٴ;

    invoke-direct {v8, v12, v5}, Lʻᴵ/ʻٴ;-><init>(I[B)V

    invoke-static {v8}, Lˊﾞ/ﹳٴ;->ʼᐧ(Lʻᴵ/ʻٴ;)Lʻᴵ/ˆʾ;

    move-result-object v5

    iget v15, v5, Lʻᴵ/ˆʾ;->ʽ:I

    goto/16 :goto_1d

    :cond_13
    :goto_9
    :pswitch_2
    const/16 v15, 0x400

    goto/16 :goto_1d

    :pswitch_3
    const/16 v15, 0x200

    goto/16 :goto_1d

    :pswitch_4
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v8

    sub-int/2addr v8, v11

    move v11, v5

    :goto_a
    if-gt v11, v8, :cond_16

    add-int/lit8 v13, v11, 0x4

    sget-object v20, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v13

    move/from16 v21, v12

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v12

    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v12, v10, :cond_14

    goto :goto_b

    :cond_14
    invoke-static {v13}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v13

    :goto_b
    and-int/lit8 v10, v13, -0x2

    const v12, -0x78d9046

    if-ne v10, v12, :cond_15

    sub-int/2addr v11, v5

    goto :goto_c

    :cond_15
    add-int/lit8 v11, v11, 0x1

    move/from16 v12, v21

    const/4 v10, 0x0

    goto :goto_a

    :cond_16
    move/from16 v21, v12

    move v11, v15

    :goto_c
    if-ne v11, v15, :cond_17

    move v15, v7

    goto/16 :goto_1d

    :cond_17
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/2addr v5, v11

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/16 v8, 0xbb

    if-ne v5, v8, :cond_18

    move v5, v6

    goto :goto_d

    :cond_18
    move v5, v7

    :goto_d
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v8

    add-int/2addr v8, v11

    if-eqz v5, :cond_19

    const/16 v5, 0x9

    goto :goto_e

    :cond_19
    const/16 v5, 0x8

    :goto_e
    add-int/2addr v8, v5

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x7

    const/16 v8, 0x28

    shl-int v5, v8, v5

    mul-int/lit8 v15, v5, 0x10

    goto/16 :goto_1d

    :pswitch_5
    const/16 v15, 0x800

    goto/16 :goto_1d

    :pswitch_6
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    sget-object v10, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v10

    sget-object v13, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v10, v13, :cond_1a

    goto :goto_f

    :cond_1a
    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    :goto_f
    const/high16 v10, -0x200000

    and-int v13, v5, v10

    if-ne v13, v10, :cond_1b

    move v10, v6

    goto :goto_10

    :cond_1b
    move v10, v7

    :goto_10
    if-nez v10, :cond_1d

    :cond_1c
    :goto_11
    move v5, v15

    goto :goto_12

    :cond_1d
    ushr-int/lit8 v10, v5, 0x13

    and-int/2addr v10, v8

    if-ne v10, v6, :cond_1e

    goto :goto_11

    :cond_1e
    ushr-int/lit8 v13, v5, 0x11

    and-int/2addr v13, v8

    if-nez v13, :cond_1f

    goto :goto_11

    :cond_1f
    ushr-int/lit8 v14, v5, 0xc

    const/16 v7, 0xf

    and-int/2addr v14, v7

    ushr-int/2addr v5, v11

    and-int/2addr v5, v8

    if-eqz v14, :cond_1c

    if-eq v14, v7, :cond_1c

    if-ne v5, v8, :cond_20

    goto :goto_11

    :cond_20
    const/16 v5, 0x480

    if-eq v13, v6, :cond_22

    if-eq v13, v12, :cond_24

    if-ne v13, v8, :cond_21

    const/16 v5, 0x180

    goto :goto_12

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_22
    if-ne v10, v8, :cond_23

    goto :goto_12

    :cond_23
    const/16 v5, 0x240

    :cond_24
    :goto_12
    if-eq v5, v15, :cond_25

    move v15, v5

    goto/16 :goto_1d

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_26
    :pswitch_7
    move v5, v7

    goto :goto_14

    :pswitch_8
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/2addr v5, v13

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xf8

    shr-int/2addr v5, v8

    if-le v5, v11, :cond_28

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xc0

    shr-int/lit8 v5, v5, 0x6

    if-ne v5, v8, :cond_27

    goto :goto_13

    :cond_27
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit8 v5, v5, 0x30

    shr-int/lit8 v8, v5, 0x4

    :goto_13
    sget-object v5, Lˊﾞ/ﹳٴ;->ʽ:[I

    aget v5, v5, v8

    mul-int/lit16 v15, v5, 0x100

    goto/16 :goto_1d

    :cond_28
    const/16 v15, 0x600

    goto/16 :goto_1d

    :goto_14
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    const v8, -0xde4bec0

    if-eq v7, v8, :cond_13

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    const v8, -0x17bd3b8f

    if-ne v7, v8, :cond_29

    goto/16 :goto_9

    :cond_29
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    const v5, 0x25205864

    if-ne v7, v5, :cond_2a

    const/16 v15, 0x1000

    goto/16 :goto_1d

    :cond_2a
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    if-eq v7, v14, :cond_2d

    if-eq v7, v15, :cond_2c

    const/16 v8, 0x1f

    if-eq v7, v8, :cond_2b

    add-int/lit8 v7, v5, 0x4

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/2addr v7, v6

    shl-int/lit8 v7, v7, 0x6

    add-int/2addr v5, v13

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    :goto_15
    and-int/lit16 v5, v5, 0xfc

    :goto_16
    shr-int/2addr v5, v12

    or-int/2addr v5, v7

    goto :goto_18

    :cond_2b
    add-int/lit8 v7, v5, 0x5

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit8 v7, v7, 0x7

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v5, v5, 0x6

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    :goto_17
    and-int/lit8 v5, v5, 0x3c

    goto :goto_16

    :cond_2c
    add-int/lit8 v7, v5, 0x4

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit8 v7, v7, 0x7

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    goto :goto_17

    :cond_2d
    add-int/lit8 v7, v5, 0x5

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/2addr v7, v6

    shl-int/lit8 v7, v7, 0x6

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    goto :goto_15

    :goto_18
    add-int/2addr v5, v6

    mul-int/lit8 v15, v5, 0x20

    goto :goto_1d

    :cond_2e
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/2addr v5, v12

    if-nez v5, :cond_2f

    const/4 v5, 0x0

    goto :goto_1b

    :cond_2f
    const/16 v5, 0x1a

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    const/16 v7, 0x1c

    move v10, v7

    const/4 v8, 0x0

    :goto_19
    if-ge v8, v5, :cond_30

    add-int/lit8 v11, v8, 0x1b

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    :cond_30
    add-int/lit8 v5, v10, 0x1a

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    const/4 v8, 0x0

    :goto_1a
    if-ge v8, v5, :cond_31

    add-int/lit8 v11, v10, 0x1b

    add-int/2addr v11, v8

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    add-int/2addr v7, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    :cond_31
    add-int v5, v10, v7

    :goto_1b
    add-int/lit8 v7, v5, 0x1a

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    add-int/lit8 v7, v7, 0x1b

    add-int/2addr v7, v5

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v8

    sub-int/2addr v8, v7

    if-le v8, v6, :cond_32

    add-int/2addr v7, v6

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    goto :goto_1c

    :cond_32
    const/4 v7, 0x0

    :goto_1c
    invoke-static {v5, v7}, Lˊﾞ/ﹳٴ;->ˉʿ(BB)J

    move-result-wide v7

    const-wide/32 v10, 0xbb80

    mul-long/2addr v7, v10

    const-wide/32 v10, 0xf4240

    div-long/2addr v7, v10

    long-to-int v15, v7

    :goto_1d
    iput v15, v1, Lﹶ/ʾᵎ;->ᵔי:I

    if-nez v15, :cond_33

    :goto_1e
    return v6

    :cond_33
    iget-object v5, v1, Lﹶ/ʾᵎ;->ᴵˊ:Lﹶ/ﹳᐧ;

    if-eqz v5, :cond_36

    invoke-virtual {v1}, Lﹶ/ʾᵎ;->ʽʽ()Z

    move-result v5

    if-nez v5, :cond_35

    :cond_34
    :goto_1f
    const/16 v21, 0x0

    goto/16 :goto_23

    :cond_35
    invoke-virtual {v1, v2, v3}, Lﹶ/ʾᵎ;->ʼʼ(J)V

    const/4 v5, 0x0

    iput-object v5, v1, Lﹶ/ʾᵎ;->ᴵˊ:Lﹶ/ﹳᐧ;

    :cond_36
    iget-wide v7, v1, Lﹶ/ʾᵎ;->ˈʿ:J

    iget-object v5, v1, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    invoke-virtual {v1}, Lﹶ/ʾᵎ;->ˈٴ()J

    move-result-wide v10

    iget-object v12, v1, Lﹶ/ʾᵎ;->ˈ:Lﹶ/ᴵᵔ;

    iget-wide v12, v12, Lﹶ/ᴵᵔ;->ˉˆ:J

    sub-long/2addr v10, v12

    iget-object v5, v5, Lﹶ/ᵔﹳ;->ﹳٴ:Lʽⁱ/ﹳᐧ;

    iget v5, v5, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    invoke-static {v5, v10, v11}, Lᐧˎ/ʼʼ;->ʿ(IJ)J

    move-result-wide v10

    add-long/2addr v10, v7

    iget-boolean v5, v1, Lﹶ/ʾᵎ;->ˆﾞ:Z

    if-nez v5, :cond_38

    sub-long v7, v10, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/32 v12, 0x30d40

    cmp-long v5, v7, v12

    if-lez v5, :cond_38

    iget-object v5, v1, Lﹶ/ʾᵎ;->יـ:Lᐧﹳ/ʽ;

    if-eqz v5, :cond_37

    new-instance v7, Landroidx/media3/exoplayer/audio/AudioSink$UnexpectedDiscontinuityException;

    const-string v8, "Unexpected audio track timestamp discontinuity: expected "

    const-string v12, ", got "

    invoke-static {v10, v11, v8, v12}, Lʼﾞ/ˊˋ;->ʻٴ(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lᐧﹳ/ʽ;->ᵔʾ(Ljava/lang/Exception;)V

    :cond_37
    iput-boolean v6, v1, Lﹶ/ʾᵎ;->ˆﾞ:Z

    :cond_38
    iget-boolean v5, v1, Lﹶ/ʾᵎ;->ˆﾞ:Z

    if-eqz v5, :cond_3a

    invoke-virtual {v1}, Lﹶ/ʾᵎ;->ʽʽ()Z

    move-result v5

    if-nez v5, :cond_39

    goto :goto_1f

    :cond_39
    sub-long v7, v2, v10

    iget-wide v10, v1, Lﹶ/ʾᵎ;->ˈʿ:J

    add-long/2addr v10, v7

    iput-wide v10, v1, Lﹶ/ʾᵎ;->ˈʿ:J

    const/4 v5, 0x0

    iput-boolean v5, v1, Lﹶ/ʾᵎ;->ˆﾞ:Z

    invoke-virtual {v1, v2, v3}, Lﹶ/ʾᵎ;->ʼʼ(J)V

    iget-object v5, v1, Lﹶ/ʾᵎ;->יـ:Lᐧﹳ/ʽ;

    if-eqz v5, :cond_3a

    cmp-long v7, v7, v18

    if-eqz v7, :cond_3a

    iget v7, v5, Lᐧﹳ/ʽ;->ʾˋ:I

    packed-switch v7, :pswitch_data_3

    iget-object v5, v5, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v5, Lﹶ/ʾˋ;

    iput-boolean v6, v5, Lﹶ/ʾˋ;->ᵢᐧ:Z

    goto :goto_20

    :pswitch_9
    iget-object v5, v5, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/decoder/ffmpeg/ʽ;

    iput-boolean v6, v5, Landroidx/media3/decoder/ffmpeg/ʽ;->ﹶᐧ:Z

    :cond_3a
    :goto_20
    iget-object v5, v1, Lﹶ/ʾᵎ;->ʽﹳ:Lﹶ/ᵔﹳ;

    iget v5, v5, Lﹶ/ᵔﹳ;->ʽ:I

    if-nez v5, :cond_3b

    iget-wide v7, v1, Lﹶ/ʾᵎ;->ˉٴ:J

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v7, v10

    iput-wide v7, v1, Lﹶ/ʾᵎ;->ˉٴ:J

    goto :goto_21

    :cond_3b
    iget-wide v7, v1, Lﹶ/ʾᵎ;->ᵎⁱ:J

    iget v5, v1, Lﹶ/ʾᵎ;->ᵔי:I

    int-to-long v10, v5

    int-to-long v12, v4

    mul-long/2addr v10, v12

    add-long/2addr v10, v7

    iput-wide v10, v1, Lﹶ/ʾᵎ;->ᵎⁱ:J

    :goto_21
    iput-object v0, v1, Lﹶ/ʾᵎ;->ˋᵔ:Ljava/nio/ByteBuffer;

    iput v4, v1, Lﹶ/ʾᵎ;->ˊˋ:I

    :cond_3c
    invoke-virtual {v1, v2, v3}, Lﹶ/ʾᵎ;->ᵎˊ(J)V

    iget-object v0, v1, Lﹶ/ʾᵎ;->ˋᵔ:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_3d

    const/4 v5, 0x0

    iput-object v5, v1, Lﹶ/ʾᵎ;->ˋᵔ:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    iput v5, v1, Lﹶ/ʾᵎ;->ˊˋ:I

    return v6

    :cond_3d
    invoke-virtual {v1}, Lﹶ/ʾᵎ;->ᴵᵔ()J

    move-result-wide v2

    iget-wide v4, v9, Lﹶ/ˉʿ;->ʼʼ:J

    cmp-long v0, v4, v16

    if-eqz v0, :cond_3e

    cmp-long v0, v2, v18

    if-lez v0, :cond_3e

    iget-object v0, v9, Lﹶ/ˉʿ;->ٴᵢ:Lᐧˎ/ˏי;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v9, Lﹶ/ˉʿ;->ʼʼ:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3e

    move v5, v6

    goto :goto_22

    :cond_3e
    const/4 v5, 0x0

    :goto_22
    if-eqz v5, :cond_34

    const-string v0, "DefaultAudioSink"

    const-string v2, "Resetting stalled audio track"

    invoke-static {v0, v2}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lﹶ/ʾᵎ;->flush()V

    return v6

    :goto_23
    return v21

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xe
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x11
        :pswitch_9
    .end packed-switch
.end method

.method public final ᵔי()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lﹶ/ʾᵎ;->ٴᵢ()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    move-result-object v0

    iget-object v1, p0, Lﹶ/ʾᵎ;->ˈٴ:Lʽⁱ/ᵎⁱ;

    iget v1, v1, Lʽⁱ/ᵎⁱ;->ﹳٴ:F

    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v0

    iget-object v1, p0, Lﹶ/ʾᵎ;->ˈٴ:Lʽⁱ/ᵎⁱ;

    iget v1, v1, Lʽⁱ/ᵎⁱ;->ⁱˊ:F

    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DefaultAudioSink"

    const-string v2, "Failed to set playback params"

    invoke-static {v1, v2, v0}, Lᐧˎ/ﹳٴ;->ᴵᵔ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    new-instance v0, Lʽⁱ/ᵎⁱ;

    iget-object v1, p0, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v1

    iget-object v2, p0, Lﹶ/ʾᵎ;->ـˆ:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/PlaybackParams;->getPitch()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lʽⁱ/ᵎⁱ;-><init>(FF)V

    iput-object v0, p0, Lﹶ/ʾᵎ;->ˈٴ:Lʽⁱ/ᵎⁱ;

    iget v0, v0, Lʽⁱ/ᵎⁱ;->ﹳٴ:F

    iget-object v1, p0, Lﹶ/ʾᵎ;->ᵔᵢ:Lﹶ/ˉʿ;

    iput v0, v1, Lﹶ/ˉʿ;->ᵔᵢ:F

    iget-object v0, v1, Lﹶ/ˉʿ;->ˑﹳ:Lﹶ/ﾞʻ;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lﹶ/ﾞʻ;->ﹳٴ(I)V

    :cond_0
    invoke-virtual {v1}, Lﹶ/ˉʿ;->ﾞᴵ()V

    :cond_1
    return-void
.end method

.method public final ᵔᵢ()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lﹶ/ʾᵎ;->ـˏ:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lﹶ/ʾᵎ;->ٴᵢ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lﹶ/ʾᵎ;->ʽʽ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lﹶ/ʾᵎ;->ٴʼ()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lﹶ/ʾᵎ;->ـˏ:Z

    :cond_0
    return-void
.end method

.method public final ᵔﹳ(Lʻʿ/יـ;)V
    .locals 0

    iput-object p1, p0, Lﹶ/ʾᵎ;->ﹳᐧ:Lʻʿ/יـ;

    return-void
.end method

.method public final ᵢˏ(Lﹶ/ʼˎ;Lʽⁱ/ˑﹳ;ILʽⁱ/ﹳᐧ;Landroid/content/Context;)Landroid/media/AudioTrack;
    .locals 10

    .prologue
    :try_start_0
    iget-object v0, p0, Lﹶ/ʾᵎ;->ʼᐧ:Lﹶ/ᵢˏ;

    invoke-virtual {v0, p1, p2, p3, p5}, Lﹶ/ᵢˏ;->ﹳٴ(Lﹶ/ʼˎ;Lʽⁱ/ˑﹳ;ILandroid/content/Context;)Landroid/media/AudioTrack;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p2}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 p3, 0x1

    if-ne v1, p3, :cond_0

    return-object p2

    :cond_0
    :try_start_1
    invoke-virtual {p2}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;

    iget v2, p1, Lﹶ/ʼˎ;->ⁱˊ:I

    iget v3, p1, Lﹶ/ʼˎ;->ʽ:I

    iget v4, p1, Lﹶ/ʼˎ;->ﹳٴ:I

    iget v5, p1, Lﹶ/ʼˎ;->ﾞᴵ:I

    iget-boolean v7, p1, Lﹶ/ʼˎ;->ˑﹳ:Z

    const/4 v8, 0x0

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;-><init>(IIIIILʽⁱ/ﹳᐧ;ZLjava/lang/RuntimeException;)V

    throw v0

    :catch_1
    move-exception v0

    :goto_0
    move-object v6, p4

    move-object p2, v0

    move-object v9, p2

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0

    :goto_1
    new-instance v1, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;

    iget v3, p1, Lﹶ/ʼˎ;->ⁱˊ:I

    iget v4, p1, Lﹶ/ʼˎ;->ʽ:I

    iget v5, p1, Lﹶ/ʼˎ;->ﹳٴ:I

    move-object v7, v6

    iget v6, p1, Lﹶ/ʼˎ;->ﾞᴵ:I

    iget-boolean v8, p1, Lﹶ/ʼˎ;->ˑﹳ:Z

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;-><init>(IIIIILʽⁱ/ﹳᐧ;ZLjava/lang/RuntimeException;)V

    throw v1
.end method

.method public final ⁱˊ()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lﹶ/ʾᵎ;->ٴᵢ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lﹶ/ʾᵎ;->ـˏ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lﹶ/ʾᵎ;->ʼˎ()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final ﹳٴ(Lʽⁱ/ﹳᐧ;)Z
    .locals 0

    .prologue
    invoke-virtual {p0, p1}, Lﹶ/ʾᵎ;->יـ(Lʽⁱ/ﹳᐧ;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ﹳᐧ(Lᐧˎ/ˏי;)V
    .locals 1

    iget-object v0, p0, Lﹶ/ʾᵎ;->ᵔᵢ:Lﹶ/ˉʿ;

    iput-object p1, v0, Lﹶ/ˉʿ;->ٴᵢ:Lᐧˎ/ˏי;

    return-void
.end method

.method public final ﾞʻ(Lᐧﹳ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lﹶ/ʾᵎ;->יـ:Lᐧﹳ/ʽ;

    return-void
.end method

.method public final ﾞᴵ()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lﹶ/ʾᵎ;->ˉـ:Z

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-boolean v0, p0, Lﹶ/ʾᵎ;->ᐧᴵ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lﹶ/ʾᵎ;->ᐧᴵ:Z

    invoke-virtual {p0}, Lﹶ/ʾᵎ;->flush()V

    :cond_0
    return-void
.end method
