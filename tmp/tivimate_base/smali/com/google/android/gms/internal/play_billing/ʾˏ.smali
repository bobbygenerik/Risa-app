.class public final Lcom/google/android/gms/internal/play_billing/ʾˏ;
.super Lcom/google/android/gms/internal/play_billing/יⁱ;
.source "SourceFile"


# virtual methods
.method public final ʼˎ(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    sget-object p1, Lcom/google/android/gms/internal/play_billing/יⁱ;->ˊʻ:Lˈˊ/ᵔʾ;

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/internal/play_billing/יⁱ;->ٴᵢ:Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lˈˊ/ᵔʾ;->ـˏ(Lcom/google/android/gms/internal/play_billing/יⁱ;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/יⁱ;->ˈ(Lcom/google/android/gms/internal/play_billing/יⁱ;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
