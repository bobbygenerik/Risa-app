.class public final Lcom/google/android/gms/internal/measurement/ᴵʻ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ˎˎ;


# instance fields
.field public final ⁱˊ:Lcom/google/android/gms/internal/measurement/ʿʻ;

.field public final ﹳٴ:Lcom/google/android/gms/internal/measurement/ﾞי;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ʿʻ;Lcom/google/android/gms/internal/measurement/ﾞי;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵔᴵ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ʿʻ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ᴵʻ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ʿʻ;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ᴵʻ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ﾞי;

    return-void
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/ᐧˉ;)V
    .locals 0

    invoke-static {p1}, Lˉˆ/ٴᴵ;->ˈ(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1
.end method

.method public final ʽ(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1}, Lˉˆ/ٴᴵ;->ˈ(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1
.end method

.method public final ˆʾ(Lcom/google/android/gms/internal/measurement/ʼﹶ;Lcom/google/android/gms/internal/measurement/ʼﹶ;)Z
    .locals 0

    .prologue
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ʼﹶ;->zzc:Lcom/google/android/gms/internal/measurement/ʽᵎ;

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/ʼﹶ;->zzc:Lcom/google/android/gms/internal/measurement/ʽᵎ;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/ʽᵎ;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final ˈ(Ljava/lang/Object;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᴵʻ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ʿʻ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/ʼﹶ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ʼﹶ;->zzc:Lcom/google/android/gms/internal/measurement/ʽᵎ;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ˑﹳ:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ˑﹳ:Z

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵔᴵ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ʿʻ;

    invoke-static {p1}, Lˉˆ/ٴᴵ;->ˈ(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1
.end method

.method public final ˑﹳ(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/ˈʻ;)V
    .locals 0

    .prologue
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/measurement/ʼﹶ;

    iget-object p3, p2, Lcom/google/android/gms/internal/measurement/ʼﹶ;->zzc:Lcom/google/android/gms/internal/measurement/ʽᵎ;

    sget-object p4, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ʽᵎ;

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ﹳٴ()Lcom/google/android/gms/internal/measurement/ʽᵎ;

    move-result-object p3

    iput-object p3, p2, Lcom/google/android/gms/internal/measurement/ʼﹶ;->zzc:Lcom/google/android/gms/internal/measurement/ʽᵎ;

    :goto_0
    invoke-static {p1}, Lˉˆ/ٴᴵ;->ˈ(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1
.end method

.method public final ᵎﹶ(Lcom/google/android/gms/internal/measurement/ﾞי;)I
    .locals 6

    .prologue
    check-cast p1, Lcom/google/android/gms/internal/measurement/ʼﹶ;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ʼﹶ;->zzc:Lcom/google/android/gms/internal/measurement/ʽᵎ;

    iget v0, p1, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ˈ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p1, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ﹳٴ:I

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ⁱˊ:[I

    aget v2, v2, v0

    ushr-int/lit8 v2, v2, 0x3

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ʽ:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/measurement/ˎˏ;

    const/16 v4, 0x8

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᴵˑ(I)I

    move-result v4

    add-int/2addr v4, v4

    const/16 v5, 0x10

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᴵˑ(I)I

    move-result v5

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᴵˑ(I)I

    move-result v2

    add-int/2addr v2, v5

    const/16 v5, 0x18

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᴵˑ(I)I

    move-result v5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ˎˏ;->ˈ()I

    move-result v3

    invoke-static {v3, v3, v5}, Landroid/support/v4/media/session/ﹳٴ;->ᵎﹶ(III)I

    move-result v3

    invoke-static {v4, v2, v3, v1}, Lʼﾞ/ˊˋ;->ﾞʻ(IIII)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p1, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ˈ:I

    return v1

    :cond_1
    return v0
.end method

.method public final ᵔᵢ(Lcom/google/android/gms/internal/measurement/ʼﹶ;)I
    .locals 0

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ʼﹶ;->zzc:Lcom/google/android/gms/internal/measurement/ʽᵎ;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ʽᵎ;->hashCode()I

    move-result p1

    return p1
.end method

.method public final ⁱˊ()Lcom/google/android/gms/internal/measurement/ʼﹶ;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᴵʻ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ﾞי;

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/ʼﹶ;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ʼﹶ;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉˆ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ʼﹶ;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/measurement/ʼﹶ;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉˆ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ˑﹳ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v0

    return-object v0
.end method

.method public final ﾞᴵ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/ˑᵢ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
