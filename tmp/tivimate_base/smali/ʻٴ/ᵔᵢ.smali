.class public final Lʻٴ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public ʽʽ:I

.field public ʾˋ:Z

.field public ˈٴ:I

.field public final ˉٴ:[F

.field public ˊʻ:Z

.field public ٴʼ:I

.field public final ٴᵢ:[F

.field public ᴵˊ:I

.field public ᴵᵔ:F

.field public ᵎˊ:I

.field public ᵎⁱ:[Lʻٴ/ⁱˊ;

.field public ᵔי:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lʻٴ/ᵔᵢ;->ᴵˊ:I

    iput v0, p0, Lʻٴ/ᵔᵢ;->ʽʽ:I

    const/4 v0, 0x0

    iput v0, p0, Lʻٴ/ᵔᵢ;->ˈٴ:I

    iput-boolean v0, p0, Lʻٴ/ᵔᵢ;->ˊʻ:Z

    const/16 v1, 0x9

    new-array v2, v1, [F

    iput-object v2, p0, Lʻٴ/ᵔᵢ;->ٴᵢ:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lʻٴ/ᵔᵢ;->ˉٴ:[F

    const/16 v1, 0x10

    new-array v1, v1, [Lʻٴ/ⁱˊ;

    iput-object v1, p0, Lʻٴ/ᵔᵢ;->ᵎⁱ:[Lʻٴ/ⁱˊ;

    iput v0, p0, Lʻٴ/ᵔᵢ;->ٴʼ:I

    iput v0, p0, Lʻٴ/ᵔᵢ;->ᵎˊ:I

    iput p1, p0, Lʻٴ/ᵔᵢ;->ᵔי:I

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lʻٴ/ᵔᵢ;

    iget v0, p0, Lʻٴ/ᵔᵢ;->ᴵˊ:I

    iget p1, p1, Lʻٴ/ᵔᵢ;->ᴵˊ:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lʻٴ/ᵔᵢ;->ᴵˊ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʽ()V
    .locals 6

    .prologue
    const/4 v0, 0x5

    iput v0, p0, Lʻٴ/ᵔᵢ;->ᵔי:I

    const/4 v0, 0x0

    iput v0, p0, Lʻٴ/ᵔᵢ;->ˈٴ:I

    const/4 v1, -0x1

    iput v1, p0, Lʻٴ/ᵔᵢ;->ᴵˊ:I

    iput v1, p0, Lʻٴ/ᵔᵢ;->ʽʽ:I

    const/4 v1, 0x0

    iput v1, p0, Lʻٴ/ᵔᵢ;->ᴵᵔ:F

    iput-boolean v0, p0, Lʻٴ/ᵔᵢ;->ˊʻ:Z

    iget v2, p0, Lʻٴ/ᵔᵢ;->ٴʼ:I

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lʻٴ/ᵔᵢ;->ᵎⁱ:[Lʻٴ/ⁱˊ;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lʻٴ/ᵔᵢ;->ٴʼ:I

    iput v0, p0, Lʻٴ/ᵔᵢ;->ᵎˊ:I

    iput-boolean v0, p0, Lʻٴ/ᵔᵢ;->ʾˋ:Z

    iget-object v0, p0, Lʻٴ/ᵔᵢ;->ˉٴ:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public final ˈ(Lʻٴ/ʽ;F)V
    .locals 3

    .prologue
    iput p2, p0, Lʻٴ/ᵔᵢ;->ᴵᵔ:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Lʻٴ/ᵔᵢ;->ˊʻ:Z

    iget p2, p0, Lʻٴ/ᵔᵢ;->ٴʼ:I

    const/4 v0, -0x1

    iput v0, p0, Lʻٴ/ᵔᵢ;->ʽʽ:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lʻٴ/ᵔᵢ;->ᵎⁱ:[Lʻٴ/ⁱˊ;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p0, v0}, Lʻٴ/ⁱˊ;->ᵔᵢ(Lʻٴ/ʽ;Lʻٴ/ᵔᵢ;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lʻٴ/ᵔᵢ;->ٴʼ:I

    return-void
.end method

.method public final ˑﹳ(Lʻٴ/ʽ;Lʻٴ/ⁱˊ;)V
    .locals 4

    .prologue
    iget v0, p0, Lʻٴ/ᵔᵢ;->ٴʼ:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lʻٴ/ᵔᵢ;->ᵎⁱ:[Lʻٴ/ⁱˊ;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, v1}, Lʻٴ/ⁱˊ;->ʼˎ(Lʻٴ/ʽ;Lʻٴ/ⁱˊ;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lʻٴ/ᵔᵢ;->ٴʼ:I

    return-void
.end method

.method public final ⁱˊ(Lʻٴ/ⁱˊ;)V
    .locals 4

    .prologue
    iget v0, p0, Lʻٴ/ᵔᵢ;->ٴʼ:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lʻٴ/ᵔᵢ;->ᵎⁱ:[Lʻٴ/ⁱˊ;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    :goto_1
    add-int/lit8 p1, v0, -0x1

    if-ge v1, p1, :cond_0

    iget-object p1, p0, Lʻٴ/ᵔᵢ;->ᵎⁱ:[Lʻٴ/ⁱˊ;

    add-int/lit8 v2, v1, 0x1

    aget-object v3, p1, v2

    aput-object v3, p1, v1

    move v1, v2

    goto :goto_1

    :cond_0
    iget p1, p0, Lʻٴ/ᵔᵢ;->ٴʼ:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lʻٴ/ᵔᵢ;->ٴʼ:I

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final ﹳٴ(Lʻٴ/ⁱˊ;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lʻٴ/ᵔᵢ;->ٴʼ:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lʻٴ/ᵔᵢ;->ᵎⁱ:[Lʻٴ/ⁱˊ;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lʻٴ/ᵔᵢ;->ᵎⁱ:[Lʻٴ/ⁱˊ;

    array-length v2, v0

    if-lt v1, v2, :cond_2

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lʻٴ/ⁱˊ;

    iput-object v0, p0, Lʻٴ/ᵔᵢ;->ᵎⁱ:[Lʻٴ/ⁱˊ;

    :cond_2
    iget-object v0, p0, Lʻٴ/ᵔᵢ;->ᵎⁱ:[Lʻٴ/ⁱˊ;

    iget v1, p0, Lʻٴ/ᵔᵢ;->ٴʼ:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lʻٴ/ᵔᵢ;->ٴʼ:I

    return-void
.end method
