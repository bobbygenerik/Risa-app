.class public final Lﹶﾞ/ˏᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final ʾˋ:Ljava/lang/String;

.field public final synthetic ᴵˊ:Lﹶﾞ/ᴵʼ;


# direct methods
.method public constructor <init>(Lﹶﾞ/ᴵʼ;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lﹶﾞ/ˏᵢ;->ᴵˊ:Lﹶﾞ/ᴵʼ;

    iput-object p2, p0, Lﹶﾞ/ˏᵢ;->ʾˋ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    iget-object p1, p0, Lﹶﾞ/ˏᵢ;->ᴵˊ:Lﹶﾞ/ᴵʼ;

    if-eqz p2, :cond_1

    :try_start_0
    sget v0, Lcom/google/android/gms/internal/measurement/ᴵˊ;->ˈ:I

    const-string v0, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/ʽʽ;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/google/android/gms/internal/measurement/ʽʽ;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/measurement/ʾˋ;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v0, v2}, Lcom/google/android/gms/internal/measurement/ʾᵎ;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    :goto_0
    iget-object p2, p1, Lﹶﾞ/ᴵʼ;->ⁱˊ:Lﹶﾞ/ᵎʻ;

    iget-object v0, p2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v2, "Install Referrer Service connected"

    invoke-virtual {v0, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    iget-object p2, p2, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    new-instance v0, Lˋˋ/ˈ;

    invoke-direct {v0, p0, v1, p0}, Lˋˋ/ˈ;-><init>(Lﹶﾞ/ˏᵢ;Lcom/google/android/gms/internal/measurement/ʽʽ;Lﹶﾞ/ˏᵢ;)V

    invoke-virtual {p2, v0}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    iget-object p1, p1, Lﹶﾞ/ᴵʼ;->ⁱˊ:Lﹶﾞ/ᵎʻ;

    iget-object p1, p1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v0, "Exception occurred while calling Install Referrer API"

    invoke-virtual {p1, p2, v0}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p1, Lﹶﾞ/ᴵʼ;->ⁱˊ:Lﹶﾞ/ᵎʻ;

    iget-object p1, p1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string p2, "Install Referrer connection returned with null binder"

    invoke-virtual {p1, p2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lﹶﾞ/ˏᵢ;->ᴵˊ:Lﹶﾞ/ᴵʼ;

    iget-object p1, p1, Lﹶﾞ/ᴵʼ;->ⁱˊ:Lﹶﾞ/ᵎʻ;

    iget-object p1, p1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v0, "Install Referrer Service disconnected"

    invoke-virtual {p1, v0}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    return-void
.end method
