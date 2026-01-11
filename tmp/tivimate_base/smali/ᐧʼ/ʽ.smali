.class public final Lᐧʼ/ʽ;
.super Lᴵי/ˏי;
.source "SourceFile"

# interfaces
.implements Lᴵי/ʽʽ;


# instance fields
.field public final ʽʽ:Z

.field public final ˈٴ:Lᐧʼ/ʽ;

.field public final ᴵˊ:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Z)V
    .locals 1

    .prologue
    invoke-direct {p0}, Lᴵי/ˏי;-><init>()V

    iput-object p1, p0, Lᐧʼ/ʽ;->ᴵˊ:Landroid/os/Handler;

    iput-boolean p2, p0, Lᐧʼ/ʽ;->ʽʽ:Z

    if-eqz p2, :cond_0

    move-object p2, p0

    goto :goto_0

    :cond_0
    new-instance p2, Lᐧʼ/ʽ;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lᐧʼ/ʽ;-><init>(Landroid/os/Handler;Z)V

    :goto_0
    iput-object p2, p0, Lᐧʼ/ʽ;->ˈٴ:Lᐧʼ/ʽ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    instance-of v0, p1, Lᐧʼ/ʽ;

    if-eqz v0, :cond_0

    check-cast p1, Lᐧʼ/ʽ;

    iget-object v0, p1, Lᐧʼ/ʽ;->ᴵˊ:Landroid/os/Handler;

    iget-object v1, p0, Lᐧʼ/ʽ;->ᴵˊ:Landroid/os/Handler;

    if-ne v0, v1, :cond_0

    iget-boolean p1, p1, Lᐧʼ/ʽ;->ʽʽ:Z

    iget-boolean v0, p0, Lᐧʼ/ʽ;->ʽʽ:Z

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    iget-object v0, p0, Lᐧʼ/ʽ;->ᴵˊ:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lᐧʼ/ʽ;->ʽʽ:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    sget-object v0, Lᴵי/ٴᵢ;->ﹳٴ:Lʿⁱ/ˈ;

    sget-object v0, Lˊʽ/ᵔʾ;->ﹳٴ:Lᐧʼ/ʽ;

    if-ne p0, v0, :cond_0

    const-string v0, "Dispatchers.Main"

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, v0, Lᐧʼ/ʽ;->ˈٴ:Lᐧʼ/ʽ;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    if-ne p0, v0, :cond_1

    const-string v0, "Dispatchers.Main.immediate"

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lᐧʼ/ʽ;->ᴵˊ:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lᐧʼ/ʽ;->ʽʽ:Z

    if-eqz v1, :cond_2

    const-string v1, ".immediate"

    invoke-static {v0, v1}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final ʾˊ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    new-instance v0, Ljava/util/concurrent/CancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The task was rejected, the handler underlying the dispatcher \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' was closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sget-object v1, Lᴵי/ʽﹳ;->ᴵˊ:Lᴵי/ʽﹳ;

    invoke-interface {p1, v1}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v1

    check-cast v1, Lᴵי/ᴵˑ;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lᴵי/ᴵˑ;->ᵎﹶ(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    sget-object v0, Lᴵי/ٴᵢ;->ﹳٴ:Lʿⁱ/ˈ;

    sget-object v0, Lʿⁱ/ʽ;->ᴵˊ:Lʿⁱ/ʽ;

    invoke-virtual {v0, p1, p2}, Lʿⁱ/ʽ;->ـᵎ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ʾˋ(JLᴵי/ٴﹶ;)V
    .locals 4

    .prologue
    new-instance v0, Lʻʿ/ᵔʾ;

    const/16 v1, 0x19

    invoke-direct {v0, p3, v1, p0}, Lʻʿ/ᵔʾ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    move-wide p1, v1

    :cond_0
    iget-object v1, p0, Lᐧʼ/ʽ;->ᴵˊ:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lˑᵢ/ᐧᴵ;

    const/16 p2, 0x8

    invoke-direct {p1, p0, p2, v0}, Lˑᵢ/ᐧᴵ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p3, p1}, Lᴵי/ٴﹶ;->ʾᵎ(Lᴵⁱ/ﾞʻ;)V

    return-void

    :cond_1
    iget-object p1, p3, Lᴵי/ٴﹶ;->ᴵᵔ:Lˈי/ᵔᵢ;

    invoke-virtual {p0, p1, v0}, Lᐧʼ/ʽ;->ʾˊ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ـᵎ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lᐧʼ/ʽ;->ᴵˊ:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lᐧʼ/ʽ;->ʾˊ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final ᐧﹶ(Lˈי/ᵔᵢ;)Z
    .locals 1

    .prologue
    iget-boolean p1, p0, Lᐧʼ/ʽ;->ʽʽ:Z

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lᐧʼ/ʽ;->ᴵˊ:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1, v0}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final ᴵʼ(JLᴵי/ʻˋ;Lˈי/ᵔᵢ;)Lᴵי/ᵎⁱ;
    .locals 3

    .prologue
    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iget-object v0, p0, Lᐧʼ/ʽ;->ᴵˊ:Landroid/os/Handler;

    invoke-virtual {v0, p3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lʿᵢ/ˉـ;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2, p3}, Lʿᵢ/ˉـ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object p1

    :cond_1
    invoke-virtual {p0, p4, p3}, Lᐧʼ/ʽ;->ʾˊ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V

    sget-object p1, Lᴵי/ʻᵎ;->ʾˋ:Lᴵי/ʻᵎ;

    return-object p1
.end method
