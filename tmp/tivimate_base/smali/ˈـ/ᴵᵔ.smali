.class public final Lˈـ/ᴵᵔ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Landroid/net/Uri;

.field public final ⁱˊ:I

.field public final ﹳٴ:J


# direct methods
.method public constructor <init>(IJLandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lˈـ/ᴵᵔ;->ﹳٴ:J

    iput p1, p0, Lˈـ/ᴵᵔ;->ⁱˊ:I

    iput-object p4, p0, Lˈـ/ᴵᵔ;->ʽ:Landroid/net/Uri;

    return-void
.end method

.method public static ⁱˊ(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "rtsp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rtsp://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1, p1}, Lᐧˎ/ﹳٴ;->ᴵˊ(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lᐧˎ/ﹳٴ;->ᴵˊ(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static ﹳٴ(Landroid/net/Uri;Ljava/lang/String;)Lʼʻ/ʿᵢ;
    .locals 21

    .prologue
    const-string v0, "initialCapacity"

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lʼʻ/ﹳᐧ;->ˈ(ILjava/lang/String;)V

    new-array v0, v1, [Ljava/lang/Object;

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    const-string v1, ","

    const/4 v2, -0x1

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_7

    aget-object v7, v1, v5

    const-string v8, ";"

    invoke-virtual {v7, v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v15, v2

    move/from16 v16, v5

    const/16 p1, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v13, v9, :cond_3

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    aget-object v10, v8, v13

    :try_start_0
    const-string v11, "="

    const/4 v2, 0x2

    invoke-virtual {v10, v11, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    aget-object v11, v2, p1

    const/16 v19, 0x1

    aget-object v2, v2, v19

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    move-object/from16 v20, v1

    const v1, 0x1bc5f

    if-eq v12, v1, :cond_2

    const v1, 0x1c56f

    if-eq v12, v1, :cond_1

    const v1, 0x5ad9263b

    if-ne v12, v1, :cond_0

    const-string v1, "rtptime"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v1, p0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    goto :goto_3

    :cond_1
    const-string v1, "url"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v1, p0

    invoke-static {v1, v2}, Lˈـ/ᴵᵔ;->ⁱˊ(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    goto :goto_2

    :cond_2
    move-object/from16 v1, p0

    const-string v12, "seq"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    :goto_2
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v20

    const/4 v2, -0x1

    goto :goto_1

    :goto_3
    invoke-static {v11, v0}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    invoke-static {v10, v0}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_3
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v20, v1

    move-object/from16 v1, p0

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    if-ne v15, v2, :cond_5

    cmp-long v8, v4, v17

    if-eqz v8, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    goto :goto_7

    :cond_5
    :goto_5
    new-instance v7, Lˈـ/ᴵᵔ;

    invoke-direct {v7, v15, v4, v5, v14}, Lˈـ/ᴵᵔ;-><init>(IJLandroid/net/Uri;)V

    array-length v4, v0

    add-int/lit8 v5, v6, 0x1

    invoke-static {v4, v5}, Lʼʻ/ʽʽ;->ﾞᴵ(II)I

    move-result v4

    array-length v8, v0

    if-gt v4, v8, :cond_6

    goto :goto_6

    :cond_6
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :goto_6
    aput-object v7, v0, v6

    add-int/lit8 v4, v16, 0x1

    move v6, v5

    move-object/from16 v1, v20

    move v5, v4

    goto/16 :goto_0

    :goto_7
    invoke-static {v7, v0}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_7
    invoke-static {v6, v0}, Lʼʻ/ᵎⁱ;->ʼˎ(I[Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object v0

    return-object v0
.end method
