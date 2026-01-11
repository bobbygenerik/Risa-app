.class public final Lـˎ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lᴵʼ/ˑﹳ;

.field public static final ˈ:Lᴵʼ/ˑﹳ;

.field public static final ⁱˊ:Lᴵʼ/ˑﹳ;


# instance fields
.field public final ﹳٴ:Lˏˊ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lᴵʼ/ˑﹳ;

    const-string v1, "fire-global"

    invoke-direct {v0, v1}, Lᴵʼ/ˑﹳ;-><init>(Ljava/lang/String;)V

    sput-object v0, Lـˎ/ᵔᵢ;->ⁱˊ:Lᴵʼ/ˑﹳ;

    new-instance v0, Lᴵʼ/ˑﹳ;

    const-string v1, "fire-count"

    invoke-direct {v0, v1}, Lᴵʼ/ˑﹳ;-><init>(Ljava/lang/String;)V

    sput-object v0, Lـˎ/ᵔᵢ;->ʽ:Lᴵʼ/ˑﹳ;

    new-instance v0, Lᴵʼ/ˑﹳ;

    const-string v1, "last-used-date"

    invoke-direct {v0, v1}, Lᴵʼ/ˑﹳ;-><init>(Ljava/lang/String;)V

    sput-object v0, Lـˎ/ᵔᵢ;->ˈ:Lᴵʼ/ˑﹳ;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lˏˊ/ⁱˊ;

    const-string v1, "FirebaseHeartBeat"

    invoke-static {v1, p2}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lˏˊ/ⁱˊ;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lـˎ/ᵔᵢ;->ﹳٴ:Lˏˊ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final declared-synchronized ʽ()Ljava/util/ArrayList;
    .locals 6

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lـˎ/ᵔᵢ;->ˈ(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lـˎ/ᵔᵢ;->ﹳٴ:Lˏˊ/ⁱˊ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lar/tvplayer/core/domain/ⁱˊ;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5, v4}, Lar/tvplayer/core/domain/ⁱˊ;-><init>(Ljava/lang/Object;Lˈי/ˈ;I)V

    sget-object v2, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;

    invoke-static {v2, v3}, Lᴵי/ʾᵎ;->יـ(Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/util/Set;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lᴵʼ/ˑﹳ;

    iget-object v3, v3, Lᴵʼ/ˑﹳ;->ﹳٴ:Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Lـˎ/ﹳٴ;

    invoke-direct {v4, v3, v5}, Lـˎ/ﹳٴ;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lـˎ/ᵔᵢ;->ᵔᵢ(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized ˈ(J)Ljava/lang/String;
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lj$/util/DateRetargetClass;->toInstant(Ljava/util/Date;)Lj$/time/Instant;

    move-result-object p1

    sget-object p2, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-virtual {p1, p2}, Lj$/time/Instant;->atOffset(Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/OffsetDateTime;->toLocalDateTime()Lj$/time/LocalDateTime;

    move-result-object p1

    sget-object p2, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {p1, p2}, Lj$/time/LocalDateTime;->format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized ˑﹳ(Lᴵʼ/ⁱˊ;Ljava/lang/String;)Lᴵʼ/ˑﹳ;
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lᴵʼ/ⁱˊ;->ﹳٴ()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Set;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lᴵʼ/ˑﹳ;

    iget-object p1, p1, Lᴵʼ/ˑﹳ;->ﹳٴ:Ljava/lang/String;

    new-instance p2, Lᴵʼ/ˑﹳ;

    invoke-direct {p2, p1}, Lᴵʼ/ˑﹳ;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized ᵎﹶ(Ljava/lang/String;J)V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lـˎ/ᵔᵢ;->ˈ(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lᴵʼ/ˑﹳ;

    invoke-direct {p3, p1}, Lᴵʼ/ˑﹳ;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lـˎ/ᵔᵢ;->ﹳٴ:Lˏˊ/ⁱˊ;

    new-instance v1, Lـˎ/ᵎﹶ;

    invoke-direct {v1, p0, p2, p1, p3}, Lـˎ/ᵎﹶ;-><init>(Lـˎ/ᵔᵢ;Ljava/lang/String;Ljava/lang/String;Lᴵʼ/ˑﹳ;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lʼˋ/ﾞᴵ;

    const/16 p2, 0x19

    const/4 p3, 0x0

    invoke-direct {p1, v0, v1, p3, p2}, Lʼˋ/ﾞᴵ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lˈי/ˈ;I)V

    sget-object p2, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;

    invoke-static {p2, p1}, Lᴵי/ʾᵎ;->יـ(Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lᴵʼ/ⁱˊ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized ᵔᵢ(J)V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lـˎ/ᵔᵢ;->ﹳٴ:Lˏˊ/ⁱˊ;

    new-instance v1, Lˑᵢ/ʻˋ;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1, p2}, Lˑᵢ/ʻˋ;-><init>(IJ)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lʼˋ/ﾞᴵ;

    const/16 p2, 0x19

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2, p2}, Lʼˋ/ﾞᴵ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lˈי/ˈ;I)V

    sget-object p2, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;

    invoke-static {p2, p1}, Lᴵי/ʾᵎ;->יـ(Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lᴵʼ/ⁱˊ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized ⁱˊ()V
    .locals 5

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lـˎ/ᵔᵢ;->ﹳٴ:Lˏˊ/ⁱˊ;

    new-instance v1, Lʼⁱ/ʽⁱ;

    const/16 v2, 0x19

    invoke-direct {v1, v2, p0}, Lʼⁱ/ʽⁱ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lʼˋ/ﾞᴵ;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v4, v3}, Lʼˋ/ﾞᴵ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lˈי/ˈ;I)V

    sget-object v0, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;

    invoke-static {v0, v2}, Lᴵי/ʾᵎ;->יـ(Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᴵʼ/ⁱˊ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized ﹳٴ(Lᴵʼ/ⁱˊ;)J
    .locals 11

    .prologue
    monitor-enter p0

    :try_start_0
    sget-object v0, Lـˎ/ᵔᵢ;->ʽ:Lᴵʼ/ˑﹳ;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/support/v4/media/session/ⁱˊ;->ʼˎ(Lᴵʼ/ⁱˊ;Lᴵʼ/ˑﹳ;Ljava/io/Serializable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, ""

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lᴵʼ/ⁱˊ;->ﹳٴ()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/util/Set;

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lᴵʼ/ˑﹳ;

    iget-object v2, v2, Lᴵʼ/ˑﹳ;->ﹳٴ:Ljava/lang/String;

    move-object v3, v7

    move-object v5, v9

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    new-instance v3, Lᴵʼ/ˑﹳ;

    invoke-direct {v3, v2}, Lᴵʼ/ˑﹳ;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Lᴵʼ/ⁱˊ;->ʽ(Lᴵʼ/ˑﹳ;Ljava/lang/Object;)V

    sget-object v2, Lـˎ/ᵔᵢ;->ʽ:Lᴵʼ/ˑﹳ;

    const-wide/16 v3, 0x1

    sub-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lᴵʼ/ⁱˊ;->ʽ(Lᴵʼ/ˑﹳ;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized ﾞᴵ(Lᴵʼ/ⁱˊ;Ljava/lang/String;)V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lـˎ/ᵔᵢ;->ˑﹳ(Lᴵʼ/ⁱˊ;Ljava/lang/String;)Lᴵʼ/ˑﹳ;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1, v0, v2}, Landroid/support/v4/media/session/ⁱˊ;->ʼˎ(Lᴵʼ/ⁱˊ;Lᴵʼ/ˑﹳ;Ljava/io/Serializable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lᴵʼ/ⁱˊ;->ⁱˊ()V

    iget-object p1, p1, Lᴵʼ/ⁱˊ;->ﹳٴ:Ljava/util/LinkedHashMap;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0, v1}, Lᴵʼ/ⁱˊ;->ʽ(Lᴵʼ/ˑﹳ;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
