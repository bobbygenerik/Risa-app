.class public final Lʾˋ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:I

.field public ʽ:I

.field public ˆʾ:[I

.field public ˈ:[I

.field public ˑﹳ:[F

.field public ٴﹶ:[Z

.field public ᵎﹶ:[I

.field public ᵔᵢ:[Ljava/lang/String;

.field public ⁱˊ:[I

.field public ﹳٴ:[I

.field public ﾞʻ:I

.field public ﾞᴵ:I


# virtual methods
.method public final ʽ(ILjava/lang/String;)V
    .locals 3

    .prologue
    iget v0, p0, Lʾˋ/ᵎﹶ;->ʼˎ:I

    iget-object v1, p0, Lʾˋ/ᵎﹶ;->ᵎﹶ:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lʾˋ/ᵎﹶ;->ᵎﹶ:[I

    iget-object v0, p0, Lʾˋ/ᵎﹶ;->ᵔᵢ:[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lʾˋ/ᵎﹶ;->ᵔᵢ:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lʾˋ/ᵎﹶ;->ᵎﹶ:[I

    iget v1, p0, Lʾˋ/ᵎﹶ;->ʼˎ:I

    aput p1, v0, v1

    iget-object p1, p0, Lʾˋ/ᵎﹶ;->ᵔᵢ:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lʾˋ/ᵎﹶ;->ʼˎ:I

    aput-object p2, p1, v1

    return-void
.end method

.method public final ˈ(IZ)V
    .locals 3

    .prologue
    iget v0, p0, Lʾˋ/ᵎﹶ;->ﾞʻ:I

    iget-object v1, p0, Lʾˋ/ᵎﹶ;->ˆʾ:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lʾˋ/ᵎﹶ;->ˆʾ:[I

    iget-object v0, p0, Lʾˋ/ᵎﹶ;->ٴﹶ:[Z

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Lʾˋ/ᵎﹶ;->ٴﹶ:[Z

    :cond_0
    iget-object v0, p0, Lʾˋ/ᵎﹶ;->ˆʾ:[I

    iget v1, p0, Lʾˋ/ᵎﹶ;->ﾞʻ:I

    aput p1, v0, v1

    iget-object p1, p0, Lʾˋ/ᵎﹶ;->ٴﹶ:[Z

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lʾˋ/ᵎﹶ;->ﾞʻ:I

    aput-boolean p2, p1, v1

    return-void
.end method

.method public final ⁱˊ(II)V
    .locals 3

    .prologue
    iget v0, p0, Lʾˋ/ᵎﹶ;->ʽ:I

    iget-object v1, p0, Lʾˋ/ᵎﹶ;->ﹳٴ:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lʾˋ/ᵎﹶ;->ﹳٴ:[I

    iget-object v0, p0, Lʾˋ/ᵎﹶ;->ⁱˊ:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lʾˋ/ᵎﹶ;->ⁱˊ:[I

    :cond_0
    iget-object v0, p0, Lʾˋ/ᵎﹶ;->ﹳٴ:[I

    iget v1, p0, Lʾˋ/ᵎﹶ;->ʽ:I

    aput p1, v0, v1

    iget-object p1, p0, Lʾˋ/ᵎﹶ;->ⁱˊ:[I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lʾˋ/ᵎﹶ;->ʽ:I

    aput p2, p1, v1

    return-void
.end method

.method public final ﹳٴ(IF)V
    .locals 3

    .prologue
    iget v0, p0, Lʾˋ/ᵎﹶ;->ﾞᴵ:I

    iget-object v1, p0, Lʾˋ/ᵎﹶ;->ˈ:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lʾˋ/ᵎﹶ;->ˈ:[I

    iget-object v0, p0, Lʾˋ/ᵎﹶ;->ˑﹳ:[F

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lʾˋ/ᵎﹶ;->ˑﹳ:[F

    :cond_0
    iget-object v0, p0, Lʾˋ/ᵎﹶ;->ˈ:[I

    iget v1, p0, Lʾˋ/ᵎﹶ;->ﾞᴵ:I

    aput p1, v0, v1

    iget-object p1, p0, Lʾˋ/ᵎﹶ;->ˑﹳ:[F

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lʾˋ/ᵎﹶ;->ﾞᴵ:I

    aput p2, p1, v1

    return-void
.end method
