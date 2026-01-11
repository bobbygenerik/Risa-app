.class public final Lcom/google/android/gms/internal/measurement/יˑ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʼˎ:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final ᵎﹶ:Ljava/lang/Object;

.field public static volatile ᵔᵢ:Lcom/google/android/gms/internal/measurement/ⁱʾ;


# instance fields
.field public final ʽ:Ljava/lang/Object;

.field public volatile ˈ:I

.field public volatile ˑﹳ:Ljava/lang/Object;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Lar/tvplayer/core/domain/ʽﹳ;

.field public final synthetic ﾞᴵ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/יˑ;->ᵎﹶ:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/יˑ;->ʼˎ:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public synthetic constructor <init>(Lar/tvplayer/core/domain/ʽﹳ;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    iput p4, p0, Lcom/google/android/gms/internal/measurement/יˑ;->ﾞᴵ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, -0x1

    iput p4, p0, Lcom/google/android/gms/internal/measurement/יˑ;->ˈ:I

    iget-object p4, p1, Lar/tvplayer/core/domain/ʽﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast p4, Landroid/net/Uri;

    if-eqz p4, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/יˑ;->ﹳٴ:Lar/tvplayer/core/domain/ʽﹳ;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/יˑ;->ⁱˊ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/יˑ;->ʽ:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ⁱˊ()Ljava/lang/Object;
    .locals 9

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/measurement/יˑ;->ʼˎ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/יˑ;->ˈ:I

    if-ge v1, v0, :cond_d

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/יˑ;->ˈ:I

    if-ge v1, v0, :cond_c

    sget-object v1, Lcom/google/android/gms/internal/measurement/יˑ;->ᵔᵢ:Lcom/google/android/gms/internal/measurement/ⁱʾ;

    sget-object v2, Lˆʽ/ﹳٴ;->ʾˋ:Lˆʽ/ﹳٴ;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/ⁱʾ;->ⁱˊ:Lˆʽ/ٴﹶ;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lˆʽ/ٴﹶ;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˆʽ/ﾞᴵ;

    invoke-virtual {v2}, Lˆʽ/ﾞᴵ;->ⁱˊ()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lˆʽ/ﾞᴵ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ᐧˏ;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/יˑ;->ﹳٴ:Lar/tvplayer/core/domain/ʽﹳ;

    iget-object v5, v5, Lar/tvplayer/core/domain/ʽﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v5, Landroid/net/Uri;

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/יˑ;->ⁱˊ:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/ᐧˏ;->ﹳٴ:Lיـ/ﹳᐧ;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lיـ/ﹳᐧ;

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v3

    :goto_0
    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_2
    :goto_1
    move-object v4, v3

    :goto_2
    if-eqz v1, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    const-string v6, "Must call PhenotypeFlagInitializer.maybeInit() first"

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/play_billing/י;->ٴﹶ(Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/יˑ;->ﹳٴ:Lar/tvplayer/core/domain/ʽﹳ;

    iget-object v6, v5, Lar/tvplayer/core/domain/ʽﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v6, Landroid/net/Uri;

    if-eqz v6, :cond_b

    iget-object v7, v1, Lcom/google/android/gms/internal/measurement/ⁱʾ;->ﹳٴ:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/google/android/gms/internal/measurement/ʿˎ;->ﹳٴ(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v1, Lcom/google/android/gms/internal/measurement/ⁱʾ;->ﹳٴ:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/measurement/ᵢﹳ;->ʾˋ:Lcom/google/android/gms/internal/measurement/ᵢﹳ;

    invoke-static {v7, v6, v8}, Lcom/google/android/gms/internal/measurement/ʾˏ;->ﹳٴ(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/ʾˏ;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object v6, v3

    :goto_4
    if-eqz v6, :cond_5

    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/יˑ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ʾˏ;->ⁱˊ()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_5

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/measurement/יˑ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_5

    :cond_5
    move-object v6, v3

    :goto_5
    if-eqz v6, :cond_6

    goto :goto_6

    :cond_6
    iget-boolean v5, v5, Lar/tvplayer/core/domain/ʽﹳ;->ʾˋ:Z

    if-nez v5, :cond_7

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/ⁱʾ;->ﹳٴ:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/ˊـ;->ᵔᵢ(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/ˊـ;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/יˑ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/ˊـ;->ˆʾ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/יˑ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :cond_7
    if-nez v3, :cond_8

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/יˑ;->ʽ:Ljava/lang/Object;

    goto :goto_6

    :cond_8
    move-object v6, v3

    :goto_6
    invoke-virtual {v2}, Lˆʽ/ﾞᴵ;->ⁱˊ()Z

    move-result v1

    if-eqz v1, :cond_a

    if-nez v4, :cond_9

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/יˑ;->ʽ:Ljava/lang/Object;

    goto :goto_7

    :cond_9
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/יˑ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :cond_a
    :goto_7
    iput-object v6, p0, Lcom/google/android/gms/internal/measurement/יˑ;->ˑﹳ:Ljava/lang/Object;

    iput v0, p0, Lcom/google/android/gms/internal/measurement/יˑ;->ˈ:I

    goto :goto_8

    :cond_b
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/ⁱʾ;->ﹳٴ:Landroid/content/Context;

    throw v3

    :cond_c
    :goto_8
    monitor-exit p0

    goto :goto_a

    :goto_9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_d
    :goto_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/יˑ;->ˑﹳ:Ljava/lang/Object;

    return-object v0
.end method

.method public final ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/יˑ;->ﾞᴵ:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    :pswitch_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Double;

    goto :goto_1

    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_1

    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/יˑ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid double value for "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhenotypeFlag"

    nop

    const/4 p1, 0x0

    :goto_1
    return-object p1

    :pswitch_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Boolean;

    goto :goto_2

    :cond_4
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/measurement/ʻˆ;->ⁱˊ:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/google/android/gms/internal/measurement/ʻˆ;->ʽ:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/יˑ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid boolean value for "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhenotypeFlag"

    nop

    const/4 p1, 0x0

    :goto_2
    return-object p1

    :pswitch_2
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/Long;

    goto :goto_3

    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    :try_start_1
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/יˑ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid long value for "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhenotypeFlag"

    nop

    const/4 p1, 0x0

    :goto_3
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
