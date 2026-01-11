.class public final Lⁱי/ʿᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:I

.field public ˈ:Ljava/lang/Object;

.field public final ˑﹳ:Landroid/os/Looper;

.field public final ⁱˊ:Lⁱי/ˉـ;

.field public final ﹳٴ:Lⁱי/ʿ;

.field public ﾞᴵ:Z


# direct methods
.method public constructor <init>(Lⁱי/ˉـ;Lⁱי/ʿ;Lʽⁱ/ʼˈ;ILandroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lⁱי/ʿᵢ;->ⁱˊ:Lⁱי/ˉـ;

    iput-object p2, p0, Lⁱי/ʿᵢ;->ﹳٴ:Lⁱי/ʿ;

    iput-object p5, p0, Lⁱי/ʿᵢ;->ˑﹳ:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final ⁱˊ()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lⁱי/ʿᵢ;->ﾞᴵ:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput-boolean v1, p0, Lⁱי/ʿᵢ;->ﾞᴵ:Z

    iget-object v0, p0, Lⁱי/ʿᵢ;->ⁱˊ:Lⁱי/ˉـ;

    check-cast v0, Lⁱי/ᴵᵔ;

    iget-boolean v1, v0, Lⁱי/ᴵᵔ;->ـﹶ:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lⁱי/ᴵᵔ;->ٴʼ:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lⁱי/ᴵᵔ;->ˉٴ:Lᐧˎ/ʻٴ;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p0}, Lᐧˎ/ʻٴ;->ﹳٴ(ILjava/lang/Object;)Lᐧˎ/ʽﹳ;

    move-result-object v0

    invoke-virtual {v0}, Lᐧˎ/ʽﹳ;->ⁱˊ()V

    return-void

    :cond_1
    :goto_0
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lⁱי/ʿᵢ;->ﹳٴ(Z)V

    return-void
.end method

.method public final declared-synchronized ﹳٴ(Z)V
    .locals 0

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
