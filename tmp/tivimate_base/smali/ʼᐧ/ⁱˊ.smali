.class public final Lʼᐧ/ⁱˊ;
.super Landroid/support/v4/media/session/ⁱˊ;
.source "SourceFile"


# static fields
.field public static volatile ٴﹶ:Lʼᐧ/ⁱˊ;

.field public static final ﾞʻ:Lʼᐧ/ﹳٴ;


# instance fields
.field public final ˆʾ:Lʼᐧ/ˈ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lʼᐧ/ﹳٴ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lʼᐧ/ﹳٴ;-><init>(I)V

    sput-object v0, Lʼᐧ/ⁱˊ;->ﾞʻ:Lʼᐧ/ﹳٴ;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lʼᐧ/ˈ;

    invoke-direct {v0}, Lʼᐧ/ˈ;-><init>()V

    iput-object v0, p0, Lʼᐧ/ⁱˊ;->ˆʾ:Lʼᐧ/ˈ;

    return-void
.end method

.method public static ʾˋ()Lʼᐧ/ⁱˊ;
    .locals 2

    .prologue
    sget-object v0, Lʼᐧ/ⁱˊ;->ٴﹶ:Lʼᐧ/ⁱˊ;

    if-eqz v0, :cond_0

    sget-object v0, Lʼᐧ/ⁱˊ;->ٴﹶ:Lʼᐧ/ⁱˊ;

    return-object v0

    :cond_0
    const-class v0, Lʼᐧ/ⁱˊ;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lʼᐧ/ⁱˊ;->ٴﹶ:Lʼᐧ/ⁱˊ;

    if-nez v1, :cond_1

    new-instance v1, Lʼᐧ/ⁱˊ;

    invoke-direct {v1}, Lʼᐧ/ⁱˊ;-><init>()V

    sput-object v1, Lʼᐧ/ⁱˊ;->ٴﹶ:Lʼᐧ/ⁱˊ;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lʼᐧ/ⁱˊ;->ٴﹶ:Lʼᐧ/ⁱˊ;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final ᴵˊ(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lʼᐧ/ⁱˊ;->ˆʾ:Lʼᐧ/ˈ;

    iget-object v1, v0, Lʼᐧ/ˈ;->ﾞʻ:Landroid/os/Handler;

    if-nez v1, :cond_1

    iget-object v1, v0, Lʼᐧ/ˈ;->ˆʾ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lʼᐧ/ˈ;->ﾞʻ:Landroid/os/Handler;

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Lʼᐧ/ˈ;->ʾˋ(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v2

    iput-object v2, v0, Lʼᐧ/ˈ;->ﾞʻ:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    iget-object v0, v0, Lʼᐧ/ˈ;->ﾞʻ:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
