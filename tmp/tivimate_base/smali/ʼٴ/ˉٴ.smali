.class public final synthetic Lʼٴ/ˉٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic ʽ:Ljava/lang/String;

.field public final synthetic ˈ:Ljava/lang/String;

.field public final synthetic ˑﹳ:Landroid/os/Bundle;

.field public final synthetic ⁱˊ:I

.field public final synthetic ﹳٴ:Lʼٴ/ⁱˊ;


# direct methods
.method public synthetic constructor <init>(Lʼٴ/ⁱˊ;ILjava/lang/String;Ljava/lang/String;Lcom/bumptech/glide/ʼˎ;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼٴ/ˉٴ;->ﹳٴ:Lʼٴ/ⁱˊ;

    iput p2, p0, Lʼٴ/ˉٴ;->ⁱˊ:I

    iput-object p3, p0, Lʼٴ/ˉٴ;->ʽ:Ljava/lang/String;

    iput-object p4, p0, Lʼٴ/ˉٴ;->ˈ:Ljava/lang/String;

    iput-object p6, p0, Lʼٴ/ˉٴ;->ˑﹳ:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    .prologue
    iget-object v0, p0, Lʼٴ/ˉٴ;->ﹳٴ:Lʼٴ/ⁱˊ;

    iget v2, p0, Lʼٴ/ˉٴ;->ⁱˊ:I

    iget-object v4, p0, Lʼٴ/ˉٴ;->ʽ:Ljava/lang/String;

    iget-object v5, p0, Lʼٴ/ˉٴ;->ˈ:Ljava/lang/String;

    iget-object v6, p0, Lʼٴ/ˉٴ;->ˑﹳ:Landroid/os/Bundle;

    const/4 v7, 0x5

    :try_start_0
    iget-object v1, v0, Lʼٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, v0, Lʼٴ/ⁱˊ;->ˉˆ:Lcom/google/android/gms/internal/play_billing/ʽ;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    :try_start_2
    sget-object v0, Lʼٴ/ˈٴ;->ˆʾ:Lʼٴ/ﾞᴵ;

    const/16 v1, 0x6b

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʽ(Lʼٴ/ﾞᴵ;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v3

    check-cast v1, Lcom/google/android/gms/internal/play_billing/ﹳٴ;

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/ﹳٴ;->ʼˈ(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    sget-object v1, Lʼٴ/ˈٴ;->ᵔᵢ:Lʼٴ/ﾞᴵ;

    invoke-static {v0}, Lʼٴ/ᴵˊ;->ﹳٴ(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʽ(Lʼٴ/ﾞᴵ;I)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v2, "ADDITIONAL_LOG_DETAILS"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    sget-object v1, Lʼٴ/ˈٴ;->ˆʾ:Lʼٴ/ﾞᴵ;

    invoke-static {v0}, Lʼٴ/ᴵˊ;->ﹳٴ(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʽ(Lʼٴ/ﾞᴵ;I)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v2, "ADDITIONAL_LOG_DETAILS"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-object v1
.end method
