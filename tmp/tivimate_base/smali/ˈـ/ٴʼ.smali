.class public final Lˈـ/ٴʼ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˈـ/ˑﹳ;


# instance fields
.field public final ʾˋ:Lـˊ/ﹳᐧ;

.field public ᴵˊ:Lˈـ/ٴʼ;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lـˊ/ﹳᐧ;

    const-wide/16 v1, 0x1f40

    invoke-static {v1, v2}, Lˈˊ/ˉˆ;->ᵔᵢ(J)I

    move-result v1

    invoke-direct {v0, v1}, Lـˊ/ﹳᐧ;-><init>(I)V

    iput-object v0, p0, Lˈـ/ٴʼ;->ʾˋ:Lـˊ/ﹳᐧ;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    iget-object v0, p0, Lˈـ/ٴʼ;->ʾˋ:Lـˊ/ﹳᐧ;

    invoke-virtual {v0}, Lـˊ/ﹳᐧ;->close()V

    iget-object v0, p0, Lˈـ/ٴʼ;->ᴵˊ:Lˈـ/ٴʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lˈـ/ٴʼ;->close()V

    :cond_0
    return-void
.end method

.method public final read([BII)I
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Lˈـ/ٴʼ;->ʾˋ:Lـˊ/ﹳᐧ;

    invoke-virtual {v0, p1, p2, p3}, Lـˊ/ﹳᐧ;->read([BII)I

    move-result p1
    :try_end_0
    .catch Landroidx/media3/datasource/UdpDataSource$UdpDataSourceException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    iget p2, p1, Landroidx/media3/datasource/DataSourceException;->ʾˋ:I

    const/16 p3, 0x7d2

    if-ne p2, p3, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    throw p1
.end method

.method public final ʼˎ()I
    .locals 2

    .prologue
    iget-object v0, p0, Lˈـ/ٴʼ;->ʾˋ:Lـˊ/ﹳᐧ;

    iget-object v0, v0, Lـˊ/ﹳᐧ;->ᵎⁱ:Ljava/net/DatagramSocket;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public final ʼᐧ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ʽʽ(Lـˊ/ᵔᵢ;)J
    .locals 2

    iget-object v0, p0, Lˈـ/ٴʼ;->ʾˋ:Lـˊ/ﹳᐧ;

    invoke-virtual {v0, p1}, Lـˊ/ﹳᐧ;->ʽʽ(Lـˊ/ᵔᵢ;)J

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final ˉʿ(Lـˊ/ᵔﹳ;)V
    .locals 1

    iget-object v0, p0, Lˈـ/ٴʼ;->ʾˋ:Lـˊ/ﹳᐧ;

    invoke-virtual {v0, p1}, Lـˊ/ⁱˊ;->ˉʿ(Lـˊ/ᵔﹳ;)V

    return-void
.end method

.method public final יـ()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lˈـ/ٴʼ;->ʾˋ:Lـˊ/ﹳᐧ;

    iget-object v0, v0, Lـˊ/ﹳᐧ;->ˉٴ:Landroid/net/Uri;

    return-object v0
.end method

.method public final ٴﹶ()Ljava/util/Map;
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public final ᵢˏ()Lˈـ/ᵎⁱ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final ⁱˊ()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-virtual {p0}, Lˈـ/ٴʼ;->ʼˎ()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "RTP/AVP;unicast;client_port="

    const-string v3, "-"

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/media/session/ﹳٴ;->ٴﹶ(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
