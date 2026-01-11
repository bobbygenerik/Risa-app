.class public Lʽʿ/ﹳٴ;
.super Lʽʿ/ٴﹶ;
.source "SourceFile"

# interfaces
.implements Lʽʿ/ⁱˊ;


# virtual methods
.method public final ˉٴ(Ljava/lang/Throwable;)Z
    .locals 1

    iget-object v0, p0, Lᴵי/ﹳٴ;->ʽʽ:Lˈי/ᵔᵢ;

    invoke-static {p1, v0}, Lᴵי/ʾᵎ;->ˉʿ(Ljava/lang/Throwable;Lˈי/ᵔᵢ;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final ﹳـ(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-object v0, v1

    :cond_1
    iget-object p1, p0, Lʽʿ/ٴﹶ;->ˈٴ:Lʽʿ/ﾞᴵ;

    invoke-virtual {p1, v0}, Lʽʿ/ﾞᴵ;->ᵎﹶ(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method
