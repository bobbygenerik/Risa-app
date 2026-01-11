.class public abstract Lˆﹶ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ʽ(Landroid/net/NetworkRequest;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result p0

    return p0
.end method

.method public static ˈ(Landroid/net/NetworkRequest;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/NetworkRequest;->hasTransport(I)Z

    move-result p0

    return p0
.end method

.method public static ⁱˊ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ﹳٴ([I[I)Lˆﹶ/ᵔᵢ;
    .locals 13

    .prologue
    new-instance v0, Lˆﹶ/ᵔᵢ;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x5

    const/16 v6, 0x27

    if-ge v4, v2, :cond_1

    aget v7, p0, v4

    :try_start_0
    invoke-virtual {v1, v7}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v9

    sget-object v10, Lˆﹶ/ᵔᵢ;->ⁱˊ:Ljava/lang/String;

    sget-object v10, Lˆﹶ/ᵔᵢ;->ⁱˊ:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Ignoring adding capability \'"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v9, Lᴵˋ/ˏי;->ﹳٴ:I

    if-gt v7, v5, :cond_0

    nop

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_2
    const/4 v4, 0x3

    if-ge v2, v4, :cond_6

    sget-object v4, Lˆﹶ/ʼˎ;->ﹳٴ:[I

    aget v4, v4, v2

    array-length v7, p0

    move v8, v3

    :goto_3
    if-ge v8, v7, :cond_3

    aget v9, p0, v8

    if-ne v4, v9, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, -0x1

    :goto_4
    if-ltz v8, :cond_4

    const/4 v7, 0x1

    goto :goto_5

    :cond_4
    move v7, v3

    :goto_5
    if-nez v7, :cond_5

    :try_start_1
    invoke-virtual {v1, v4}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v7

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v8

    sget-object v9, Lˆﹶ/ᵔᵢ;->ⁱˊ:Ljava/lang/String;

    sget-object v9, Lˆﹶ/ᵔᵢ;->ⁱˊ:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Ignoring removing default capability \'"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v8, v8, Lᴵˋ/ˏי;->ﹳٴ:I

    if-gt v8, v5, :cond_5

    nop

    :cond_5
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    array-length p0, p1

    :goto_7
    if-ge v3, p0, :cond_7

    aget v2, p1, v3

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    invoke-direct {v0, p0}, Lˆﹶ/ᵔᵢ;-><init>(Landroid/net/NetworkRequest;)V

    return-object v0
.end method
