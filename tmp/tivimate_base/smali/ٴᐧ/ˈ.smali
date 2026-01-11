.class public final synthetic Lٴᐧ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:I

.field public final synthetic ʾˋ:Lʾٴ/ⁱˊ;

.field public final synthetic ˈٴ:Ljava/lang/Runnable;

.field public final synthetic ᴵˊ:Lˉˋ/ʼˎ;


# direct methods
.method public synthetic constructor <init>(Lʾٴ/ⁱˊ;Lˉˋ/ʼˎ;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lٴᐧ/ˈ;->ʾˋ:Lʾٴ/ⁱˊ;

    iput-object p2, p0, Lٴᐧ/ˈ;->ᴵˊ:Lˉˋ/ʼˎ;

    iput p3, p0, Lٴᐧ/ˈ;->ʽʽ:I

    iput-object p4, p0, Lٴᐧ/ˈ;->ˈٴ:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    iget-object v0, p0, Lٴᐧ/ˈ;->ᴵˊ:Lˉˋ/ʼˎ;

    iget v1, p0, Lٴᐧ/ˈ;->ʽʽ:I

    iget-object v2, p0, Lٴᐧ/ˈ;->ˈٴ:Ljava/lang/Runnable;

    iget-object v3, p0, Lٴᐧ/ˈ;->ʾˋ:Lʾٴ/ⁱˊ;

    iget-object v4, v3, Lʾٴ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v4, Lʻˎ/ⁱˊ;

    :try_start_0
    iget-object v5, v3, Lʾٴ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast v5, Lᵔـ/ˈ;

    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lٴˉ/ﹳٴ;

    const/4 v7, 0x3

    invoke-direct {v6, v7, v5}, Lٴˉ/ﹳٴ;-><init>(ILjava/lang/Object;)V

    move-object v5, v4

    check-cast v5, Lᵔـ/ᵔᵢ;

    invoke-virtual {v5, v6}, Lᵔـ/ᵔᵢ;->ʾˋ(Lʻˎ/ﹳٴ;)Ljava/lang/Object;

    iget-object v5, v3, Lʾٴ/ⁱˊ;->ﹳٴ:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v0, v1}, Lʾٴ/ⁱˊ;->ʽ(Lˉˋ/ʼˎ;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v5, Lٴᐧ/ˑﹳ;

    invoke-direct {v5, v3, v0, v1}, Lٴᐧ/ˑﹳ;-><init>(Lʾٴ/ⁱˊ;Lˉˋ/ʼˎ;I)V

    check-cast v4, Lᵔـ/ᵔᵢ;

    invoke-virtual {v4, v5}, Lᵔـ/ᵔᵢ;->ʾˋ(Lʻˎ/ﹳٴ;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-void

    :catch_0
    :try_start_1
    iget-object v3, v3, Lʾٴ/ⁱˊ;->ˈ:Ljava/lang/Object;

    check-cast v3, Lcom/parse/ٴʼ;

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v1, v4}, Lcom/parse/ٴʼ;->ʻᵎ(Lˉˋ/ʼˎ;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    throw v0
.end method
