.class public final Lˎᵢ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Ljava/util/List;

.field public final ʽ:Ljavax/net/ssl/SSLSocketFactory;

.field public final ˆʾ:Ljava/util/List;

.field public final ˈ:Ljavax/net/ssl/HostnameVerifier;

.field public final ˑﹳ:Lˎᵢ/ﾞᴵ;

.field public final ᵎﹶ:Ljava/net/ProxySelector;

.field public final ᵔᵢ:Lˎᵢ/ʼᐧ;

.field public final ⁱˊ:Ljavax/net/SocketFactory;

.field public final ﹳٴ:Lˎᵢ/ⁱˊ;

.field public final ﾞᴵ:Lˎᵢ/ⁱˊ;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILˎᵢ/ⁱˊ;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lˎᵢ/ﾞᴵ;Lˎᵢ/ⁱˊ;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lˎᵢ/ﹳٴ;->ﹳٴ:Lˎᵢ/ⁱˊ;

    iput-object p4, p0, Lˎᵢ/ﹳٴ;->ⁱˊ:Ljavax/net/SocketFactory;

    iput-object p5, p0, Lˎᵢ/ﹳٴ;->ʽ:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p6, p0, Lˎᵢ/ﹳٴ;->ˈ:Ljavax/net/ssl/HostnameVerifier;

    iput-object p7, p0, Lˎᵢ/ﹳٴ;->ˑﹳ:Lˎᵢ/ﾞᴵ;

    iput-object p8, p0, Lˎᵢ/ﹳٴ;->ﾞᴵ:Lˎᵢ/ⁱˊ;

    iput-object p11, p0, Lˎᵢ/ﹳٴ;->ᵎﹶ:Ljava/net/ProxySelector;

    new-instance p3, Lˊﹶ/ⁱˊ;

    invoke-direct {p3}, Lˊﹶ/ⁱˊ;-><init>()V

    const-string p4, "http"

    const-string p6, "https"

    if-eqz p5, :cond_0

    move-object p5, p6

    goto :goto_0

    :cond_0
    move-object p5, p4

    :goto_0
    invoke-virtual {p5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p7

    if-eqz p7, :cond_1

    iput-object p4, p3, Lˊﹶ/ⁱˊ;->ʽ:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {p5, p6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_4

    iput-object p6, p3, Lˊﹶ/ⁱˊ;->ʽ:Ljava/lang/Object;

    :goto_1
    const/4 p4, 0x7

    const/4 p5, 0x0

    invoke-static {p5, p5, p4, p1}, Lʿˉ/ﹳٴ;->ˈ(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lⁱᐧ/ⁱˊ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_3

    iput-object p4, p3, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    const/4 p1, 0x1

    if-gt p1, p2, :cond_2

    const/high16 p1, 0x10000

    if-ge p2, p1, :cond_2

    iput p2, p3, Lˊﹶ/ⁱˊ;->ⁱˊ:I

    invoke-virtual {p3}, Lˊﹶ/ⁱˊ;->ⁱˊ()Lˎᵢ/ʼᐧ;

    move-result-object p1

    iput-object p1, p0, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    invoke-static {p9}, Lⁱᐧ/ˑﹳ;->ˆʾ(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lˎᵢ/ﹳٴ;->ʼˎ:Ljava/util/List;

    invoke-static {p10}, Lⁱᐧ/ˑﹳ;->ˆʾ(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lˎᵢ/ﹳٴ;->ˆʾ:Ljava/util/List;

    return-void

    :cond_2
    const-string p1, "unexpected port: "

    invoke-static {p2, p1}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "unexpected host: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unexpected scheme: "

    invoke-virtual {p2, p5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    instance-of v0, p1, Lˎᵢ/ﹳٴ;

    if-eqz v0, :cond_0

    check-cast p1, Lˎᵢ/ﹳٴ;

    iget-object v0, p1, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iget-object v1, p0, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    invoke-static {v1, v0}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lˎᵢ/ﹳٴ;->ﹳٴ(Lˎᵢ/ﹳٴ;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iget-object v0, v0, Lˎᵢ/ʼᐧ;->ʼˎ:Ljava/lang/String;

    const/16 v1, 0x20f

    const/16 v2, 0x1f

    invoke-static {v1, v2, v0}, Lʼﾞ/ˊˋ;->ˉʿ(IILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lˎᵢ/ﹳٴ;->ﹳٴ:Lˎᵢ/ⁱˊ;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-object v0, p0, Lˎᵢ/ﹳٴ;->ﾞᴵ:Lˎᵢ/ⁱˊ;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lˎᵢ/ﹳٴ;->ʼˎ:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-object v0, p0, Lˎᵢ/ﹳٴ;->ˆʾ:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lˎᵢ/ﹳٴ;->ᵎﹶ:Ljava/net/ProxySelector;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x3c1

    iget-object v0, p0, Lˎᵢ/ﹳٴ;->ʽ:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lˎᵢ/ﹳٴ;->ˈ:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v1}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-object v0, p0, Lˎᵢ/ﹳٴ;->ˑﹳ:Lˎᵢ/ﾞᴵ;

    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Address{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iget-object v2, v1, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, v1, Lˎᵢ/ʼᐧ;->ˑﹳ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "proxySelector="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lˎᵢ/ﹳٴ;->ᵎﹶ:Ljava/net/ProxySelector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ(Lˎᵢ/ﹳٴ;)Z
    .locals 2

    .prologue
    iget-object v0, p0, Lˎᵢ/ﹳٴ;->ﹳٴ:Lˎᵢ/ⁱˊ;

    iget-object v1, p1, Lˎᵢ/ﹳٴ;->ﹳٴ:Lˎᵢ/ⁱˊ;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˎᵢ/ﹳٴ;->ﾞᴵ:Lˎᵢ/ⁱˊ;

    iget-object v1, p1, Lˎᵢ/ﹳٴ;->ﾞᴵ:Lˎᵢ/ⁱˊ;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˎᵢ/ﹳٴ;->ʼˎ:Ljava/util/List;

    iget-object v1, p1, Lˎᵢ/ﹳٴ;->ʼˎ:Ljava/util/List;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˎᵢ/ﹳٴ;->ˆʾ:Ljava/util/List;

    iget-object v1, p1, Lˎᵢ/ﹳٴ;->ˆʾ:Ljava/util/List;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˎᵢ/ﹳٴ;->ᵎﹶ:Ljava/net/ProxySelector;

    iget-object v1, p1, Lˎᵢ/ﹳٴ;->ᵎﹶ:Ljava/net/ProxySelector;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˎᵢ/ﹳٴ;->ʽ:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p1, Lˎᵢ/ﹳٴ;->ʽ:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˎᵢ/ﹳٴ;->ˈ:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p1, Lˎᵢ/ﹳٴ;->ˈ:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˎᵢ/ﹳٴ;->ˑﹳ:Lˎᵢ/ﾞᴵ;

    iget-object v1, p1, Lˎᵢ/ﹳٴ;->ˑﹳ:Lˎᵢ/ﾞᴵ;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iget v0, v0, Lˎᵢ/ʼᐧ;->ˑﹳ:I

    iget-object p1, p1, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iget p1, p1, Lˎᵢ/ʼᐧ;->ˑﹳ:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
