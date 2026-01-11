.class public final Lﹳˊ/ᵔﹳ;
.super Lﹳˊ/ˉʿ;
.source "SourceFile"


# instance fields
.field public final ʽ:Lˏـ/ᵎﹶ;

.field public final ˈ:Lᵔﹶ/ᴵˊ;

.field public final ⁱˊ:Lٴʽ/יـ;


# direct methods
.method public constructor <init>(Lٴʽ/יـ;Lˏـ/ᵎﹶ;Lᵔﹶ/ᴵˊ;)V
    .locals 1

    .prologue
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lﹳˊ/ˉʿ;-><init>(I)V

    iput-object p2, p0, Lﹳˊ/ᵔﹳ;->ʽ:Lˏـ/ᵎﹶ;

    iput-object p1, p0, Lﹳˊ/ᵔﹳ;->ⁱˊ:Lٴʽ/יـ;

    iput-object p3, p0, Lﹳˊ/ᵔﹳ;->ˈ:Lᵔﹶ/ᴵˊ;

    iget-boolean p1, p1, Lٴʽ/יـ;->ﹳٴ:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ʽ(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lﹳˊ/ᵔﹳ;->ˈ:Lᵔﹶ/ᴵˊ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/google/android/gms/common/api/Status;->ʽʽ:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/ResolvableApiException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    iget-object p1, p0, Lﹳˊ/ᵔﹳ;->ʽ:Lˏـ/ᵎﹶ;

    invoke-virtual {p1, v0}, Lˏـ/ᵎﹶ;->ﹳٴ(Ljava/lang/Exception;)V

    return-void
.end method

.method public final ˈ(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lﹳˊ/ᵔﹳ;->ʽ:Lˏـ/ᵎﹶ;

    invoke-virtual {v0, p1}, Lˏـ/ᵎﹶ;->ﹳٴ(Ljava/lang/Exception;)V

    return-void
.end method

.method public final ˑﹳ(Lﹳˊ/ʼˎ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lﹳˊ/ᵔﹳ;->ʽ:Lˏـ/ᵎﹶ;

    :try_start_0
    iget-object v1, p0, Lﹳˊ/ᵔﹳ;->ⁱˊ:Lٴʽ/יـ;

    iget-object p1, p1, Lﹳˊ/ʼˎ;->ˑﹳ:Lᵢʾ/ﹳٴ;

    invoke-virtual {v1, p1, v0}, Lٴʽ/יـ;->ﹳٴ(Lᵢʾ/ﹳٴ;Lˏـ/ᵎﹶ;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :goto_0
    invoke-virtual {v0, p1}, Lˏـ/ᵎﹶ;->ﹳٴ(Ljava/lang/Exception;)V

    return-void

    :goto_1
    invoke-static {p1}, Lﹳˊ/ˉʿ;->ᵎﹶ(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lﹳˊ/ᵔﹳ;->ʽ(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :goto_2
    throw p1
.end method

.method public final ⁱˊ(Lﹳˊ/ʼˎ;)[Lᴵˈ/ˈ;
    .locals 0

    iget-object p1, p0, Lﹳˊ/ᵔﹳ;->ⁱˊ:Lٴʽ/יـ;

    iget-object p1, p1, Lٴʽ/יـ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, [Lᴵˈ/ˈ;

    return-object p1
.end method

.method public final ﹳٴ(Lﹳˊ/ʼˎ;)Z
    .locals 0

    iget-object p1, p0, Lﹳˊ/ᵔﹳ;->ⁱˊ:Lٴʽ/יـ;

    iget-boolean p1, p1, Lٴʽ/יـ;->ﹳٴ:Z

    return p1
.end method

.method public final ﾞᴵ(Lˑʼ/ᵎˊ;Z)V
    .locals 4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-object v0, p1, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lﹳˊ/ᵔﹳ;->ʽ:Lˏـ/ᵎﹶ;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, v1, Lˏـ/ᵎﹶ;->ﹳٴ:Lˏـ/ˉʿ;

    new-instance v0, Lـʾ/ᵔﹳ;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lـʾ/ᵔﹳ;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lˏـ/ᵔᵢ;->ﹳٴ:Lʿʿ/ʽ;

    new-instance v1, Lˏـ/ٴﹶ;

    invoke-direct {v1, p1, v0}, Lˏـ/ٴﹶ;-><init>(Ljava/util/concurrent/Executor;Lˏـ/ʽ;)V

    iget-object p1, p2, Lˏـ/ˉʿ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ˊـ;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/ˊـ;->ʼˎ(Lˏـ/ﾞʻ;)V

    invoke-virtual {p2}, Lˏـ/ˉʿ;->ᵔʾ()V

    return-void
.end method
