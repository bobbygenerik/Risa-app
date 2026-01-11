.class public Lˊᐧ/ˈ;
.super Lˊᐧ/ˈٴ;
.source "SourceFile"


# static fields
.field public static ʼˎ:Lˊᐧ/ˈ;

.field public static final ˆʾ:Ljava/util/concurrent/locks/ReentrantLock;

.field public static final ˉʿ:J

.field public static final ٴﹶ:Ljava/util/concurrent/locks/Condition;

.field public static final ᵔᵢ:Lʼٴ/ʾᵎ;

.field public static final ﾞʻ:J


# instance fields
.field public ˑﹳ:I

.field public ᵎﹶ:J

.field public ﾞᴵ:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lʼٴ/ʾᵎ;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lʼٴ/ʾᵎ;-><init>(CI)V

    const/16 v1, 0x8

    new-array v1, v1, [Lˊᐧ/ˈ;

    iput-object v1, v0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    sput-object v0, Lˊᐧ/ˈ;->ᵔᵢ:Lʼٴ/ʾᵎ;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lˊᐧ/ˈ;->ˆʾ:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    sput-object v0, Lˊᐧ/ˈ;->ٴﹶ:Ljava/util/concurrent/locks/Condition;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lˊᐧ/ˈ;->ﾞʻ:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lˊᐧ/ˈ;->ˉʿ:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lˊᐧ/ˈ;->ﾞᴵ:I

    return-void
.end method


# virtual methods
.method public final ʼˎ()Z
    .locals 5

    .prologue
    sget-object v0, Lˊᐧ/ˈ;->ˆʾ:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v1, p0, Lˊᐧ/ˈ;->ˑﹳ:I

    const/4 v2, 0x0

    iput v2, p0, Lˊᐧ/ˈ;->ˑﹳ:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    sget-object v1, Lˊᐧ/ˈ;->ᵔᵢ:Lʼٴ/ʾᵎ;

    invoke-virtual {v1, p0}, Lʼٴ/ʾᵎ;->ﹳᐧ(Lˊᐧ/ˈ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public ˆʾ()V
    .locals 0

    return-void
.end method

.method public final ᵔᵢ()V
    .locals 5

    .prologue
    iget-wide v0, p0, Lˊᐧ/ˈٴ;->ʽ:J

    iget-boolean v2, p0, Lˊᐧ/ˈٴ;->ﹳٴ:Z

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget-object v3, Lˊᐧ/ˈ;->ˆʾ:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v4, p0, Lˊᐧ/ˈ;->ˑﹳ:I

    if-nez v4, :cond_1

    const/4 v4, 0x1

    iput v4, p0, Lˊᐧ/ˈ;->ˑﹳ:I

    invoke-static {p0, v0, v1, v2}, Lـˎ/ˈ;->ˉʿ(Lˊᐧ/ˈ;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v0, "Unbalanced enter/exit"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
