.class public final Lˉˋ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile ˑﹳ:Lˉˋ/ˆʾ;


# instance fields
.field public final ʽ:Lˋﹳ/ⁱˊ;

.field public final ˈ:Lʾٴ/ⁱˊ;

.field public final ⁱˊ:Lﹳᵔ/ﹳٴ;

.field public final ﹳٴ:Lﹳᵔ/ﹳٴ;


# direct methods
.method public constructor <init>(Lﹳᵔ/ﹳٴ;Lﹳᵔ/ﹳٴ;Lˋﹳ/ⁱˊ;Lʾٴ/ⁱˊ;Lˏˆ/ﹳٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˉˋ/ʼᐧ;->ﹳٴ:Lﹳᵔ/ﹳٴ;

    iput-object p2, p0, Lˉˋ/ʼᐧ;->ⁱˊ:Lﹳᵔ/ﹳٴ;

    iput-object p3, p0, Lˉˋ/ʼᐧ;->ʽ:Lˋﹳ/ⁱˊ;

    iput-object p4, p0, Lˉˋ/ʼᐧ;->ˈ:Lʾٴ/ⁱˊ;

    iget-object p1, p5, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/Executor;

    new-instance p2, Lٴˉ/ⁱˊ;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p5}, Lٴˉ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ⁱˊ(Landroid/content/Context;)V
    .locals 2

    .prologue
    sget-object v0, Lˉˋ/ʼᐧ;->ˑﹳ:Lˉˋ/ˆʾ;

    if-nez v0, :cond_1

    const-class v0, Lˉˋ/ʼᐧ;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lˉˋ/ʼᐧ;->ˑﹳ:Lˉˋ/ˆʾ;

    if-nez v1, :cond_0

    new-instance v1, Lʾⁱ/ˑﹳ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v1, Lʾⁱ/ˑﹳ;->ﹳٴ:Landroid/content/Context;

    invoke-virtual {v1}, Lʾⁱ/ˑﹳ;->ﹳٴ()Lˉˋ/ˆʾ;

    move-result-object p0

    sput-object p0, Lˉˋ/ʼᐧ;->ˑﹳ:Lˉˋ/ˆʾ;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public static ﹳٴ()Lˉˋ/ʼᐧ;
    .locals 2

    .prologue
    sget-object v0, Lˉˋ/ʼᐧ;->ˑﹳ:Lˉˋ/ˆʾ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˉˋ/ˆʾ;->ˊʻ:Lᵎˋ/ﹳٴ;

    invoke-interface {v0}, Lᵎˋ/ﹳٴ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˉˋ/ʼᐧ;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final ʽ(Lˉˋ/ٴﹶ;)Lˉˋ/ˉˆ;
    .locals 6

    .prologue
    new-instance v0, Lˉˋ/ˉˆ;

    if-eqz p1, :cond_0

    sget-object v1, Lٴי/ﹳٴ;->ˈ:Ljava/util/Set;

    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lᴵˆ/ⁱˊ;

    const-string v2, "proto"

    invoke-direct {v1, v2}, Lᴵˆ/ⁱˊ;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    :goto_0
    invoke-static {}, Lˉˋ/ʼˎ;->ﹳٴ()Lˑי/ʽ;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "cct"

    iput-object v3, v2, Lˑי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Lٴי/ﹳٴ;

    iget-object v3, p1, Lٴי/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    iget-object p1, p1, Lٴי/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    if-nez p1, :cond_1

    if-nez v3, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "1$"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\\"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :goto_1
    iput-object p1, v2, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    invoke-virtual {v2}, Lˑי/ʽ;->ᵔﹳ()Lˉˋ/ʼˎ;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lˉˋ/ˉˆ;-><init>(Ljava/util/Set;Lˉˋ/ʼˎ;Lˉˋ/ʼᐧ;)V

    return-object v0
.end method
