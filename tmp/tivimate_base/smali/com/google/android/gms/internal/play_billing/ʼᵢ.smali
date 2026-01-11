.class public abstract Lcom/google/android/gms/internal/play_billing/ʼᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Lcom/google/android/gms/internal/play_billing/ʾˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ⁱᴵ;->ʽ:Lcom/google/android/gms/internal/play_billing/ⁱᴵ;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ʾˊ;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/ʾˊ;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ʼᵢ;->ﹳٴ:Lcom/google/android/gms/internal/play_billing/ʾˊ;

    return-void
.end method

.method public static ʻٴ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/ᵎʿ;Z)V
    .locals 2

    .prologue
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/ᵎʿ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/ٴﹳ;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈⁱ(II)V

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
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

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

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˑٴ(I)V

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

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈʿ(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static ʼʼ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/ᵎʿ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/ᵎʿ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/ٴﹳ;

    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈⁱ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ʽʽ:I

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ⁱˊ(I)I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

    :goto_1
    iget p0, p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ʽʽ:I

    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ⁱˊ(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˑٴ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget p3, p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ʽʽ:I

    if-ge v2, p3, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ⁱˊ(I)I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈʿ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈⁱ(II)V

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
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˑٴ(I)V

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

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈʿ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static ʼˎ(Ljava/util/List;)I
    .locals 5

    .prologue
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/play_billing/ˎᐧ;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/play_billing/ˎᐧ;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ⁱˊ(I)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᵔי(J)I

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

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᵔי(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static ʼᐧ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .prologue
    check-cast p0, Lcom/google/android/gms/internal/play_billing/ʼـ;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ʼـ;->zzc:Lcom/google/android/gms/internal/play_billing/ﾞˋ;

    check-cast p1, Lcom/google/android/gms/internal/play_billing/ʼـ;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/ʼـ;->zzc:Lcom/google/android/gms/internal/play_billing/ﾞˋ;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ﾞᴵ:Lcom/google/android/gms/internal/play_billing/ﾞˋ;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v1, v0, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ﹳٴ:I

    iget v2, p1, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ﹳٴ:I

    add-int/2addr v1, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ⁱˊ:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iget-object v4, p1, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ⁱˊ:[I

    iget v5, v0, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ﹳٴ:I

    iget v6, p1, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ﹳٴ:I

    invoke-static {v4, v3, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v0, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ʽ:[Ljava/lang/Object;

    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ʽ:[Ljava/lang/Object;

    iget v0, v0, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ﹳٴ:I

    iget p1, p1, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ﹳٴ:I

    invoke-static {v5, v3, v4, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ﾞˋ;

    const/4 p1, 0x1

    invoke-direct {v0, v1, v2, v4, p1}, Lcom/google/android/gms/internal/play_billing/ﾞˋ;-><init>(I[I[Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, v0, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ˑﹳ:Z

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ﹳٴ:I

    iget v2, p1, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ﹳٴ:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ˑﹳ(I)V

    iget-object v2, p1, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ⁱˊ:[I

    iget-object v4, v0, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ⁱˊ:[I

    iget v5, v0, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ﹳٴ:I

    iget v6, p1, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ﹳٴ:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p1, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ʽ:[Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ʽ:[Ljava/lang/Object;

    iget v5, v0, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ﹳٴ:I

    iget p1, p1, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ﹳٴ:I

    invoke-static {v2, v3, v4, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, v0, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ﹳٴ:I

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_3
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/ʼـ;->zzc:Lcom/google/android/gms/internal/play_billing/ﾞˋ;

    return-void
.end method

.method public static ʽ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/ᵎʿ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/ᵎʿ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/ٴﹳ;

    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈⁱ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ʽʽ:I

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ⁱˊ(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᵎˊ(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

    :goto_1
    iget p0, p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ʽʽ:I

    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ⁱˊ(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget p3, p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ʽʽ:I

    if-ge v2, p3, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ⁱˊ(I)I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᴵˑ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈⁱ(II)V

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

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᵎˊ(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

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

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᴵˑ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static ʽﹳ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/ᵎʿ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/ᵎʿ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/ٴﹳ;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈⁱ(II)V

    move p0, v0

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˊˋ(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, p0, v1, v2}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˋᵔ(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static ʾᵎ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/ᵎʿ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/ᵎʿ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/ٴﹳ;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈⁱ(II)V

    move p0, v0

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᵔי(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ʿᵢ(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, p0, v1, v2}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ʿ(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static ˆʾ(Ljava/util/List;)I
    .locals 5

    .prologue
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᵔי(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static ˈ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/ᵎʿ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/ᵎʿ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/ٴﹳ;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈⁱ(II)V

    move p0, v0

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᵔי(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ʿᵢ(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, p0, v1, v2}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ʿ(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static ˉʿ(Ljava/util/List;)I
    .locals 4

    .prologue
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/play_billing/ˎᐧ;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/play_billing/ˎᐧ;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ⁱˊ(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᵎˊ(I)I

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

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᵎˊ(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static ˉˆ(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/ʾˊ;)Ljava/lang/Object;
    .locals 2

    .prologue
    if-nez p3, :cond_0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/google/android/gms/internal/play_billing/ʼـ;

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/ʼـ;->zzc:Lcom/google/android/gms/internal/play_billing/ﾞˋ;

    sget-object p4, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ﾞᴵ:Lcom/google/android/gms/internal/play_billing/ﾞˋ;

    if-ne p3, p4, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ⁱˊ()Lcom/google/android/gms/internal/play_billing/ﾞˋ;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/play_billing/ʼـ;->zzc:Lcom/google/android/gms/internal/play_billing/ﾞˋ;

    :cond_0
    int-to-long v0, p2

    shl-int/lit8 p0, p1, 0x3

    move-object p1, p3

    check-cast p1, Lcom/google/android/gms/internal/play_billing/ﾞˋ;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/play_billing/ﾞˋ;->ʽ(ILjava/lang/Object;)V

    return-object p3
.end method

.method public static ˏי(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/ᵎʿ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/ᵎʿ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/ٴﹳ;

    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈⁱ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ʽʽ:I

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ⁱˊ(I)I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

    :goto_1
    iget p0, p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ʽʽ:I

    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ⁱˊ(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˑٴ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget p3, p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ʽʽ:I

    if-ge v2, p3, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ⁱˊ(I)I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈʿ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈⁱ(II)V

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
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˑٴ(I)V

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

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈʿ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static ˑﹳ(Ljava/lang/Object;Ljava/lang/Object;)Z
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

.method public static יـ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/ᵎʿ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/ᵎʿ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/ٴﹳ;

    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈⁱ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ʽʽ:I

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ⁱˊ(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᵔי(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

    :goto_1
    iget p0, p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ʽʽ:I

    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ⁱˊ(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ـˏ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget p3, p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ʽʽ:I

    if-ge v2, p3, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ⁱˊ(I)I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ʼˈ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈⁱ(II)V

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

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᵔי(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ـˏ(I)V

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

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ʼˈ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static ـˆ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/ᵎʿ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/ᵎʿ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/ٴﹳ;

    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈⁱ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ʽʽ:I

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ⁱˊ(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᵔי(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

    :goto_1
    iget p0, p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ʽʽ:I

    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ⁱˊ(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ـˏ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget p3, p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ʽʽ:I

    if-ge v2, p3, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ⁱˊ(I)I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ʼˈ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈⁱ(II)V

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

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᵔי(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ـˏ(I)V

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

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ʼˈ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static ٴﹶ(Ljava/util/List;)I
    .locals 5

    .prologue
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/play_billing/ˎᐧ;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/play_billing/ˎᐧ;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ⁱˊ(I)I

    move-result v3

    add-int v4, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᵎˊ(I)I

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

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᵎˊ(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static ᵎﹶ(ILjava/util/List;)I
    .locals 0

    .prologue
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᵎˊ(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    mul-int/2addr p0, p1

    return p0
.end method

.method public static ᵔʾ(Ljava/util/List;)I
    .locals 5

    .prologue
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᵔי(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static ᵔᵢ(ILjava/util/List;)I
    .locals 0

    .prologue
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᵎˊ(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    mul-int/2addr p0, p1

    return p0
.end method

.method public static ᵔﹳ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/ᵎʿ;Z)V
    .locals 9

    .prologue
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/ᵎʿ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/ٴﹳ;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈⁱ(II)V

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
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iget p3, p2, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ﾞᴵ:I

    :try_start_0
    iget-object v1, p2, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈ:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v2, p3, 0x1

    :try_start_1
    aput-byte p0, v1, p3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    iput v2, p2, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ﾞᴵ:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move p3, v2

    :goto_2
    move-object p0, v0

    move-object v6, p0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :goto_3
    iget p0, p2, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˑﹳ:I

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzen;

    int-to-long v1, p3

    int-to-long v3, p0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/zzen;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    throw v0

    :cond_1
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    shl-int/lit8 v1, p0, 0x3

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

    iget v1, p2, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ﾞᴵ:I

    :try_start_2
    iget-object v2, p2, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈ:[B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    add-int/lit8 v3, v1, 0x1

    :try_start_3
    aput-byte p3, v2, v1
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    iput v3, p2, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ﾞᴵ:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :catch_2
    move-exception v0

    move v1, v3

    :goto_5
    move-object p0, v0

    move-object v8, p0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :goto_6
    iget p0, p2, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˑﹳ:I

    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzen;

    int-to-long v3, v1

    int-to-long v5, p0

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/play_billing/zzen;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    throw v2

    :cond_2
    return-void
.end method

.method public static ᵢˏ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/ᵎʿ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/ᵎʿ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/ٴﹳ;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈⁱ(II)V

    move p0, v0

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˊˋ(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, p0, v1, v2}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˋᵔ(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static ⁱˊ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/ᵎʿ;Z)V
    .locals 6

    .prologue
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/ᵎʿ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/ٴﹳ;

    const/16 v0, 0x3f

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈⁱ(II)V

    move p0, v1

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v4, v2, v2

    shr-long/2addr v2, v0

    xor-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᵔי(J)I

    move-result v2

    add-int/2addr p3, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v4, v2, v2

    shr-long/2addr v2, v0

    xor-long/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ʿᵢ(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v1, p3, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v4, v2, v2

    shr-long/2addr v2, v0

    xor-long/2addr v2, v4

    invoke-virtual {p2, p0, v2, v3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ʿ(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static ﹳٴ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/ᵎʿ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/ᵎʿ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/ٴﹳ;

    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈⁱ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ʽʽ:I

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ⁱˊ(I)I

    move-result v0

    add-int v1, v0, v0

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᵎˊ(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

    :goto_1
    iget p0, p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ʽʽ:I

    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ⁱˊ(I)I

    move-result p0

    add-int p3, p0, p0

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p3

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget p3, p1, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ʽʽ:I

    if-ge v2, p3, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ⁱˊ(I)I

    move-result p3

    add-int v0, p3, p3

    shr-int/lit8 p3, p3, 0x1f

    xor-int/2addr p3, v0

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᴵˑ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈⁱ(II)V

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

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᵎˊ(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

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

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

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

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᴵˑ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static ﹳᐧ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/ᵎʿ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/ᵎʿ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/ٴﹳ;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈⁱ(II)V

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
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

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

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˊˋ(J)V

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

    invoke-virtual {p2, p0, v1, v2}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˋᵔ(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static ﾞʻ(Ljava/util/List;)I
    .locals 8

    .prologue
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long v5, v3, v3

    const/16 v7, 0x3f

    shr-long/2addr v3, v7

    xor-long/2addr v3, v5

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᵔי(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static ﾞᴵ(Ljava/util/List;)I
    .locals 5

    .prologue
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/play_billing/ˎᐧ;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/play_billing/ˎᐧ;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/ˎᐧ;->ⁱˊ(I)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᵔי(J)I

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

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ᵔי(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method
