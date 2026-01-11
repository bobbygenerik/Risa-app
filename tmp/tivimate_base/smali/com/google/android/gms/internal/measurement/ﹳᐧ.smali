.class public final Lcom/google/android/gms/internal/measurement/ﹳᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ᵔʾ;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .prologue
    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of p1, p1, Lcom/google/android/gms/internal/measurement/ﹳᐧ;

    return p1
.end method

.method public final ˆʾ()Lcom/google/android/gms/internal/measurement/ᵔʾ;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ﹳᐧ;

    return-object v0
.end method

.method public final ᵎﹶ()Ljava/lang/String;
    .locals 1

    const-string v0, "undefined"

    return-object v0
.end method

.method public final ᵔᵢ(Ljava/lang/String;Lˏˆ/ﹳٴ;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/ᵔʾ;
    .locals 0

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Undefined has no function "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final ⁱˊ()Ljava/lang/Double;
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final ﾞᴵ()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
