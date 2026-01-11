.class public final Lˈˑ/ʽ;
.super Lˎᵔ/ⁱˊ;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public ʽʽ:[B

.field public final ˈٴ:Lﹳˋ/ʼˎ;

.field public final ᴵˊ:Lˎᵔ/ⁱˊ;

.field public final ᴵᵔ:Z


# direct methods
.method public constructor <init>(Lˎᵔ/ﾞᴵ;Lˎᵔ/ⁱˊ;Z)V
    .locals 1

    .prologue
    if-eqz p3, :cond_0

    sget-object v0, Lˎᵔ/ﹳٴ;->ʽʽ:Lˎᵔ/ﹳٴ;

    invoke-virtual {p1, v0}, Lˎᵔ/ﾞᴵ;->ﹳٴ(Lˎᵔ/ﹳٴ;)Lˎᵔ/ﾞᴵ;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lˎᵔ/ⁱˊ;->ʾˋ:Lˎᵔ/ﾞᴵ;

    iget-object v0, v0, Lˎᵔ/ﾞᴵ;->ˈ:Lˎᵔ/ﹳٴ;

    invoke-virtual {p1, v0}, Lˎᵔ/ﾞᴵ;->ﹳٴ(Lˎᵔ/ﹳٴ;)Lˎᵔ/ﾞᴵ;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lˎᵔ/ⁱˊ;-><init>(Lˎᵔ/ﾞᴵ;)V

    iput-object p2, p0, Lˈˑ/ʽ;->ᴵˊ:Lˎᵔ/ⁱˊ;

    iput-boolean p3, p0, Lˈˑ/ʽ;->ᴵᵔ:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lˈˑ/ʽ;->ʽʽ:[B

    return-void
.end method

.method public constructor <init>(Lˎᵔ/ﾞᴵ;[BLﹳˋ/ʼˎ;)V
    .locals 0

    invoke-direct {p0, p1}, Lˎᵔ/ⁱˊ;-><init>(Lˎᵔ/ﾞᴵ;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lˈˑ/ʽ;->ᴵᵔ:Z

    iput-object p2, p0, Lˈˑ/ʽ;->ʽʽ:[B

    iput-object p3, p0, Lˈˑ/ʽ;->ˈٴ:Lﹳˋ/ʼˎ;

    const/4 p1, 0x0

    iput-object p1, p0, Lˈˑ/ʽ;->ᴵˊ:Lˎᵔ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    sget-object v0, Lˎᵔ/ﾞᴵ;->ˉʿ:Lˎᵔ/ˑﹳ;

    invoke-virtual {p0, v0}, Lˈˑ/ʽ;->ˑﹳ(Lˎᵔ/ﾞᴵ;)Lˎᵔ/ⁱˊ;

    move-result-object v0

    check-cast v0, Lˈˑ/ﹳٴ;

    invoke-virtual {v0}, Lˈˑ/ﹳٴ;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lˈˑ/ʽ;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˎᵔ/ⁱˊ;->ʾˋ:Lˎᵔ/ﾞᴵ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˑ/ʽ;->ᴵˊ:Lˎᵔ/ⁱˊ;

    if-eqz v1, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, ",<unknown>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˈ()Lˎᵔ/ⁱˊ;
    .locals 5

    .prologue
    iget-object v0, p0, Lˈˑ/ʽ;->ᴵˊ:Lˎᵔ/ⁱˊ;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lﾞʽ/ﹳٴ;

    iget-object v2, p0, Lˈˑ/ʽ;->ˈٴ:Lﹳˋ/ʼˎ;

    iget-object v3, p0, Lˈˑ/ʽ;->ʽʽ:[B

    invoke-direct {v1, v2, v3}, Lﾞʽ/ﹳٴ;-><init>(Lﹳˋ/ʼˎ;[B)V
    :try_end_0
    .catch Lcom/hierynomus/asn1/ASN1ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Lﾞʽ/ﹳٴ;->ᵎﹶ()Lˎᵔ/ⁱˊ;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lcom/hierynomus/asn1/ASN1ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_5
    .catch Lcom/hierynomus/asn1/ASN1ParseException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_1
    new-instance v2, Lcom/hierynomus/asn1/ASN1ParseException;

    const-string v3, "Could not parse the inputstream"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {v2, v1, v3, v0}, Lcom/hierynomus/asn1/ASN1ParseException;-><init>(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :goto_2
    new-instance v2, Lcom/hierynomus/asn1/ASN1ParseException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lˎᵔ/ⁱˊ;->ʾˋ:Lˎᵔ/ﾞᴵ;

    aput-object v4, v3, v0

    const-string v0, "Unable to parse the explicit Tagged Object with %s, it might be implicit"

    invoke-direct {v2, v1, v0, v3}, Lcom/hierynomus/asn1/ASN1ParseException;-><init>(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method public final ˑﹳ(Lˎᵔ/ﾞᴵ;)Lˎᵔ/ⁱˊ;
    .locals 3

    .prologue
    iget-object v0, p0, Lˈˑ/ʽ;->ᴵˊ:Lˎᵔ/ⁱˊ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˎᵔ/ⁱˊ;->ʾˋ:Lˎᵔ/ﾞᴵ;

    invoke-virtual {v1, p1}, Lˎᵔ/ﾞᴵ;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lˈˑ/ʽ;->ʽʽ:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lˈˑ/ʽ;->ˈٴ:Lﹳˋ/ʼˎ;

    invoke-virtual {p1, v0}, Lˎᵔ/ﾞᴵ;->ʽ(Lﹳˋ/ʼˎ;)Lʽⁱ/ᵎﹶ;

    move-result-object v0

    iget-object v1, p0, Lˈˑ/ʽ;->ʽʽ:[B

    invoke-virtual {v0, p1, v1}, Lʽⁱ/ᵎﹶ;->ᐧˎ(Lˎᵔ/ﾞᴵ;[B)Lˎᵔ/ⁱˊ;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lcom/hierynomus/asn1/ASN1ParseException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Unable to parse the implicit Tagged Object with %s, it is explicit"

    invoke-direct {v0, p1, v1}, Lcom/hierynomus/asn1/ASN1ParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public final ﹳٴ()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lˈˑ/ʽ;->ˈ()Lˎᵔ/ⁱˊ;

    move-result-object v0

    return-object v0
.end method
