.class public final Lʻᵢ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʻᵢ/ʽ;
.implements Ljava/io/Serializable;


# instance fields
.field public final ʽʽ:Ljava/lang/Object;

.field public ʾˋ:Lᴵⁱ/ﹳٴ;

.field public volatile ᴵˊ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lᴵⁱ/ﹳٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʻᵢ/ʼˎ;->ʾˋ:Lᴵⁱ/ﹳٴ;

    sget-object p1, Lʻᵢ/ᵔʾ;->ﹳٴ:Lʻᵢ/ᵔʾ;

    iput-object p1, p0, Lʻᵢ/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    iput-object p0, p0, Lʻᵢ/ʼˎ;->ʽʽ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 3

    .prologue
    iget-object v0, p0, Lʻᵢ/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    sget-object v1, Lʻᵢ/ᵔʾ;->ﹳٴ:Lʻᵢ/ᵔʾ;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lʻᵢ/ʼˎ;->ʽʽ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lʻᵢ/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lʻᵢ/ʼˎ;->ʾˋ:Lᴵⁱ/ﹳٴ;

    invoke-interface {v1}, Lᴵⁱ/ﹳٴ;->ʽ()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lʻᵢ/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lʻᵢ/ʼˎ;->ʾˋ:Lᴵⁱ/ﹳٴ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lʻᵢ/ʼˎ;->ﹳٴ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Lazy value not initialized yet."

    return-object v0
.end method

.method public final ﹳٴ()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lʻᵢ/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    sget-object v1, Lʻᵢ/ᵔʾ;->ﹳٴ:Lʻᵢ/ᵔʾ;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
