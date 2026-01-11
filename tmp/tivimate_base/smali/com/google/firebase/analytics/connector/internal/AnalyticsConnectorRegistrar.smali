.class public Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static lambda$getComponents$0(Lˏ/ʽ;)Lˆٴ/ﹳٴ;
    .locals 6

    .prologue
    const-class v0, Lˉᵎ/ᵎﹶ;

    invoke-interface {p0, v0}, Lˏ/ʽ;->ⁱˊ(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˉᵎ/ᵎﹶ;

    const-class v1, Landroid/content/Context;

    invoke-interface {p0, v1}, Lˏ/ʽ;->ⁱˊ(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lˋˑ/ⁱˊ;

    invoke-interface {p0, v2}, Lˏ/ʽ;->ⁱˊ(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lˋˑ/ⁱˊ;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-static {v1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-static {p0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    sget-object v2, Lˆٴ/ⁱˊ;->ʽ:Lˆٴ/ⁱˊ;

    if-nez v2, :cond_2

    const-class v2, Lˆٴ/ⁱˊ;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lˆٴ/ⁱˊ;->ʽ:Lˆٴ/ⁱˊ;

    if-nez v3, :cond_1

    new-instance v3, Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(I)V

    const-string v4, "[DEFAULT]"

    invoke-virtual {v0}, Lˉᵎ/ᵎﹶ;->ﹳٴ()V

    iget-object v5, v0, Lˉᵎ/ᵎﹶ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    check-cast p0, Lˏ/ˆʾ;

    invoke-virtual {p0}, Lˏ/ˆʾ;->ﹳٴ()V

    const-string p0, "dataCollectionDefaultEnabled"

    invoke-virtual {v0}, Lˉᵎ/ᵎﹶ;->ᵎﹶ()Z

    move-result v0

    invoke-virtual {v3, p0, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p0, Lˆٴ/ⁱˊ;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/ʻˋ;->ʽ(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/ʻˋ;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ⁱˊ:Lˊⁱ/ˑﹳ;

    invoke-direct {p0, v0}, Lˆٴ/ⁱˊ;-><init>(Lˊⁱ/ˑﹳ;)V

    sput-object p0, Lˆٴ/ⁱˊ;->ʽ:Lˆٴ/ⁱˊ;

    :cond_1
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    sget-object p0, Lˆٴ/ⁱˊ;->ʽ:Lˆٴ/ⁱˊ;

    return-object p0
.end method

.method public static synthetic zza(Lˏ/ʽ;)Lˆٴ/ﹳٴ;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;->lambda$getComponents$0(Lˏ/ʽ;)Lˆٴ/ﹳٴ;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "L\u02cf/\u2071\u02ca;",
            ">;"
        }
    .end annotation

    const-class v0, Lˆٴ/ﹳٴ;

    invoke-static {v0}, Lˏ/ⁱˊ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ﹳٴ;

    move-result-object v0

    const-class v1, Lˉᵎ/ᵎﹶ;

    invoke-static {v1}, Lˏ/ʼˎ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ʼˎ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lˏ/ʼˎ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ʼˎ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    const-class v1, Lˋˑ/ⁱˊ;

    invoke-static {v1}, Lˏ/ʼˎ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ʼˎ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    sget-object v1, Lˋⁱ/ﾞᴵ;->ᴵˊ:Lˋⁱ/ﾞᴵ;

    iput-object v1, v0, Lˏ/ﹳٴ;->ﾞᴵ:Lˏ/ˈ;

    invoke-virtual {v0}, Lˏ/ﹳٴ;->ʽ()V

    invoke-virtual {v0}, Lˏ/ﹳٴ;->ⁱˊ()Lˏ/ⁱˊ;

    move-result-object v0

    const-string v1, "fire-analytics"

    const-string v2, "23.0.0"

    invoke-static {v1, v2}, Lﹳˋ/ٴﹶ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;)Lˏ/ⁱˊ;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lˏ/ⁱˊ;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
