.class public final Lﹳˊ/ﹳᐧ;
.super Lﹳˊ/ˉʿ;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Lˏـ/ᵎﹶ;


# direct methods
.method public constructor <init>(Lˏـ/ᵎﹶ;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lﹳˊ/ˉʿ;-><init>(I)V

    iput-object p1, p0, Lﹳˊ/ﹳᐧ;->ⁱˊ:Lˏـ/ᵎﹶ;

    return-void
.end method


# virtual methods
.method public final ʽ(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    iget-object p1, p0, Lﹳˊ/ﹳᐧ;->ⁱˊ:Lˏـ/ᵎﹶ;

    invoke-virtual {p1, v0}, Lˏـ/ᵎﹶ;->ﹳٴ(Ljava/lang/Exception;)V

    return-void
.end method

.method public final ˈ(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lﹳˊ/ﹳᐧ;->ⁱˊ:Lˏـ/ᵎﹶ;

    invoke-virtual {v0, p1}, Lˏـ/ᵎﹶ;->ﹳٴ(Ljava/lang/Exception;)V

    return-void
.end method

.method public final ˑﹳ(Lﹳˊ/ʼˎ;)V
    .locals 1

    .prologue
    :try_start_0
    invoke-virtual {p0, p1}, Lﹳˊ/ﹳᐧ;->ᵔᵢ(Lﹳˊ/ʼˎ;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lﹳˊ/ﹳᐧ;->ⁱˊ:Lˏـ/ᵎﹶ;

    invoke-virtual {v0, p1}, Lˏـ/ᵎﹶ;->ﹳٴ(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception p1

    invoke-static {p1}, Lﹳˊ/ˉʿ;->ᵎﹶ(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lﹳˊ/ﹳᐧ;->ʽ(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p1

    invoke-static {p1}, Lﹳˊ/ˉʿ;->ᵎﹶ(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lﹳˊ/ﹳᐧ;->ʽ(Lcom/google/android/gms/common/api/Status;)V

    throw p1
.end method

.method public final ᵔᵢ(Lﹳˊ/ʼˎ;)V
    .locals 1

    .prologue
    iget-object p1, p1, Lﹳˊ/ʼˎ;->ʼˎ:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lﹳˊ/ﹳᐧ;->ⁱˊ:Lˏـ/ᵎﹶ;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lˏـ/ᵎﹶ;->ⁱˊ(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final ⁱˊ(Lﹳˊ/ʼˎ;)[Lᴵˈ/ˈ;
    .locals 1

    .prologue
    iget-object p1, p1, Lﹳˊ/ʼˎ;->ʼˎ:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final ﹳٴ(Lﹳˊ/ʼˎ;)Z
    .locals 1

    .prologue
    iget-object p1, p1, Lﹳˊ/ʼˎ;->ʼˎ:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic ﾞᴵ(Lˑʼ/ᵎˊ;Z)V
    .locals 0

    return-void
.end method
