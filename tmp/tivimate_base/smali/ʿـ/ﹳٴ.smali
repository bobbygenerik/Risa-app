.class public final Lʿـ/ﹳٴ;
.super Lـˊ/ⁱˊ;
.source "SourceFile"


# static fields
.field public static final synthetic ٴᵢ:I


# instance fields
.field public ˊʻ:Landroid/net/Uri;

.field public ᴵᵔ:Lio/antmedia/rtmp_client/RtmpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.datasource.rtmp"

    invoke-static {v0}, Lʽⁱ/ʽʽ;->ﹳٴ(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lـˊ/ⁱˊ;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    iget-object v0, p0, Lʿـ/ﹳٴ;->ˊʻ:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lʿـ/ﹳٴ;->ˊʻ:Landroid/net/Uri;

    invoke-virtual {p0}, Lـˊ/ⁱˊ;->ʽ()V

    :cond_0
    iget-object v0, p0, Lʿـ/ﹳٴ;->ᴵᵔ:Lio/antmedia/rtmp_client/RtmpClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/antmedia/rtmp_client/RtmpClient;->ﹳٴ()V

    iput-object v1, p0, Lʿـ/ﹳٴ;->ᴵᵔ:Lio/antmedia/rtmp_client/RtmpClient;

    :cond_1
    return-void
.end method

.method public final read([BII)I
    .locals 2

    .prologue
    iget-object v0, p0, Lʿـ/ﹳٴ;->ᴵᵔ:Lio/antmedia/rtmp_client/RtmpClient;

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3}, Lio/antmedia/rtmp_client/RtmpClient;->ʽ([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0, p1}, Lـˊ/ⁱˊ;->ﹳٴ(I)V

    return p1
.end method

.method public final ʽʽ(Lـˊ/ᵔᵢ;)J
    .locals 3

    invoke-virtual {p0}, Lـˊ/ⁱˊ;->ˑﹳ()V

    new-instance v0, Lio/antmedia/rtmp_client/RtmpClient;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lio/antmedia/rtmp_client/RtmpClient;->ﹳٴ:J

    iput-object v0, p0, Lʿـ/ﹳٴ;->ᴵᵔ:Lio/antmedia/rtmp_client/RtmpClient;

    iget-object v1, p1, Lـˊ/ᵔᵢ;->ﹳٴ:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/antmedia/rtmp_client/RtmpClient;->ⁱˊ(Ljava/lang/String;)V

    iget-object v0, p1, Lـˊ/ᵔᵢ;->ﹳٴ:Landroid/net/Uri;

    iput-object v0, p0, Lʿـ/ﹳٴ;->ˊʻ:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lـˊ/ⁱˊ;->ᵎﹶ(Lـˊ/ᵔᵢ;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final יـ()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lʿـ/ﹳٴ;->ˊʻ:Landroid/net/Uri;

    return-object v0
.end method
