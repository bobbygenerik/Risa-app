.class public final Lﾞˏ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final ʾˋ:Landroid/os/Handler;

.field public final synthetic ᴵˊ:Lﾞˏ/ˆʾ;


# direct methods
.method public constructor <init>(Lﾞˏ/ˆʾ;Lʼᵢ/ﾞʻ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﾞˏ/ʼˎ;->ᴵˊ:Lﾞˏ/ˆʾ;

    invoke-static {p0}, Lᐧˎ/ʼʼ;->ʼᐧ(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lﾞˏ/ʼˎ;->ʾˋ:Landroid/os/Handler;

    invoke-interface {p2, p0, p1}, Lʼᵢ/ﾞʻ;->ʼᐧ(Lﾞˏ/ʼˎ;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    int-to-long v4, p1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lﾞˏ/ʼˎ;->ﹳٴ(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public final ﹳٴ(J)V
    .locals 3

    .prologue
    iget-object v0, p0, Lﾞˏ/ʼˎ;->ᴵˊ:Lﾞˏ/ˆʾ;

    iget-object v1, v0, Lﾞˏ/ˆʾ;->ˋ:Lﾞˏ/ʼˎ;

    if-ne p0, v1, :cond_2

    iget-object v1, v0, Lʼᵢ/ᵔﹳ;->ˑʼ:Lʼᵢ/ﾞʻ;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, v0, Lʼᵢ/ᵔﹳ;->ˎˉ:Z

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lﾞˏ/ˆʾ;->ⁱי(J)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iput-object p1, v0, Lʼᵢ/ᵔﹳ;->ﹳᵢ:Landroidx/media3/exoplayer/ExoPlaybackException;

    :cond_2
    :goto_0
    return-void
.end method
