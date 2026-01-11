.class public final Landroidx/media3/exoplayer/rtsp/RtspMediaSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳᵢ/ʼʼ;


# instance fields
.field public final ﹳٴ:Ljavax/net/SocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$Factory;->ﹳٴ:Ljavax/net/SocketFactory;

    return-void
.end method


# virtual methods
.method public final ʽ(Lʽⁱ/ᴵˊ;)Lﹳᵢ/ᴵˊ;
    .locals 3

    .prologue
    iget-object v0, p1, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lˈـ/ʽﹳ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lʽⁱ/ʼʼ;->ﹳٴ:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "rtspt"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lﹳˋ/ʼˎ;

    const/16 v2, 0xd

    invoke-direct {v0, v2}, Lﹳˋ/ʼˎ;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lˋⁱ/ﾞᴵ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$Factory;->ﹳٴ:Ljavax/net/SocketFactory;

    invoke-direct {v1, p1, v0, v2}, Lˈـ/ʽﹳ;-><init>(Lʽⁱ/ᴵˊ;Lˈـ/ˈ;Ljavax/net/SocketFactory;)V

    return-object v1
.end method

.method public final ˈ(Lⁱᴵ/ˉʿ;)Lﹳᵢ/ʼʼ;
    .locals 0

    return-object p0
.end method

.method public final ˑﹳ(Lʻᴵ/יـ;)Lﹳᵢ/ʼʼ;
    .locals 0

    return-object p0
.end method

.method public final ⁱˊ()Lﹳᵢ/ʼʼ;
    .locals 0

    return-object p0
.end method

.method public final ﹳٴ(Z)Lﹳᵢ/ʼʼ;
    .locals 0

    return-object p0
.end method

.method public final ﾞᴵ(Lˋⁱ/ﾞᴵ;)Lﹳᵢ/ʼʼ;
    .locals 0

    return-object p0
.end method
