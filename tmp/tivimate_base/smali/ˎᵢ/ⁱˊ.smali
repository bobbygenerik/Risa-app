.class public final Lˎᵢ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˎᵢ/ﾞʻ;
.implements Lˎᵢ/ˉٴ;


# static fields
.field public static final ʾˋ:Lˎᵢ/ⁱˊ;

.field public static final ᴵˊ:Lˎᵢ/ⁱˊ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lˎᵢ/ⁱˊ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˎᵢ/ⁱˊ;->ʾˋ:Lˎᵢ/ⁱˊ;

    new-instance v0, Lˎᵢ/ⁱˊ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˎᵢ/ⁱˊ;->ᴵˊ:Lˎᵢ/ⁱˊ;

    return-void
.end method

.method public static final ﹳٴ(Lˎᵢ/ⁱˊ;Ljava/lang/String;)Lˎᵢ/ᵔᵢ;
    .locals 1

    new-instance p0, Lˎᵢ/ᵔᵢ;

    invoke-direct {p0, p1}, Lˎᵢ/ᵔᵢ;-><init>(Ljava/lang/String;)V

    sget-object v0, Lˎᵢ/ᵔᵢ;->ˈ:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public ˉʿ(Lˎᵢ/ʼᐧ;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public ᵔʾ(Lˎᵢ/ʼᐧ;)Ljava/util/List;
    .locals 0

    sget-object p1, Lﹶˈ/ʼᐧ;->ʾˋ:Lﹶˈ/ʼᐧ;

    return-object p1
.end method

.method public declared-synchronized ⁱˊ(Ljava/lang/String;)Lˎᵢ/ᵔᵢ;
    .locals 6

    .prologue
    monitor-enter p0

    :try_start_0
    sget-object v0, Lˎᵢ/ᵔᵢ;->ˈ:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˎᵢ/ᵔᵢ;

    if-nez v1, :cond_3

    const-string v1, "SSL_"

    const-string v2, "TLS_"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lﹶˑ/ᵔﹳ;->ᵎᵔ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p1, v1, v3}, Lﹶˑ/ᵔﹳ;->ᵎᵔ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˎᵢ/ᵔᵢ;

    if-nez v1, :cond_2

    new-instance v1, Lˎᵢ/ᵔᵢ;

    invoke-direct {v1, p1}, Lˎᵢ/ᵔᵢ;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-object v1

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
