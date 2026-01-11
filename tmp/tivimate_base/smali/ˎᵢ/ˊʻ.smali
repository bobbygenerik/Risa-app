.class public final Lˎᵢ/ˊʻ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/net/InetSocketAddress;

.field public final ⁱˊ:Ljava/net/Proxy;

.field public final ﹳٴ:Lˎᵢ/ﹳٴ;


# direct methods
.method public constructor <init>(Lˎᵢ/ﹳٴ;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iput-object p2, p0, Lˎᵢ/ˊʻ;->ⁱˊ:Ljava/net/Proxy;

    iput-object p3, p0, Lˎᵢ/ˊʻ;->ʽ:Ljava/net/InetSocketAddress;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    instance-of v0, p1, Lˎᵢ/ˊʻ;

    if-eqz v0, :cond_0

    check-cast p1, Lˎᵢ/ˊʻ;

    iget-object v0, p1, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iget-object v1, p0, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lˎᵢ/ˊʻ;->ⁱˊ:Ljava/net/Proxy;

    iget-object v1, p0, Lˎᵢ/ˊʻ;->ⁱˊ:Ljava/net/Proxy;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lˎᵢ/ˊʻ;->ʽ:Ljava/net/InetSocketAddress;

    iget-object v0, p0, Lˎᵢ/ˊʻ;->ʽ:Ljava/net/InetSocketAddress;

    invoke-static {p1, v0}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    invoke-virtual {v0}, Lˎᵢ/ﹳٴ;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lˎᵢ/ˊʻ;->ⁱˊ:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lˎᵢ/ˊʻ;->ʽ:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iget-object v2, v1, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iget-object v1, v1, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iget-object v2, v2, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    iget-object v3, p0, Lˎᵢ/ˊʻ;->ʽ:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Lⁱᐧ/ⁱˊ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x3a

    invoke-static {v2, v5}, Lﹶˑ/ˆʾ;->ᴵʼ(Ljava/lang/CharSequence;C)Z

    move-result v6

    const-string v7, "]"

    const-string v8, "["

    if-eqz v6, :cond_1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget v6, v1, Lˎᵢ/ʼᐧ;->ˑﹳ:I

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v9

    const-string v10, ":"

    if-ne v6, v9, :cond_2

    invoke-static {v2, v4}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lˎᵢ/ʼᐧ;->ˑﹳ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    invoke-static {v2, v4}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lˎᵢ/ˊʻ;->ⁱˊ:Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string v1, " via proxy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    if-nez v4, :cond_5

    const-string v1, "<unresolved>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    invoke-static {v4, v5}, Lﹶˑ/ˆʾ;->ᴵʼ(Ljava/lang/CharSequence;C)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
