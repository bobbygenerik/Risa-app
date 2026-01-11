.class public final Lˎˉ/ˑﹳ;
.super Lˎˉ/ˈ;
.source "SourceFile"


# instance fields
.field public ˑﹳ:Z

.field public ᵎﹶ:[B

.field public ﾞᴵ:Ljava/util/UUID;


# virtual methods
.method public final ˆʾ(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    .prologue
    const-string v0, "ProtectionHeader"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˎˉ/ˑﹳ;->ˑﹳ:Z

    const/4 v1, 0x0

    const-string v2, "SystemID"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lˎˉ/ˑﹳ;->ﾞᴵ:Ljava/util/UUID;

    :cond_1
    return-void
.end method

.method public final ˈ(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ProtectionHeader"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final ٴﹶ(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˎˉ/ˑﹳ;->ˑﹳ:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lˎˉ/ˑﹳ;->ᵎﹶ:[B

    :cond_0
    return-void
.end method

.method public final ⁱˊ()Ljava/lang/Object;
    .locals 13

    .prologue
    new-instance v0, Lˎˉ/ﹳٴ;

    iget-object v1, p0, Lˎˉ/ˑﹳ;->ﾞᴵ:Ljava/util/UUID;

    iget-object v2, p0, Lˎˉ/ˑﹳ;->ᵎﹶ:[B

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lʻˆ/יـ;->ﹳٴ(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v2

    iget-object v3, p0, Lˎˉ/ˑﹳ;->ᵎﹶ:[B

    new-instance v4, Lʻˆ/ʽﹳ;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    move v6, v12

    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_0

    aget-byte v7, v3, v6

    int-to-char v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "<KID>"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x5

    add-int/2addr v5, v6

    const-string v7, "</KID>"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    aget-byte v3, v8, v12

    const/4 v5, 0x3

    aget-byte v7, v8, v5

    aput-byte v7, v8, v12

    aput-byte v3, v8, v5

    const/4 v3, 0x1

    aget-byte v5, v8, v3

    const/4 v7, 0x2

    aget-byte v9, v8, v7

    aput-byte v9, v8, v3

    aput-byte v5, v8, v7

    const/4 v5, 0x4

    aget-byte v7, v8, v5

    aget-byte v9, v8, v6

    aput-byte v9, v8, v5

    aput-byte v7, v8, v6

    const/4 v5, 0x6

    aget-byte v6, v8, v5

    const/4 v7, 0x7

    aget-byte v9, v8, v7

    aput-byte v9, v8, v5

    aput-byte v6, v8, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Lʻˆ/ʽﹳ;-><init>(ZLjava/lang/String;I[BII[B)V

    new-array v3, v3, [Lʻˆ/ʽﹳ;

    aput-object v4, v3, v12

    invoke-direct {v0, v1, v2, v3}, Lˎˉ/ﹳٴ;-><init>(Ljava/util/UUID;[B[Lʻˆ/ʽﹳ;)V

    return-object v0
.end method

.method public final ﾞᴵ(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .prologue
    const-string v0, "ProtectionHeader"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lˎˉ/ˑﹳ;->ˑﹳ:Z

    :cond_0
    return-void
.end method
