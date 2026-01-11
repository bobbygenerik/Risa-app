.class public final synthetic Lـˎ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﾞʻ;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/String;

.field public final synthetic ʾˋ:Lـˎ/ᵔᵢ;

.field public final synthetic ˈٴ:Lᴵʼ/ˑﹳ;

.field public final synthetic ᴵˊ:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lـˎ/ᵔᵢ;Ljava/lang/String;Ljava/lang/String;Lᴵʼ/ˑﹳ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lـˎ/ᵎﹶ;->ʾˋ:Lـˎ/ᵔᵢ;

    iput-object p2, p0, Lـˎ/ᵎﹶ;->ᴵˊ:Ljava/lang/String;

    iput-object p3, p0, Lـˎ/ᵎﹶ;->ʽʽ:Ljava/lang/String;

    iput-object p4, p0, Lـˎ/ᵎﹶ;->ˈٴ:Lᴵʼ/ˑﹳ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    iget-object v0, p0, Lـˎ/ᵎﹶ;->ʾˋ:Lـˎ/ᵔᵢ;

    iget-object v1, p0, Lـˎ/ᵎﹶ;->ᴵˊ:Ljava/lang/String;

    iget-object v2, p0, Lـˎ/ᵎﹶ;->ʽʽ:Ljava/lang/String;

    iget-object v3, p0, Lـˎ/ᵎﹶ;->ˈٴ:Lᴵʼ/ˑﹳ;

    check-cast p1, Lᴵʼ/ⁱˊ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lـˎ/ᵔᵢ;->ˈ:Lᴵʼ/ˑﹳ;

    const-string v5, ""

    invoke-static {p1, v4, v5}, Landroid/support/v4/media/session/ⁱˊ;->ʼˎ(Lᴵʼ/ⁱˊ;Lᴵʼ/ˑﹳ;Ljava/io/Serializable;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, p1, v1}, Lـˎ/ᵔᵢ;->ˑﹳ(Lᴵʼ/ⁱˊ;Ljava/lang/String;)Lᴵʼ/ˑﹳ;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v4, Lᴵʼ/ˑﹳ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Lـˎ/ᵔᵢ;->ﾞᴵ(Lᴵʼ/ⁱˊ;Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashSet;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1, v3, v4}, Landroid/support/v4/media/session/ⁱˊ;->ʼˎ(Lᴵʼ/ⁱˊ;Lᴵʼ/ˑﹳ;Ljava/io/Serializable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v3, v2}, Lᴵʼ/ⁱˊ;->ʽ(Lᴵʼ/ˑﹳ;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    sget-object v2, Lـˎ/ᵔᵢ;->ʽ:Lᴵʼ/ˑﹳ;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p1, v2, v5}, Landroid/support/v4/media/session/ⁱˊ;->ʼˎ(Lᴵʼ/ⁱˊ;Lᴵʼ/ˑﹳ;Ljava/io/Serializable;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long v9, v5, v7

    const-wide/16 v11, 0x1e

    cmp-long v9, v9, v11

    if-nez v9, :cond_3

    invoke-virtual {v0, p1}, Lـˎ/ᵔᵢ;->ﹳٴ(Lᴵʼ/ⁱˊ;)J

    move-result-wide v5

    :cond_3
    new-instance v0, Ljava/util/HashSet;

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1, v3, v9}, Landroid/support/v4/media/session/ⁱˊ;->ʼˎ(Lᴵʼ/ⁱˊ;Lᴵʼ/ˑﹳ;Ljava/io/Serializable;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-direct {v0, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-long/2addr v5, v7

    invoke-virtual {p1, v3, v0}, Lᴵʼ/ⁱˊ;->ʽ(Lᴵʼ/ˑﹳ;Ljava/lang/Object;)V

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lᴵʼ/ⁱˊ;->ʽ(Lᴵʼ/ˑﹳ;Ljava/lang/Object;)V

    invoke-virtual {p1, v4, v1}, Lᴵʼ/ⁱˊ;->ʽ(Lᴵʼ/ˑﹳ;Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
