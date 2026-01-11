.class public abstract Lcom/google/android/gms/internal/play_billing/ˑ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final ʾˋ:Lcom/google/android/gms/internal/play_billing/ʼـ;

.field public ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/ʼـ;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/ˑ;->ʾˋ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ˉʿ()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ˈ(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/ʼـ;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˑ;->ʾˋ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ˈ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ˑ;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/ˑ;->ⁱˊ()Lcom/google/android/gms/internal/play_billing/ʼـ;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    return-object v0
.end method

.method public final ˈ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ˉʿ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˑ;->ʾˋ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ˈ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ʼـ;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/ⁱᴵ;->ʽ:Lcom/google/android/gms/internal/play_billing/ⁱᴵ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/ⁱᴵ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/ˋˊ;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/play_billing/ˋˊ;->ˈ(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    :cond_0
    return-void
.end method

.method public final ⁱˊ()Lcom/google/android/gms/internal/play_billing/ʼـ;
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ˉʿ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/ⁱᴵ;->ʽ:Lcom/google/android/gms/internal/play_billing/ⁱᴵ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/ⁱᴵ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/ˋˊ;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/play_billing/ˋˊ;->ⁱˊ(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ˆʾ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    return-object v0
.end method

.method public final ﹳٴ()Lcom/google/android/gms/internal/play_billing/ʼـ;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/ˑ;->ⁱˊ()Lcom/google/android/gms/internal/play_billing/ʼـ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ʽ(Lcom/google/android/gms/internal/play_billing/ʼـ;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzhg;-><init>()V

    throw v0
.end method
