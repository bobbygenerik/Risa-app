.class public final Lcom/google/android/gms/internal/measurement/ʽﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic ʾˋ:Lcom/google/android/gms/internal/measurement/ᵔᵢ;

.field public final synthetic ᴵˊ:Lˏˆ/ﹳٴ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ᵔᵢ;Lˏˆ/ﹳٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ʽﹳ;->ʾˋ:Lcom/google/android/gms/internal/measurement/ᵔᵢ;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ʽﹳ;->ᴵˊ:Lˏˆ/ﹳٴ;

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    check-cast p1, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/ﹳᐧ;

    check-cast p2, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    instance-of p1, p2, Lcom/google/android/gms/internal/measurement/ﹳᐧ;

    if-nez p1, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/ﹳᐧ;

    if-eqz v0, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ʽﹳ;->ʾˋ:Lcom/google/android/gms/internal/measurement/ᵔᵢ;

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_3
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/ᵔʾ;

    aput-object p1, v3, v1

    aput-object p2, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/ʽﹳ;->ᴵˊ:Lˏˆ/ﹳٴ;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ʽ(Lˏˆ/ﹳٴ;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ⁱˊ()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Lˉᵎ/ⁱˊ;->ᴵˑ(D)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method
