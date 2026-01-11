.class public final Lˋٴ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﾞﹶ/ⁱˊ;
.implements Lʾﹶ/ⁱˊ;


# instance fields
.field public ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public ˈٴ:Ljava/lang/Object;

.field public ˉٴ:Ljava/lang/Object;

.field public ˊʻ:Ljava/lang/Object;

.field public ٴᵢ:Ljava/lang/Object;

.field public ᴵˊ:Ljava/lang/Object;

.field public ᴵᵔ:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lˋٴ/ʽ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lˋٴ/ʽ;->ᴵˊ:Ljava/lang/Object;

    iput-object v0, p0, Lˋٴ/ʽ;->ʽʽ:Ljava/lang/Object;

    iput-object v0, p0, Lˋٴ/ʽ;->ˈٴ:Ljava/lang/Object;

    iput-object v0, p0, Lˋٴ/ʽ;->ᴵᵔ:Ljava/lang/Object;

    iput-object v0, p0, Lˋٴ/ʽ;->ˊʻ:Ljava/lang/Object;

    iput-object v0, p0, Lˋٴ/ʽ;->ٴᵢ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lˋٴ/ʽ;->ʾˋ:I

    sget-object v0, Lcom/hierynomus/smbj/common/SMBRuntimeException;->ʾˋ:Lˋⁱ/ﾞᴵ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v1, Lˋٴ/ʽ;

    invoke-static {v1}, Lﾞʼ/ⁱˊ;->ˑﹳ(Ljava/lang/Class;)Lﾞʼ/ﹳٴ;

    move-result-object v1

    iput-object v1, p0, Lˋٴ/ʽ;->ᴵˊ:Ljava/lang/Object;

    iput-object p1, p0, Lˋٴ/ʽ;->ʽʽ:Ljava/lang/Object;

    iput-object v0, p0, Lˋٴ/ʽ;->ˈٴ:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lˋٴ/ʽ;->ᴵᵔ:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lˋٴ/ʽ;->ˊʻ:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lᵎˋ/ﹳٴ;Lᵎˋ/ﹳٴ;Lᵎˋ/ﹳٴ;Lᵎˋ/ﹳٴ;Lᵎˋ/ﹳٴ;Lᵎˋ/ﹳٴ;Lᵎˋ/ﹳٴ;I)V
    .locals 0

    iput p8, p0, Lˋٴ/ʽ;->ʾˋ:I

    iput-object p1, p0, Lˋٴ/ʽ;->ᴵˊ:Ljava/lang/Object;

    iput-object p2, p0, Lˋٴ/ʽ;->ʽʽ:Ljava/lang/Object;

    iput-object p3, p0, Lˋٴ/ʽ;->ˈٴ:Ljava/lang/Object;

    iput-object p4, p0, Lˋٴ/ʽ;->ᴵᵔ:Ljava/lang/Object;

    iput-object p5, p0, Lˋٴ/ʽ;->ˊʻ:Ljava/lang/Object;

    iput-object p6, p0, Lˋٴ/ʽ;->ٴᵢ:Ljava/lang/Object;

    iput-object p7, p0, Lˋٴ/ʽ;->ˉٴ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ʽ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .prologue
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p2, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    :goto_0
    const/4 p2, 0x0

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object p2

    :cond_1
    invoke-static {p0}, Lʼ/ᵎﹶ;->ʼᐧ(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/io/CharConversionException;

    const-string p2, "can\'t read keyset; the pref value "

    const-string v0, " is not a valid hex string"

    invoke-static {p2, p1, v0}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "keysetName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ˈ([B)Lٴʻ/ʽ;
    .locals 2

    .prologue
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;->ﹳٴ()Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;

    move-result-object p0

    invoke-static {v0, p0}, Lᴵﹳ/ʻᵎ;->ٴᵢ(Ljava/io/ByteArrayInputStream;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lᴵﹳ/ʻᵎ;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-static {p0}, Lcom/parse/ٴʼ;->ˆﾞ(Lᴵﹳ/ʻᵎ;)Lcom/parse/ٴʼ;

    move-result-object p0

    new-instance v0, Lٴʻ/ʽ;

    iget-object p0, p0, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast p0, Lᴵﹳ/ʻᵎ;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ʼʼ()Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;

    move-result-object p0

    check-cast p0, Lᴵﹳ/ᐧᴵ;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lٴʻ/ʽ;-><init>(ILjava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 10

    .prologue
    iget v0, p0, Lˋٴ/ʽ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˋٴ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᵎˋ/ﹳٴ;

    invoke-interface {v0}, Lᵎˋ/ﹳٴ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lˋٴ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lᵎˋ/ﹳٴ;

    invoke-interface {v1}, Lᵎˋ/ﹳٴ;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹳˑ/ˈ;

    iget-object v2, p0, Lˋٴ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lᵎˋ/ﹳٴ;

    invoke-interface {v2}, Lᵎˋ/ﹳٴ;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lᵔـ/ˈ;

    iget-object v3, p0, Lˋٴ/ʽ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v3, Lᵢ/ﹳٴ;

    invoke-virtual {v3}, Lᵢ/ﹳٴ;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ٴʼ;

    iget-object v4, p0, Lˋٴ/ʽ;->ˊʻ:Ljava/lang/Object;

    check-cast v4, Lᵎˋ/ﹳٴ;

    invoke-interface {v4}, Lᵎˋ/ﹳٴ;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lˋٴ/ʽ;->ٴᵢ:Ljava/lang/Object;

    check-cast v5, Lᵎˋ/ﹳٴ;

    invoke-interface {v5}, Lᵎˋ/ﹳٴ;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lʻˎ/ⁱˊ;

    new-instance v6, Lᵔﹶ/ᴵˊ;

    const/4 v7, 0x5

    invoke-direct {v6, v7}, Lᵔﹶ/ᴵˊ;-><init>(I)V

    new-instance v7, Lᵔﹶ/ᵔʾ;

    const/4 v8, 0x5

    invoke-direct {v7, v8}, Lᵔﹶ/ᵔʾ;-><init>(I)V

    iget-object v8, p0, Lˋٴ/ʽ;->ˉٴ:Ljava/lang/Object;

    check-cast v8, Lᵎˋ/ﹳٴ;

    invoke-interface {v8}, Lᵎˋ/ﹳٴ;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lᵔـ/ʽ;

    new-instance v9, Lʾٴ/ⁱˊ;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v0, v9, Lʾٴ/ⁱˊ;->ﹳٴ:Ljava/lang/Object;

    iput-object v1, v9, Lʾٴ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    iput-object v2, v9, Lʾٴ/ⁱˊ;->ʽ:Ljava/lang/Object;

    iput-object v3, v9, Lʾٴ/ⁱˊ;->ˈ:Ljava/lang/Object;

    iput-object v4, v9, Lʾٴ/ⁱˊ;->ˑﹳ:Ljava/lang/Object;

    iput-object v5, v9, Lʾٴ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    iput-object v6, v9, Lʾٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    iput-object v7, v9, Lʾٴ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    iput-object v8, v9, Lʾٴ/ⁱˊ;->ʼˎ:Ljava/lang/Object;

    return-object v9

    :pswitch_0
    iget-object v0, p0, Lˋٴ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᵎˋ/ﹳٴ;

    invoke-interface {v0}, Lᵎˋ/ﹳٴ;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lᵎʽ/ˆʾ;

    iget-object v0, p0, Lˋٴ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᵎˋ/ﹳٴ;

    invoke-interface {v0}, Lᵎˋ/ﹳٴ;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lʾˈ/ﹳـ;

    iget-object v0, p0, Lˋٴ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lᵎˋ/ﹳٴ;

    invoke-interface {v0}, Lᵎˋ/ﹳٴ;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lʾˈ/ˋᵔ;

    iget-object v0, p0, Lˋٴ/ʽ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Lᵎˋ/ﹳٴ;

    invoke-interface {v0}, Lᵎˋ/ﹳٴ;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lʾˈ/ˈˏ;

    iget-object v0, p0, Lˋٴ/ʽ;->ˊʻ:Ljava/lang/Object;

    check-cast v0, Lᵎˋ/ﹳٴ;

    invoke-interface {v0}, Lᵎˋ/ﹳٴ;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lʿᵢ/ᵎﹶ;

    iget-object v0, p0, Lˋٴ/ʽ;->ٴᵢ:Ljava/lang/Object;

    check-cast v0, Lﾞﹶ/ʽ;

    invoke-interface {v0}, Lᵎˋ/ﹳٴ;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lʾˈ/ʽʽ;

    iget-object v0, p0, Lˋٴ/ʽ;->ˉٴ:Ljava/lang/Object;

    check-cast v0, Lᵎˋ/ﹳٴ;

    invoke-interface {v0}, Lᵎˋ/ﹳٴ;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lˈי/ᵔᵢ;

    new-instance v1, Lʾˈ/ᴵʼ;

    invoke-direct/range {v1 .. v8}, Lʾˈ/ᴵʼ;-><init>(Lᵎʽ/ˆʾ;Lʾˈ/ﹳـ;Lʾˈ/ˋᵔ;Lʾˈ/ˈˏ;Lʿᵢ/ᵎﹶ;Lʾˈ/ʽʽ;Lˈי/ᵔᵢ;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget v0, p0, Lˋٴ/ʽ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lˋٴ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ˑﹳ([B)Lٴʻ/ʽ;
    .locals 4

    .prologue
    :try_start_0
    new-instance v0, Lˆـ/ʽ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lˋٴ/ʽ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lˆـ/ʽ;->ⁱˊ(Ljava/lang/String;)Lˆـ/ⁱˊ;

    move-result-object v0

    iput-object v0, p0, Lˋٴ/ʽ;->ˊʻ:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [B

    new-instance v1, Lٴʻ/ʽ;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lٴʻ/ʽ;-><init>(ILjava/lang/Object;)V

    iget-object v2, p0, Lˋٴ/ʽ;->ˊʻ:Ljava/lang/Object;

    check-cast v2, Lˆـ/ⁱˊ;

    invoke-static {v1, v2, v0}, Landroid/support/v4/media/session/ⁱˊ;->ᵔʾ(Lٴʻ/ʽ;Lˆـ/ⁱˊ;[B)Lcom/parse/ٴʼ;

    move-result-object v0

    new-instance v1, Lٴʻ/ʽ;

    iget-object v0, v0, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᴵﹳ/ʻᵎ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ʼʼ()Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ᐧᴵ;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Lٴʻ/ʽ;-><init>(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    :try_start_2
    invoke-static {p1}, Lˋٴ/ʽ;->ˈ([B)Lٴʻ/ʽ;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    throw v0

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    :goto_1
    :try_start_3
    invoke-static {p1}, Lˋٴ/ʽ;->ˈ([B)Lٴʻ/ʽ;

    move-result-object p1

    const-string v1, "\ufe73\u0674"

    const-string v2, "cannot use Android Keystore, it\'ll be disabled"

    nop
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    return-object p1

    :catch_5
    throw v0
.end method

.method public ᵎﹶ(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 6

    .prologue
    iget-object v0, p0, Lˋٴ/ʽ;->ˊʻ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/locks/Condition;

    iget-object v1, p0, Lˋٴ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lˋٴ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lﾞʼ/ﹳٴ;

    iget-object v3, p0, Lˋٴ/ʽ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v4, p0, Lˋٴ/ʽ;->ˉٴ:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    if-nez v4, :cond_4

    iget-object v4, p0, Lˋٴ/ʽ;->ٴᵢ:Ljava/lang/Object;

    check-cast v4, Lʼﹳ/ˉˆ;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v4

    :cond_0
    :try_start_1
    const-string v4, "Awaiting << {} >>"

    invoke-interface {v2, v1, v4}, Lﾞʼ/ﹳٴ;->ᵔﹳ(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-nez v4, :cond_1

    :goto_0
    iget-object p1, p0, Lˋٴ/ʽ;->ٴᵢ:Ljava/lang/Object;

    check-cast p1, Lʼﹳ/ˉˆ;

    if-nez p1, :cond_2

    iget-object p1, p0, Lˋٴ/ʽ;->ˉٴ:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x0

    return-object p1

    :cond_2
    :try_start_2
    iget-object p1, p0, Lˋٴ/ʽ;->ˉٴ:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_3

    iget-object p1, p0, Lˋٴ/ʽ;->ٴᵢ:Ljava/lang/Object;

    check-cast p1, Lʼﹳ/ˉˆ;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_3
    :try_start_3
    const-string p2, "<< {} >> woke to: {}"

    invoke-interface {v2, v1, p1, p2}, Lﾞʼ/ﹳٴ;->ᵔᵢ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lˋٴ/ʽ;->ˉٴ:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_4
    throw v4
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    iget-object p2, p0, Lˋٴ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast p2, Lˋⁱ/ﾞᴵ;

    invoke-virtual {p2, p1}, Lˋⁱ/ﾞᴵ;->ᵢˏ(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public ⁱˊ()Lٴʻ/ʽ;
    .locals 21

    .prologue
    move-object/from16 v1, p0

    iget-object v0, v1, Lˋٴ/ʽ;->ٴᵢ:Ljava/lang/Object;

    check-cast v0, Lٴʻ/ʽ;

    if-eqz v0, :cond_19

    iget-object v0, v0, Lٴʻ/ʽ;->ⁱˊ:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lٴʻ/ʼˎ;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    instance-of v0, v2, Lﹳʽ/ˆʾ;

    if-eqz v0, :cond_1

    move-object v0, v2

    check-cast v0, Lﹳʽ/ˆʾ;

    iget-object v0, v0, Lﹳʽ/ˆʾ;->ﹳٴ:Lﹳʽ/ˊʻ;

    iget-object v0, v0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᴵﹳ/ᵎᵔ;

    goto :goto_0

    :cond_1
    sget-object v0, Lﹳʽ/ﹳᐧ;->ⁱˊ:Lﹳʽ/ﹳᐧ;

    invoke-virtual {v0, v2}, Lﹳʽ/ﹳᐧ;->ᵔᵢ(Lٴʻ/ʼˎ;)Lﹳʽ/ˉٴ;

    move-result-object v0

    check-cast v0, Lﹳʽ/ˊʻ;

    iget-object v0, v0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᴵﹳ/ᵎᵔ;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ˑﹳ()[B

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/ʽ;->יـ([B)Lٴʻ/ʼˎ;

    move-result-object v2

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lﹳʽ/ٴﹶ;->ⁱˊ:Lﹳʽ/ٴﹶ;

    new-instance v4, Lٴʻ/ˈ;

    invoke-direct {v4, v2}, Lٴʻ/ˈ;-><init>(Lٴʻ/ʼˎ;)V

    sget-object v2, Lٴʻ/ˑﹳ;->ﹳٴ:Lٴʻ/ˑﹳ;

    iput-object v2, v4, Lٴʻ/ˈ;->ʽ:Lٴʻ/ˑﹳ;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lٴʻ/ˈ;->ﹳٴ:Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    :goto_2
    if-ge v8, v6, :cond_2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lٴʻ/ˈ;

    iput-boolean v7, v9, Lٴʻ/ˈ;->ﹳٴ:Z

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lᴵﹳ/ʻᵎ;->ˊʻ()Lᴵﹳ/ᐧᴵ;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v7

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v5

    if-ge v8, v9, :cond_5

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lٴʻ/ˈ;

    iget-object v9, v9, Lٴʻ/ˈ;->ʽ:Lٴʻ/ˑﹳ;

    if-ne v9, v2, :cond_4

    add-int/lit8 v9, v8, 0x1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lٴʻ/ˈ;

    iget-object v9, v9, Lٴʻ/ˈ;->ʽ:Lٴʻ/ˑﹳ;

    if-ne v9, v2, :cond_3

    goto :goto_4

    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v2, "Entries with \'withRandomId()\' may only be followed by other entries with \'withRandomId()\'."

    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v12, v7

    const/4 v11, 0x0

    :goto_5
    if-ge v12, v9, :cond_14

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v12, v12, 0x1

    check-cast v14, Lٴʻ/ˈ;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v14, Lٴʻ/ˈ;->ⁱˊ:Lٴʻ/ʼˎ;

    move/from16 v16, v5

    iget-object v5, v14, Lٴʻ/ˈ;->ʽ:Lٴʻ/ˑﹳ;

    if-eqz v5, :cond_13

    if-ne v5, v2, :cond_8

    move v5, v7

    :cond_6
    if-eqz v5, :cond_7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    :cond_7
    sget v5, Lﹳʽ/ᵔי;->ﹳٴ:I

    move v5, v7

    :goto_6
    if-nez v5, :cond_6

    const/4 v5, 0x4

    invoke-static {v5}, Lﹳʽ/ٴᵢ;->ﹳٴ(I)[B

    move-result-object v5

    aget-byte v10, v5, v7

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    const/16 v17, 0x3

    aget-byte v13, v5, v16

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v10, v13

    const/4 v13, 0x2

    aget-byte v13, v5, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v10, v13

    aget-byte v5, v5, v17

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v10

    goto :goto_6

    :cond_8
    move v5, v7

    :cond_9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Lٴʻ/ʼˎ;->ﹳٴ()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_7

    :cond_a
    const/4 v10, 0x0

    :goto_7
    sget-object v13, Lﹳʽ/ﾞʻ;->ⁱˊ:Lﹳʽ/ﾞʻ;

    invoke-virtual {v13, v15, v10}, Lﹳʽ/ﾞʻ;->ⁱˊ(Lٴʻ/ʼˎ;Ljava/lang/Integer;)Lﹳˋ/ʽʽ;

    move-result-object v10

    new-instance v13, Lٴʻ/ﾞᴵ;

    iget-boolean v15, v14, Lٴʻ/ˈ;->ﹳٴ:Z

    sget-object v7, Lٴʻ/ʽ;->ʽ:Lٴʻ/ʽ;

    invoke-direct {v13, v10, v7, v5, v15}, Lٴʻ/ﾞᴵ;-><init>(Lﹳˋ/ʽʽ;Lٴʻ/ʽ;IZ)V

    sget-object v15, Lﹳʽ/ﹳᐧ;->ⁱˊ:Lﹳʽ/ﹳᐧ;

    invoke-virtual {v15, v10}, Lﹳʽ/ﹳᐧ;->ᵎﹶ(Lﹳˋ/ʽʽ;)Lﹳʽ/ˉٴ;

    move-result-object v10

    check-cast v10, Lﹳʽ/ᴵᵔ;

    iget-object v15, v10, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    if-eqz v15, :cond_c

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v15, v5, :cond_b

    goto :goto_8

    :cond_b
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v2, "Wrong ID set for key with ID requirement"

    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_8
    invoke-virtual {v7, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    sget-object v7, Lᴵﹳ/ʿ;->ʽʽ:Lᴵﹳ/ʿ;

    goto :goto_9

    :cond_d
    sget-object v15, Lٴʻ/ʽ;->ˈ:Lٴʻ/ʽ;

    invoke-virtual {v15, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    sget-object v7, Lᴵﹳ/ʿ;->ˈٴ:Lᴵﹳ/ʿ;

    goto :goto_9

    :cond_e
    sget-object v15, Lٴʻ/ʽ;->ˑﹳ:Lٴʻ/ʽ;

    invoke-virtual {v15, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    sget-object v7, Lᴵﹳ/ʿ;->ᴵᵔ:Lᴵﹳ/ʿ;

    :goto_9
    invoke-static {}, Lᴵﹳ/ᴵʼ;->ᵎⁱ()Lᴵﹳ/ˏᵢ;

    move-result-object v15

    move-object/from16 v18, v0

    invoke-static {}, Lᴵﹳ/ˉـ;->ٴᵢ()Lᴵﹳ/ˈⁱ;

    move-result-object v0

    move-object/from16 v19, v2

    iget-object v2, v10, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    move-object/from16 v20, v8

    iget-object v8, v0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v8, Lᴵﹳ/ˉـ;

    invoke-static {v8, v2}, Lᴵﹳ/ˉـ;->ᵢˏ(Lᴵﹳ/ˉـ;Ljava/lang/String;)V

    iget-object v2, v10, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v8, v0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v8, Lᴵﹳ/ˉـ;

    invoke-static {v8, v2}, Lᴵﹳ/ˉـ;->ʾˋ(Lᴵﹳ/ˉـ;Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)V

    iget-object v2, v10, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lᴵﹳ/ᴵˑ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v8, v0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v8, Lᴵﹳ/ˉـ;

    invoke-static {v8, v2}, Lᴵﹳ/ˉـ;->ᴵˊ(Lᴵﹳ/ˉـ;Lᴵﹳ/ᴵˑ;)V

    invoke-virtual {v15}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v2, v15, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v2, Lᴵﹳ/ᴵʼ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ˉـ;

    invoke-static {v2, v0}, Lᴵﹳ/ᴵʼ;->ᵢˏ(Lᴵﹳ/ᴵʼ;Lᴵﹳ/ˉـ;)V

    invoke-virtual {v15}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v0, v15, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v0, Lᴵﹳ/ᴵʼ;

    invoke-static {v0, v7}, Lᴵﹳ/ᴵʼ;->ᴵˊ(Lᴵﹳ/ᴵʼ;Lᴵﹳ/ʿ;)V

    invoke-virtual {v15}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v0, v15, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v0, Lᴵﹳ/ᴵʼ;

    invoke-static {v0, v5}, Lᴵﹳ/ᴵʼ;->ʽʽ(Lᴵﹳ/ᴵʼ;I)V

    iget-object v0, v10, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Lᴵﹳ/י;

    invoke-virtual {v15}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v2, v15, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v2, Lᴵﹳ/ᴵʼ;

    invoke-static {v2, v0}, Lᴵﹳ/ᴵʼ;->ʾˋ(Lᴵﹳ/ᴵʼ;Lᴵﹳ/י;)V

    invoke-virtual {v15}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ᴵʼ;

    invoke-virtual {v4}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v2, v4, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v2, Lᴵﹳ/ʻᵎ;

    invoke-static {v2, v0}, Lᴵﹳ/ʻᵎ;->ʾˋ(Lᴵﹳ/ʻᵎ;Lᴵﹳ/ᴵʼ;)V

    iget-boolean v0, v14, Lٴʻ/ˈ;->ﹳٴ:Z

    if-eqz v0, :cond_10

    if-nez v11, :cond_f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_a

    :cond_f
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v2, "Two primaries were set"

    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_a
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v5, v16

    move-object/from16 v0, v18

    move-object/from16 v2, v19

    move-object/from16 v8, v20

    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown key status"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v2, "Id "

    const-string v3, " is used twice in the keyset"

    invoke-static {v5, v2, v3}, Lʼﾞ/ˊˋ;->ʼᐧ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v2, "No ID was set (with withFixedId or withRandomId)"

    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    const/16 v17, 0x3

    if-eqz v11, :cond_18

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v2, v4, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v2, Lᴵﹳ/ʻᵎ;

    invoke-static {v2, v0}, Lᴵﹳ/ʻᵎ;->ᵢˏ(Lᴵﹳ/ʻᵎ;I)V

    invoke-virtual {v4}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ʻᵎ;

    invoke-virtual {v0}, Lᴵﹳ/ʻᵎ;->ʽʽ()I

    move-result v2

    if-lez v2, :cond_17

    new-instance v2, Lcom/parse/ٴʼ;

    invoke-direct {v2, v0, v6, v3}, Lcom/parse/ٴʼ;-><init>(Lᴵﹳ/ʻᵎ;Ljava/util/List;Lﹳʽ/ٴﹶ;)V

    new-instance v3, Lﹳʽ/ˊʻ;

    iget-object v4, v1, Lˋٴ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    iget-object v5, v1, Lˋٴ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Lˋٴ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lﹳʽ/ˊʻ;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lˋٴ/ʽ;->ˊʻ:Ljava/lang/Object;

    check-cast v4, Lˆـ/ⁱˊ;

    if-eqz v4, :cond_15

    const/4 v6, 0x0

    :try_start_1
    new-array v5, v6, [B

    invoke-static {v2, v3, v4, v5}, Landroid/support/v4/media/session/ⁱˊ;->ﹳᐧ(Lcom/parse/ٴʼ;Lﹳʽ/ˊʻ;Lˆـ/ⁱˊ;[B)V

    goto :goto_b

    :catch_0
    move-exception v0

    goto :goto_c

    :cond_15
    iget-object v2, v3, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ˑﹳ()[B

    move-result-object v3

    invoke-static {v3}, Lʼ/ᵎﹶ;->ﹳᐧ([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_16

    :goto_b
    new-instance v2, Lٴʻ/ʽ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ʼʼ()Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ᐧᴵ;

    move/from16 v3, v17

    invoke-direct {v2, v3, v0}, Lٴʻ/ʽ;-><init>(ILjava/lang/Object;)V

    return-object v2

    :cond_16
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Failed to write to SharedPreferences"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_c
    new-instance v2, Ljava/security/GeneralSecurityException;

    invoke-direct {v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_17
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v2, "empty keyset"

    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v2, "No primary was set"

    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v3, Lcom/google/crypto/tink/internal/TinkBugException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Parsing parameters failed in getProto(). You probably want to call some Tink register function for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_19
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v2, "cannot read or generate keyset"

    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized ﹳٴ()Lˆـ/ﹳٴ;
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lˋٴ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lˆـ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lˋٴ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lˋٴ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lˋٴ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lˋٴ/ʽ;->ʽ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lˋٴ/ʽ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lˋٴ/ʽ;->ﾞᴵ()Lˆـ/ⁱˊ;

    move-result-object v1

    iput-object v1, p0, Lˋٴ/ʽ;->ˊʻ:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lˋٴ/ʽ;->ⁱˊ()Lٴʻ/ʽ;

    move-result-object v1

    iput-object v1, p0, Lˋٴ/ʽ;->ˉٴ:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lˋٴ/ʽ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lˋٴ/ʽ;->ˑﹳ([B)Lٴʻ/ʽ;

    move-result-object v1

    iput-object v1, p0, Lˋٴ/ʽ;->ˉٴ:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lˋٴ/ʽ;->ˈ([B)Lٴʻ/ʽ;

    move-result-object v1

    iput-object v1, p0, Lˋٴ/ʽ;->ˉٴ:Ljava/lang/Object;

    :goto_1
    new-instance v1, Lˆـ/ﹳٴ;

    invoke-direct {v1, p0}, Lˆـ/ﹳٴ;-><init>(Lˋٴ/ʽ;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keysetName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public ﾞᴵ()Lˆـ/ⁱˊ;
    .locals 6

    .prologue
    const-string v0, "cannot use Android Keystore, it\'ll be disabled"

    const-string v1, "\ufe73\u0674"

    new-instance v2, Lˆـ/ʽ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lˋٴ/ʽ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lˆـ/ʽ;->ﹳٴ(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v5, p0, Lˋٴ/ʽ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lˆـ/ʽ;->ⁱˊ(Ljava/lang/String;)Lˆـ/ⁱˊ;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/ProviderException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_0
    if-eqz v4, :cond_0

    nop

    return-object v3

    :cond_0
    new-instance v0, Ljava/security/KeyStoreException;

    iget-object v1, p0, Lˋٴ/ʽ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v3, "the master key "

    const-string v4, " exists but is unusable"

    invoke-static {v3, v1, v4}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    :goto_1
    nop

    return-object v3
.end method
