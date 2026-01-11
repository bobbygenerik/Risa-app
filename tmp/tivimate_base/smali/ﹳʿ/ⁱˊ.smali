.class public Lﹳʿ/ⁱˊ;
.super Lᵎᵎ/ʽ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:I

.field public ˈ:[B

.field public ˑﹳ:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lﹳʿ/ⁱˊ;->ʽ:I

    const-string v1, "NegTokenInit"

    invoke-direct {p0, v0, v1}, Lᵎᵎ/ʽ;-><init>(ILjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lﹳʿ/ⁱˊ;->ˑﹳ:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lﹳʿ/ⁱˊ;->ʽ:I

    invoke-direct {p0, p1, p2}, Lᵎᵎ/ʽ;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic ﾞᴵ(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p0}, Lᐧـ/ˈ;->יـ(Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    instance-of p1, p0, Ljava/lang/AutoCloseable;

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :cond_1
    instance-of p1, p0, Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_2

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-static {p0}, Lˉˏ/ﹳٴ;->ⁱˊ(Ljava/util/concurrent/ExecutorService;)V

    return-void

    :cond_2
    instance-of p1, p0, Landroid/content/res/TypedArray;

    if-eqz p1, :cond_3

    check-cast p0, Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_3
    instance-of p1, p0, Landroid/media/MediaMetadataRetriever;

    if-eqz p1, :cond_4

    check-cast p0, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void

    :cond_4
    instance-of p1, p0, Landroid/media/MediaDrm;

    if-eqz p1, :cond_5

    check-cast p0, Landroid/media/MediaDrm;

    invoke-virtual {p0}, Landroid/media/MediaDrm;->release()V

    return-void

    :cond_5
    instance-of p1, p0, Landroid/drm/DrmManagerClient;

    if-eqz p1, :cond_6

    check-cast p0, Landroid/drm/DrmManagerClient;

    invoke-virtual {p0}, Landroid/drm/DrmManagerClient;->release()V

    return-void

    :cond_6
    instance-of p1, p0, Landroid/content/ContentProviderClient;

    if-eqz p1, :cond_7

    check-cast p0, Landroid/content/ContentProviderClient;

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public ʼˎ(Lˎᵔ/ⁱˊ;)V
    .locals 3

    .prologue
    instance-of v0, p1, Lˈˑ/ﹳٴ;

    if-eqz v0, :cond_2

    check-cast p1, Lˈˑ/ﹳٴ;

    invoke-virtual {p1}, Lˈˑ/ﹳٴ;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˎᵔ/ⁱˊ;

    instance-of v1, v0, Lˆⁱ/ᵎﹶ;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lﹳʿ/ⁱˊ;->ˑﹳ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    check-cast v0, Lˆⁱ/ᵎﹶ;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/hierynomus/spnego/SpnegoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a MechType (OBJECT IDENTIFIER) as contents of the MechTypeList, not: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lcom/hierynomus/spnego/SpnegoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected the MechTypeList (SEQUENCE) contents, not: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ʽ(Lˈˑ/ʽ;)V
    .locals 4

    .prologue
    iget v0, p0, Lﹳʿ/ⁱˊ;->ʽ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lˎᵔ/ⁱˊ;->ʾˋ:Lˎᵔ/ﾞᴵ;

    iget v1, v0, Lˎᵔ/ﾞᴵ;->ⁱˊ:I

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    const-string v3, "Expected the responseToken (OCTET_STRING) contents, not: "

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lˈˑ/ʽ;->ˈ()Lˎᵔ/ⁱˊ;

    move-result-object p1

    instance-of v0, p1, Lˑᐧ/ⁱˊ;

    if-eqz v0, :cond_0

    check-cast p1, Lˑᐧ/ⁱˊ;

    iget-object p1, p1, Lˑᐧ/ʽ;->ᴵˊ:[B

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    goto/16 :goto_0

    :cond_0
    new-instance v0, Lcom/hierynomus/spnego/SpnegoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Lcom/hierynomus/spnego/SpnegoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown Object Tag "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lˎᵔ/ﾞᴵ;->ⁱˊ:I

    const-string v2, " encountered."

    invoke-static {v1, v0, v2}, Lʼﾞ/ˊˋ;->ˏי(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, Lˈˑ/ʽ;->ˈ()Lˎᵔ/ⁱˊ;

    move-result-object p1

    instance-of v0, p1, Lˑᐧ/ⁱˊ;

    if-eqz v0, :cond_3

    check-cast p1, Lˑᐧ/ⁱˊ;

    iget-object p1, p1, Lˑᐧ/ʽ;->ᴵˊ:[B

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lﹳʿ/ⁱˊ;->ˈ:[B

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/hierynomus/spnego/SpnegoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p1}, Lˈˑ/ʽ;->ˈ()Lˎᵔ/ⁱˊ;

    move-result-object p1

    instance-of v0, p1, Lˆⁱ/ᵎﹶ;

    if-eqz v0, :cond_5

    check-cast p1, Lˆⁱ/ᵎﹶ;

    iput-object p1, p0, Lﹳʿ/ⁱˊ;->ˑﹳ:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/hierynomus/spnego/SpnegoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected the supportedMech (OBJECT IDENTIFIER) contents, not: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {p1}, Lˈˑ/ʽ;->ˈ()Lˎᵔ/ⁱˊ;

    move-result-object p1

    instance-of p1, p1, Lˆⁱ/ˈ;

    if-eqz p1, :cond_7

    :goto_0
    return-void

    :cond_7
    new-instance p1, Lcom/hierynomus/spnego/SpnegoException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected the negResult (ENUMERATED) contents, not: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lﹳʿ/ⁱˊ;->ˑﹳ:Ljava/lang/Object;

    check-cast v1, Lˆⁱ/ᵎﹶ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p1}, Lˈˑ/ʽ;->ˈ()Lˎᵔ/ⁱˊ;

    move-result-object v0

    iget-object v1, p1, Lˎᵔ/ⁱˊ;->ʾˋ:Lˎᵔ/ﾞᴵ;

    invoke-virtual {v0}, Lˎᵔ/ⁱˊ;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "not_defined_in_RFC4178@please_ignore"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    iget v0, v1, Lˎᵔ/ﾞᴵ;->ⁱˊ:I

    if-eqz v0, :cond_b

    const/4 v2, 0x1

    if-eq v0, v2, :cond_c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a

    const/4 p1, 0x3

    if-ne v0, p1, :cond_9

    goto :goto_1

    :cond_9
    new-instance p1, Lcom/hierynomus/spnego/SpnegoException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown Object Tag "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lˎᵔ/ﾞᴵ;->ⁱˊ:I

    const-string v2, " encountered."

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˏי(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-virtual {p1}, Lˈˑ/ʽ;->ˈ()Lˎᵔ/ⁱˊ;

    move-result-object p1

    invoke-virtual {p0, p1}, Lﹳʿ/ⁱˊ;->ᵔᵢ(Lˎᵔ/ⁱˊ;)V

    goto :goto_1

    :cond_b
    invoke-virtual {p1}, Lˈˑ/ʽ;->ˈ()Lˎᵔ/ⁱˊ;

    move-result-object p1

    invoke-virtual {p0, p1}, Lﹳʿ/ⁱˊ;->ʼˎ(Lˎᵔ/ⁱˊ;)V

    :cond_c
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ˑﹳ(Lˎʿ/ⁱˊ;Lˎᵔ/ⁱˊ;)V
    .locals 1

    .prologue
    iget v0, p0, Lﹳʿ/ⁱˊ;->ʽ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lᵎᵎ/ʽ;->ˑﹳ(Lˎʿ/ⁱˊ;Lˎᵔ/ⁱˊ;)V

    return-void

    :pswitch_0
    const/4 p1, 0x0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public ᵎﹶ([B)V
    .locals 4

    .prologue
    new-instance v0, Lˎʿ/ﹳٴ;

    sget-object v1, Lˎʿ/ʽ;->ʽ:Lˎʿ/ʽ;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2, v1}, Lˎʿ/ⁱˊ;-><init>([BZLˎʿ/ʽ;)V

    :try_start_0
    new-instance p1, Lﾞʽ/ﹳٴ;

    new-instance v1, Lᵢᴵ/ﹳٴ;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Lﹳˋ/ʼˎ;-><init>(I)V

    new-instance v2, Lˊᐧ/ˑﹳ;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Lˊᐧ/ˑﹳ;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, v1, v2}, Lﾞʽ/ﹳٴ;-><init>(Lᵢᴵ/ﹳٴ;Lˊᐧ/ˑﹳ;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Lﾞʽ/ﹳٴ;->ᵎﹶ()Lˎᵔ/ⁱˊ;

    move-result-object v0

    invoke-virtual {p0, v0}, Lᵎᵎ/ʽ;->ⁱˊ(Lˎᵔ/ⁱˊ;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1, v0}, Lﹳʿ/ⁱˊ;->ﾞᴵ(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {p1, v0}, Lﹳʿ/ⁱˊ;->ﾞᴵ(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    new-instance v0, Lcom/hierynomus/spnego/SpnegoException;

    const-string v1, "Could not read NegTokenTarg from buffer"

    invoke-direct {v0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public ᵔᵢ(Lˎᵔ/ⁱˊ;)V
    .locals 3

    .prologue
    instance-of v0, p1, Lˑᐧ/ⁱˊ;

    if-eqz v0, :cond_0

    check-cast p1, Lˑᐧ/ⁱˊ;

    iget-object p1, p1, Lˑᐧ/ʽ;->ᴵˊ:[B

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lﹳʿ/ⁱˊ;->ˈ:[B

    return-void

    :cond_0
    new-instance v0, Lcom/hierynomus/spnego/SpnegoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected the MechToken (OCTET_STRING) contents, not: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
