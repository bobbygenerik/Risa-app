.class public final Lˏˊ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic ˈ:[Lᐧˆ/ˈ;


# instance fields
.field public final ʽ:Lʿᵢ/ᵎﹶ;

.field public final ⁱˊ:Ljava/lang/ThreadLocal;

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lˊʼ/ˉˆ;

    const/4 v5, 0x0

    sget-object v1, Lˊʼ/ʽ;->ʾˋ:Lˊʼ/ʽ;

    const-class v2, Lˏˊ/ⁱˊ;

    const-string v3, "dataStore"

    const-string v4, "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    invoke-direct/range {v0 .. v5}, Lˊʼ/ʼᐧ;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lˊʼ/ʽﹳ;->ﹳٴ:Lˊʼ/ʻٴ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lᐧˆ/ˈ;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lˏˊ/ⁱˊ;->ˈ:[Lᐧˆ/ˈ;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lˏˊ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lˏˊ/ⁱˊ;->ⁱˊ:Ljava/lang/ThreadLocal;

    new-instance v0, Lʼⁱ/ʽⁱ;

    const/16 v1, 0x14

    invoke-direct {v0, v1, p0}, Lʼⁱ/ʽⁱ;-><init>(ILjava/lang/Object;)V

    sget-object v1, Lᴵי/ٴᵢ;->ﹳٴ:Lʿⁱ/ˈ;

    sget-object v1, Lʿⁱ/ʽ;->ᴵˊ:Lʿⁱ/ʽ;

    invoke-static {}, Lᴵי/ʾᵎ;->ˈ()Lᴵי/ﹶᐧ;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bumptech/glide/ʽ;->ˏי(Lˈי/ᵔᵢ;Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object v1

    invoke-static {v1}, Lᴵי/ʾᵎ;->ⁱˊ(Lˈי/ᵔᵢ;)Lˊʽ/ˈ;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/play_billing/ˈⁱ;

    invoke-direct {v2, p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/ˈⁱ;-><init>(Ljava/lang/String;Lᴵⁱ/ﾞʻ;Lˊʽ/ˈ;)V

    sget-object p2, Lˏˊ/ⁱˊ;->ˈ:[Lᐧˆ/ˈ;

    const/4 v3, 0x0

    aget-object p2, p2, v3

    iget-object p2, v2, Lcom/google/android/gms/internal/play_billing/ˈⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast p2, Lᴵʼ/ˈ;

    if-nez p2, :cond_1

    iget-object p2, v2, Lcom/google/android/gms/internal/play_billing/ˈⁱ;->ʽ:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v4, v2, Lcom/google/android/gms/internal/play_billing/ˈⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v4, Lᴵʼ/ˈ;

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v0, p1}, Lᴵⁱ/ﾞʻ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v4, Lˏᵢ/ﹳٴ;

    invoke-direct {v4, v3, p1, v2}, Lˏᵢ/ﹳٴ;-><init>(ILandroid/content/Context;Ljava/lang/Object;)V

    new-instance p1, Lᐧﾞ/ˑﹳ;

    sget-object v3, Lˊᐧ/ﾞʻ;->ʾˋ:Lˊᐧ/ﹳᐧ;

    new-instance v5, Lʿᵢ/ˉٴ;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v4}, Lʿᵢ/ˉٴ;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, v3, v5}, Lᐧﾞ/ˑﹳ;-><init>(Lˊᐧ/ﾞʻ;Lʿᵢ/ˉٴ;)V

    new-instance v3, Lᴵʼ/ˈ;

    new-instance v4, Lˋⁱ/ﾞᴵ;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lʼˋ/ﾞᴵ;

    const/4 v6, 0x0

    const/16 v7, 0x11

    invoke-direct {v5, v0, v6, v7}, Lʼˋ/ﾞᴵ;-><init>(Ljava/lang/Object;Lˈי/ˈ;I)V

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v5, Lʿᵢ/ˈٴ;

    invoke-direct {v5, p1, v0, v4, v1}, Lʿᵢ/ˈٴ;-><init>(Lʿᵢ/ﹶᐧ;Ljava/util/List;Lʿᵢ/ⁱˊ;Lˊʽ/ˈ;)V

    invoke-direct {v3, v5}, Lᴵʼ/ˈ;-><init>(Lʿᵢ/ᵎﹶ;)V

    new-instance p1, Lᴵʼ/ˈ;

    invoke-direct {p1, v3}, Lᴵʼ/ˈ;-><init>(Lʿᵢ/ᵎﹶ;)V

    iput-object p1, v2, Lcom/google/android/gms/internal/play_billing/ˈⁱ;->ⁱˊ:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, v2, Lcom/google/android/gms/internal/play_billing/ˈⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lᴵʼ/ˈ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    move-object p2, p1

    goto :goto_2

    :goto_1
    monitor-exit p2

    throw p1

    :cond_1
    :goto_2
    iput-object p2, p0, Lˏˊ/ⁱˊ;->ʽ:Lʿᵢ/ᵎﹶ;

    return-void
.end method
