.class public abstract Lcom/google/android/gms/internal/measurement/ˑᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Lcom/google/android/gms/internal/measurement/ʿʻ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ʽ:Lcom/google/android/gms/internal/measurement/ᵔᵔ;

    new-instance v0, Lcom/google/android/gms/internal/measurement/ʿʻ;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ʿʻ;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ˑᵢ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ʿʻ;

    return-void
.end method

.method public static ʻٴ(Ljava/util/List;)I
    .locals 4

    .prologue
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/ﹳﾞ;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/measurement/ﹳﾞ;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ˈ(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᴵˑ(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᴵˑ(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static ʼʼ(ILjava/util/List;)I
    .locals 0

    .prologue
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᴵˑ(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    mul-int/2addr p0, p1

    return p0
.end method

.method public static ʼˎ(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ᐧˉ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/measurement/ʼˋ;

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/ـˉ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/measurement/ـˉ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/measurement/ـˉ;->ʽʽ:I

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/ـˉ;->ⁱˊ(I)J

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    :goto_1
    iget p0, p1, Lcom/google/android/gms/internal/measurement/ـˉ;->ʽʽ:I

    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/ـˉ;->ⁱˊ(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ـˏ(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget p3, p1, Lcom/google/android/gms/internal/measurement/ـˉ;->ʽʽ:I

    if-ge v2, p3, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/ـˉ;->ⁱˊ(I)J

    move-result-wide v0

    invoke-virtual {p2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˆﾞ(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ـˏ(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˆﾞ(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static ʼᐧ(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ᐧˉ;Z)V
    .locals 2

    .prologue
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/measurement/ʼˋ;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    move p0, v0

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˈʿ(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    shl-int/lit8 v1, p0, 0x3

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˈʿ(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static ʽ(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ᐧˉ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/measurement/ʼˋ;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    move p0, v0

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ـˏ(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {p2, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˆﾞ(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static ʽﹳ(Ljava/util/List;)I
    .locals 5

    .prologue
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/ﹳﾞ;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/measurement/ﹳﾞ;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ˈ(I)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊʻ(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊʻ(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static ʾᵎ(ILjava/util/List;)I
    .locals 0

    .prologue
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᴵˑ(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    mul-int/2addr p0, p1

    return p0
.end method

.method public static ˆʾ(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ᐧˉ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/measurement/ʼˋ;

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ʽʽ:I

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ˈ(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊʻ(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    :goto_1
    iget p0, p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ʽʽ:I

    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ˈ(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˑٴ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget p3, p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ʽʽ:I

    if-ge v2, p3, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ˈ(I)I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᵎⁱ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊʻ(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˑٴ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᵎⁱ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static ˈ(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ᐧˉ;Z)V
    .locals 2

    .prologue
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/measurement/ʼˋ;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    move p0, v0

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊˋ(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᵎˊ(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static ˉʿ(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ᐧˉ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/measurement/ʼˋ;

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ʽʽ:I

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ˈ(I)I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    :goto_1
    iget p0, p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ʽʽ:I

    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ˈ(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊˋ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget p3, p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ʽʽ:I

    if-ge v2, p3, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ˈ(I)I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᵎˊ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊˋ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᵎˊ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static ˉˆ(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ᐧˉ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/measurement/ʼˋ;

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ʽʽ:I

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ˈ(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊʻ(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    :goto_1
    iget p0, p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ʽʽ:I

    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ˈ(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˑٴ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget p3, p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ʽʽ:I

    if-ge v2, p3, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ˈ(I)I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᵎⁱ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊʻ(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˑٴ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᵎⁱ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static ˏי(Ljava/util/List;)I
    .locals 5

    .prologue
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/ﹳﾞ;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/measurement/ﹳﾞ;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ˈ(I)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊʻ(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊʻ(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static ˑﹳ(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ᐧˉ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/measurement/ʼˋ;

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/ـˉ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/measurement/ـˉ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/measurement/ـˉ;->ʽʽ:I

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/ـˉ;->ⁱˊ(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊʻ(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    :goto_1
    iget p0, p1, Lcom/google/android/gms/internal/measurement/ـˉ;->ʽʽ:I

    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/ـˉ;->ⁱˊ(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ʼˈ(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget p3, p1, Lcom/google/android/gms/internal/measurement/ـˉ;->ʽʽ:I

    if-ge v2, p3, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/ـˉ;->ⁱˊ(I)J

    move-result-wide v0

    invoke-virtual {p2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᵔי(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊʻ(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ʼˈ(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᵔי(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static יـ(Ljava/util/List;)I
    .locals 8

    .prologue
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/ـˉ;

    const/16 v3, 0x3f

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/measurement/ـˉ;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/ـˉ;->ⁱˊ(I)J

    move-result-wide v4

    add-long v6, v4, v4

    shr-long/2addr v4, v3

    xor-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊʻ(J)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long v6, v4, v4

    shr-long/2addr v4, v3

    xor-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊʻ(J)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static ـˆ(Ljava/util/List;)I
    .locals 5

    .prologue
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/ﹳﾞ;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/measurement/ﹳﾞ;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ˈ(I)I

    move-result v3

    add-int v4, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᴵˑ(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int v4, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᴵˑ(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static ٴﹶ(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ᐧˉ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/measurement/ʼˋ;

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ʽʽ:I

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ˈ(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᴵˑ(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    :goto_1
    iget p0, p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ʽʽ:I

    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ˈ(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget p3, p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ʽʽ:I

    if-ge v2, p3, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ˈ(I)I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ٴʼ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᴵˑ(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ٴʼ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static ᵎﹶ(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ᐧˉ;Z)V
    .locals 6

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/measurement/ʼˋ;

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/ـˉ;

    const/4 v1, 0x2

    const/16 v2, 0x3f

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/measurement/ـˉ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    move p0, v3

    move p3, p0

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/measurement/ـˉ;->ʽʽ:I

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/ـˉ;->ⁱˊ(I)J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊʻ(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    :goto_1
    iget p0, p1, Lcom/google/android/gms/internal/measurement/ـˉ;->ʽʽ:I

    if-ge v3, p0, :cond_5

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/ـˉ;->ⁱˊ(I)J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ʼˈ(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget p3, p1, Lcom/google/android/gms/internal/measurement/ـˉ;->ʽʽ:I

    if-ge v3, p3, :cond_5

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/ـˉ;->ⁱˊ(I)J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    invoke-virtual {p2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᵔי(IJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    move p0, v3

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊʻ(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v3, p0, :cond_5

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ʼˈ(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v3, p3, :cond_5

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    invoke-virtual {p2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᵔי(IJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static ᵔʾ(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ᐧˉ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/measurement/ʼˋ;

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ʽʽ:I

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ˈ(I)I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    :goto_1
    iget p0, p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ʽʽ:I

    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ˈ(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊˋ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget p3, p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ʽʽ:I

    if-ge v2, p3, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ˈ(I)I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᵎˊ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊˋ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᵎˊ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static ᵔᵢ(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ᐧˉ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/measurement/ʼˋ;

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/ـˉ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/measurement/ـˉ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/measurement/ـˉ;->ʽʽ:I

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/ـˉ;->ⁱˊ(I)J

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    :goto_1
    iget p0, p1, Lcom/google/android/gms/internal/measurement/ـˉ;->ʽʽ:I

    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/ـˉ;->ⁱˊ(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ـˏ(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget p3, p1, Lcom/google/android/gms/internal/measurement/ـˉ;->ʽʽ:I

    if-ge v2, p3, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/ـˉ;->ⁱˊ(I)J

    move-result-wide v0

    invoke-virtual {p2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˆﾞ(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ـˏ(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˆﾞ(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static ᵔﹳ(Ljava/util/List;)I
    .locals 5

    .prologue
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/ـˉ;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/measurement/ـˉ;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/ـˉ;->ⁱˊ(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊʻ(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊʻ(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static ⁱˊ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .prologue
    check-cast p0, Lcom/google/android/gms/internal/measurement/ʼﹶ;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ʼﹶ;->zzc:Lcom/google/android/gms/internal/measurement/ʽᵎ;

    check-cast p1, Lcom/google/android/gms/internal/measurement/ʼﹶ;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ʼﹶ;->zzc:Lcom/google/android/gms/internal/measurement/ʽᵎ;

    sget-object v1, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ʽᵎ;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/ʽᵎ;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/ʽᵎ;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v1, v0, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ﹳٴ:I

    iget v2, p1, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ﹳٴ:I

    add-int/2addr v1, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ⁱˊ:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ⁱˊ:[I

    iget v5, v0, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ﹳٴ:I

    iget v6, p1, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ﹳٴ:I

    invoke-static {v4, v3, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ʽ:[Ljava/lang/Object;

    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ʽ:[Ljava/lang/Object;

    iget v0, v0, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ﹳٴ:I

    iget p1, p1, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ﹳٴ:I

    invoke-static {v5, v3, v4, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/ʽᵎ;

    const/4 p1, 0x1

    invoke-direct {v0, v1, v2, v4, p1}, Lcom/google/android/gms/internal/measurement/ʽᵎ;-><init>(I[I[Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/ʽᵎ;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ˑﹳ:Z

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ﹳٴ:I

    iget v2, p1, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ﹳٴ:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ˑﹳ(I)V

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ⁱˊ:[I

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ⁱˊ:[I

    iget v5, v0, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ﹳٴ:I

    iget v6, p1, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ﹳٴ:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ʽ:[Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ʽ:[Ljava/lang/Object;

    iget v5, v0, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ﹳٴ:I

    iget p1, p1, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ﹳٴ:I

    invoke-static {v2, v3, v4, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, v0, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ﹳٴ:I

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_3
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ʼﹶ;->zzc:Lcom/google/android/gms/internal/measurement/ʽᵎ;

    return-void
.end method

.method public static ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    if-eq p0, p1, :cond_1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    return v0
.end method

.method public static ﹳᐧ(Ljava/util/List;)I
    .locals 5

    .prologue
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/ـˉ;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/measurement/ـˉ;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/ـˉ;->ⁱˊ(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊʻ(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊʻ(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static ﾞʻ(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ᐧˉ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/measurement/ʼˋ;

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ʽʽ:I

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ˈ(I)I

    move-result v0

    add-int v1, v0, v0

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᴵˑ(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    :goto_1
    iget p0, p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ʽʽ:I

    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ˈ(I)I

    move-result p0

    add-int p3, p0, p0

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p3

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget p3, p1, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ʽʽ:I

    if-ge v2, p3, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/ﹳﾞ;->ˈ(I)I

    move-result p3

    add-int v0, p3, p3

    shr-int/lit8 p3, p3, 0x1f

    xor-int/2addr p3, v0

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ٴʼ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v1, v0, v0

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᴵˑ(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int p3, p0, p0

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p3

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int v0, p3, p3

    shr-int/lit8 p3, p3, 0x1f

    xor-int/2addr p3, v0

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ٴʼ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static ﾞᴵ(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ᐧˉ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/measurement/ʼˋ;

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/ـˉ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/measurement/ـˉ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/measurement/ـˉ;->ʽʽ:I

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/ـˉ;->ⁱˊ(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊʻ(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    :goto_1
    iget p0, p1, Lcom/google/android/gms/internal/measurement/ـˉ;->ʽʽ:I

    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/ـˉ;->ⁱˊ(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ʼˈ(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget p3, p1, Lcom/google/android/gms/internal/measurement/ـˉ;->ʽʽ:I

    if-ge v2, p3, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/ـˉ;->ⁱˊ(I)J

    move-result-wide v0

    invoke-virtual {p2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᵔי(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊʻ(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ʼˈ(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᵔי(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method
