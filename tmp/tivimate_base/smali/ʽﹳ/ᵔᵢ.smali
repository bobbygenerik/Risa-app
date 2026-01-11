.class public final Lʽﹳ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Lʽﹳ/ᵔʾ;

.field public ˈ:Z

.field public ⁱˊ:Lʽﹳ/ٴﹶ;

.field public ﹳٴ:Ljava/lang/Object;


# virtual methods
.method public final finalize()V
    .locals 4

    .prologue
    iget-object v0, p0, Lʽﹳ/ᵔᵢ;->ⁱˊ:Lʽﹳ/ٴﹶ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lʽﹳ/ٴﹶ;->ᴵˊ:Lʽﹳ/ˆʾ;

    invoke-virtual {v0}, Lʽﹳ/ᵎﹶ;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/play_billing/ʽᵔ;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The completer object was garbage collected - this future would otherwise never complete. The tag was: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lʽﹳ/ᵔᵢ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/play_billing/ʽᵔ;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lʽﹳ/ᵎﹶ;->ﾞʻ(Ljava/lang/Throwable;)Z

    :cond_0
    iget-boolean v0, p0, Lʽﹳ/ᵔᵢ;->ˈ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lʽﹳ/ᵔᵢ;->ʽ:Lʽﹳ/ᵔʾ;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lʽﹳ/ᵎﹶ;->ٴﹶ(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final ⁱˊ(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lʽﹳ/ᵔᵢ;->ˈ:Z

    iget-object v0, p0, Lʽﹳ/ᵔᵢ;->ⁱˊ:Lʽﹳ/ٴﹶ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lʽﹳ/ٴﹶ;->ᴵˊ:Lʽﹳ/ˆʾ;

    invoke-virtual {v0, p1}, Lʽﹳ/ᵎﹶ;->ﾞʻ(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lʽﹳ/ᵔᵢ;->ﹳٴ:Ljava/lang/Object;

    iput-object p1, p0, Lʽﹳ/ᵔᵢ;->ⁱˊ:Lʽﹳ/ٴﹶ;

    iput-object p1, p0, Lʽﹳ/ᵔᵢ;->ʽ:Lʽﹳ/ᵔʾ;

    :cond_0
    return-void
.end method

.method public final ﹳٴ(Ljava/lang/Object;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lʽﹳ/ᵔᵢ;->ˈ:Z

    iget-object v0, p0, Lʽﹳ/ᵔᵢ;->ⁱˊ:Lʽﹳ/ٴﹶ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lʽﹳ/ٴﹶ;->ᴵˊ:Lʽﹳ/ˆʾ;

    invoke-virtual {v0, p1}, Lʽﹳ/ᵎﹶ;->ٴﹶ(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lʽﹳ/ᵔᵢ;->ﹳٴ:Ljava/lang/Object;

    iput-object p1, p0, Lʽﹳ/ᵔᵢ;->ⁱˊ:Lʽﹳ/ٴﹶ;

    iput-object p1, p0, Lʽﹳ/ᵔᵢ;->ʽ:Lʽﹳ/ᵔʾ;

    :cond_0
    return-void
.end method
