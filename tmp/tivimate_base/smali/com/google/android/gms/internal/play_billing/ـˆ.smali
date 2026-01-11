.class public abstract Lcom/google/android/gms/internal/play_billing/ـˆ;
.super Lcom/google/android/gms/internal/play_billing/ʼᐧ;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;
.implements Lj$/util/Set;


# instance fields
.field public transient ᴵˊ:Lcom/google/android/gms/internal/play_billing/יـ;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-eq p1, p0, :cond_3

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Ljava/util/Set;

    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    return v2

    :cond_1
    return v0

    :catch_0
    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public ˑﹳ()Lcom/google/android/gms/internal/play_billing/יـ;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ـˆ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/יـ;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/ـˆ;->ᵔᵢ()Lcom/google/android/gms/internal/play_billing/יـ;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/ـˆ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/יـ;

    :cond_0
    return-object v0
.end method

.method public ᵔᵢ()Lcom/google/android/gms/internal/play_billing/יـ;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ʼᐧ;->ʾˋ:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/ʼᐧ;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/play_billing/יـ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ᵔﹳ;

    array-length v1, v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/יـ;->ʼˎ(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/ʼʼ;

    move-result-object v0

    return-object v0
.end method
