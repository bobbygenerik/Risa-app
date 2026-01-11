.class public final Lcom/google/android/gms/internal/play_billing/ʽᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Lcom/google/android/gms/internal/play_billing/ʾˏ;

.field public ˈ:Z

.field public ⁱˊ:Lcom/google/android/gms/internal/play_billing/ˎᵎ;

.field public ﹳٴ:Ljava/lang/Object;


# virtual methods
.method public final finalize()V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ʽᐧ;->ⁱˊ:Lcom/google/android/gms/internal/play_billing/ˎᵎ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ˎᵎ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ⁱʾ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/יⁱ;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/play_billing/ʽᵔ;

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/ʽᐧ;->ﹳٴ:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "The completer object was garbage collected - this future would otherwise never complete. The tag was: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/internal/play_billing/ʽᵔ;-><init>(ILjava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/play_billing/ـˊ;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/play_billing/ـˊ;-><init>(Ljava/lang/Throwable;)V

    sget-object v2, Lcom/google/android/gms/internal/play_billing/יⁱ;->ˊʻ:Lˈˊ/ᵔʾ;

    invoke-virtual {v2, v0, v1, v3}, Lˈˊ/ᵔʾ;->ـˏ(Lcom/google/android/gms/internal/play_billing/יⁱ;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/יⁱ;->ˈ(Lcom/google/android/gms/internal/play_billing/יⁱ;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/ʽᐧ;->ˈ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ʽᐧ;->ʽ:Lcom/google/android/gms/internal/play_billing/ʾˏ;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/ʾˏ;->ʼˎ(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final ﹳٴ(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/ʽᐧ;->ˈ:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ʽᐧ;->ⁱˊ:Lcom/google/android/gms/internal/play_billing/ˎᵎ;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ˎᵎ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ⁱʾ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/play_billing/יⁱ;->ٴᵢ:Ljava/lang/Object;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/play_billing/יⁱ;->ˊʻ:Lˈˊ/ᵔʾ;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lˈˊ/ᵔʾ;->ـˏ(Lcom/google/android/gms/internal/play_billing/יⁱ;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/יⁱ;->ˈ(Lcom/google/android/gms/internal/play_billing/יⁱ;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/play_billing/ʽᐧ;->ﹳٴ:Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/android/gms/internal/play_billing/ʽᐧ;->ⁱˊ:Lcom/google/android/gms/internal/play_billing/ˎᵎ;

    iput-object v2, p0, Lcom/google/android/gms/internal/play_billing/ʽᐧ;->ʽ:Lcom/google/android/gms/internal/play_billing/ʾˏ;

    :cond_1
    return-void
.end method
