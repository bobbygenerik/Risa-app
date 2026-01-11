.class public final Lʽـ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences;


# instance fields
.field public final ʽ:Ljava/lang/String;

.field public final ˈ:Lٴʻ/ﹳٴ;

.field public final ˑﹳ:Lٴʻ/ⁱˊ;

.field public final ⁱˊ:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final ﹳٴ:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/SharedPreferences;Lٴʻ/ﹳٴ;Lٴʻ/ⁱˊ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽـ/ⁱˊ;->ʽ:Ljava/lang/String;

    iput-object p2, p0, Lʽـ/ⁱˊ;->ﹳٴ:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lʽـ/ⁱˊ;->ˈ:Lٴʻ/ﹳٴ;

    iput-object p4, p0, Lʽـ/ⁱˊ;->ˑﹳ:Lٴʻ/ⁱˊ;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lʽـ/ⁱˊ;->ⁱˊ:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static ˈ(Ljava/lang/String;)Z
    .locals 1

    .prologue
    const-string v0, "__androidx_security_crypto_encrypted_prefs_key_keyset__"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "__androidx_security_crypto_encrypted_prefs_value_keyset__"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static ﹳٴ(Landroid/content/Context;Ljava/lang/String;Lʻᴵ/ﹳٴ;)Lʽـ/ⁱˊ;
    .locals 4

    .prologue
    iget-object p2, p2, Lʻᴵ/ﹳٴ;->ᴵˊ:Ljava/lang/String;

    invoke-static {}, Lˏˑ/ﾞᴵ;->ﹳٴ()V

    invoke-static {}, Lיʻ/ﹳٴ;->ﹳٴ()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lˋٴ/ʽ;

    invoke-direct {v0}, Lˋٴ/ʽ;-><init>()V

    const-string v1, "AES256_SIV"

    invoke-static {v1}, Lﹳٴ/ﹳٴ;->ʻٴ(Ljava/lang/String;)Lٴʻ/ʽ;

    move-result-object v1

    iput-object v1, v0, Lˋٴ/ʽ;->ٴᵢ:Ljava/lang/Object;

    const-string v1, "__androidx_security_crypto_encrypted_prefs_key_keyset__"

    if-eqz p0, :cond_2

    iput-object p0, v0, Lˋٴ/ʽ;->ᴵˊ:Ljava/lang/Object;

    iput-object v1, v0, Lˋٴ/ʽ;->ʽʽ:Ljava/lang/Object;

    iput-object p1, v0, Lˋٴ/ʽ;->ˈٴ:Ljava/lang/Object;

    const-string v1, "android-keystore://"

    invoke-static {v1, p2}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android-keystore://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, v0, Lˋٴ/ʽ;->ᴵᵔ:Ljava/lang/Object;

    invoke-virtual {v0}, Lˋٴ/ʽ;->ﹳٴ()Lˆـ/ﹳٴ;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lˆـ/ﹳٴ;->ﹳٴ:Lٴʻ/ʽ;

    invoke-virtual {v2}, Lٴʻ/ʽ;->ﹳٴ()Lcom/parse/ٴʼ;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    new-instance v0, Lˋٴ/ʽ;

    invoke-direct {v0}, Lˋٴ/ʽ;-><init>()V

    const-string v3, "AES256_GCM"

    invoke-static {v3}, Lﹳٴ/ﹳٴ;->ʻٴ(Ljava/lang/String;)Lٴʻ/ʽ;

    move-result-object v3

    iput-object v3, v0, Lˋٴ/ʽ;->ٴᵢ:Ljava/lang/Object;

    const-string v3, "__androidx_security_crypto_encrypted_prefs_value_keyset__"

    iput-object p0, v0, Lˋٴ/ʽ;->ᴵˊ:Ljava/lang/Object;

    iput-object v3, v0, Lˋٴ/ʽ;->ʽʽ:Ljava/lang/Object;

    iput-object p1, v0, Lˋٴ/ʽ;->ˈٴ:Ljava/lang/Object;

    invoke-static {v1, p2}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "android-keystore://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p2, v0, Lˋٴ/ʽ;->ᴵᵔ:Ljava/lang/Object;

    invoke-virtual {v0}, Lˋٴ/ʽ;->ﹳٴ()Lˆـ/ﹳٴ;

    move-result-object p2

    invoke-virtual {p2}, Lˆـ/ﹳٴ;->ﹳٴ()Lcom/parse/ٴʼ;

    move-result-object p2

    const-class v0, Lٴʻ/ⁱˊ;

    invoke-virtual {v2, v0}, Lcom/parse/ٴʼ;->ˈⁱ(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lٴʻ/ⁱˊ;

    const-class v1, Lٴʻ/ﹳٴ;

    invoke-virtual {p2, v1}, Lcom/parse/ٴʼ;->ˈⁱ(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lٴʻ/ﹳٴ;

    new-instance v1, Lʽـ/ⁱˊ;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-direct {v1, p1, p0, p2, v0}, Lʽـ/ⁱˊ;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;Lٴʻ/ﹳٴ;Lٴʻ/ⁱˊ;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key URI must start with android-keystore://"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key URI must start with android-keystore://"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "need an Android context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final contains(Ljava/lang/String;)Z
    .locals 2

    .prologue
    invoke-static {p1}, Lʽـ/ⁱˊ;->ˈ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lʽـ/ⁱˊ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lʽـ/ⁱˊ;->ﹳٴ:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, " is a reserved key for the encryption keyset."

    invoke-static {p1, v1}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final edit()Landroid/content/SharedPreferences$Editor;
    .locals 2

    new-instance v0, Lʽـ/ﹳٴ;

    iget-object v1, p0, Lʽـ/ⁱˊ;->ﹳٴ:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lʽـ/ﹳٴ;-><init>(Lʽـ/ⁱˊ;Landroid/content/SharedPreferences$Editor;)V

    return-object v0
.end method

.method public final getAll()Ljava/util/Map;
    .locals 5

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lʽـ/ⁱˊ;->ﹳٴ:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lʽـ/ⁱˊ;->ˈ(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Lʽـ/ⁱˊ;->ˑﹳ:Lٴʻ/ⁱˊ;

    invoke-static {v2}, Lﹶˆ/ˑﹳ;->ﹳٴ(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v4, p0, Lʽـ/ⁱˊ;->ʽ:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lٴʻ/ⁱˊ;->ⁱˊ([B[B)[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v2, "__NULL__"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    :cond_1
    invoke-virtual {p0, v3}, Lʽـ/ⁱˊ;->ʽ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not decrypt key. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    return-object v0
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lʽـ/ⁱˊ;->ʽ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public final getFloat(Ljava/lang/String;F)F
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lʽـ/ⁱˊ;->ʽ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public final getInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lʽـ/ⁱˊ;->ʽ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public final getLong(Ljava/lang/String;J)J
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lʽـ/ⁱˊ;->ʽ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide p2
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lʽـ/ⁱˊ;->ʽ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lʽـ/ⁱˊ;->ʽ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Set;

    goto :goto_0

    :cond_0
    new-instance p1, Lיـ/ﾞᴵ;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lיـ/ﾞᴵ;-><init>(I)V

    :goto_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public final registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    iget-object v0, p0, Lʽـ/ⁱˊ;->ⁱˊ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    iget-object v0, p0, Lʽـ/ⁱˊ;->ⁱˊ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ʽ(Ljava/lang/String;)Ljava/lang/Object;
    .locals 13

    .prologue
    const-string v0, "Unhandled type for encrypted pref value: "

    const-string v1, "Unknown type ID for encrypted pref value: "

    invoke-static {p1}, Lʽـ/ⁱˊ;->ˈ(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "__NULL__"

    if-nez p1, :cond_0

    move-object p1, v2

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lʽـ/ⁱˊ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lʽـ/ⁱˊ;->ﹳٴ:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-static {v3}, Lﹶˆ/ˑﹳ;->ﹳٴ(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v5, p0, Lʽـ/ⁱˊ;->ˈ:Lٴʻ/ﹳٴ;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-interface {v5, v3, p1}, Lٴʻ/ﹳٴ;->ⁱˊ([B[B)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v5, :cond_7

    if-eq v5, v11, :cond_6

    if-eq v5, v10, :cond_5

    if-eq v5, v9, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    move v12, v3

    goto :goto_0

    :cond_2
    const/4 v12, 0x6

    goto :goto_0

    :cond_3
    move v12, v7

    goto :goto_0

    :cond_4
    move v12, v8

    goto :goto_0

    :cond_5
    move v12, v9

    goto :goto_0

    :cond_6
    move v12, v10

    goto :goto_0

    :cond_7
    move v12, v11

    :goto_0
    if-eqz v12, :cond_12

    invoke-static {v12}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v1

    if-eqz v1, :cond_10

    if-eq v1, v11, :cond_d

    if-eq v1, v10, :cond_c

    if-eq v1, v9, :cond_b

    if-eq v1, v8, :cond_a

    if-ne v1, v7, :cond_9

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    if-eqz p1, :cond_8

    move v3, v11

    :cond_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_9
    new-instance p1, Ljava/lang/SecurityException;

    packed-switch v12, :pswitch_data_0

    const-string v1, "null"

    goto :goto_1

    :pswitch_0
    const-string v1, "BOOLEAN"

    goto :goto_1

    :pswitch_1
    const-string v1, "FLOAT"

    goto :goto_1

    :pswitch_2
    const-string v1, "LONG"

    goto :goto_1

    :pswitch_3
    const-string v1, "INT"

    goto :goto_1

    :pswitch_4
    const-string v1, "STRING_SET"

    goto :goto_1

    :pswitch_5
    const-string v1, "STRING"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_d
    new-instance v0, Lיـ/ﾞᴵ;

    invoke-direct {v0, v3}, Lיـ/ﾞᴵ;-><init>(I)V

    :goto_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v5}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lיـ/ﾞᴵ;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_e
    iget p1, v0, Lיـ/ﾞᴵ;->ʽʽ:I

    if-ne p1, v11, :cond_f

    iget-object p1, v0, Lיـ/ﾞᴵ;->ᴵˊ:[Ljava/lang/Object;

    aget-object p1, p1, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_3

    :cond_f
    return-object v0

    :cond_10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v6, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :goto_3
    return-object v4

    :cond_11
    return-object p1

    :cond_12
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not decrypt value. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, " is a reserved key for the encryption keyset."

    invoke-static {p1, v1}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ⁱˊ(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    if-nez p1, :cond_0

    const-string p1, "__NULL__"

    :cond_0
    :try_start_0
    iget-object v0, p0, Lʽـ/ⁱˊ;->ˑﹳ:Lٴʻ/ⁱˊ;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iget-object v1, p0, Lʽـ/ⁱˊ;->ʽ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lٴʻ/ⁱˊ;->ﹳٴ([B[B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lﹶˆ/ˑﹳ;->ⁱˊ([B)[B

    move-result-object p1

    const-string v1, "US-ASCII"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not encrypt key. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
