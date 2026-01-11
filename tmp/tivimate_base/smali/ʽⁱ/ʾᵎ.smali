.class public final Lʽⁱ/ʾᵎ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:J

.field public final ˈ:F

.field public final ˑﹳ:F

.field public final ⁱˊ:J

.field public final ﹳٴ:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lʽⁱ/ـˆ;

    invoke-direct {v0}, Lʽⁱ/ـˆ;-><init>()V

    invoke-virtual {v0}, Lʽⁱ/ـˆ;->ﹳٴ()Lʽⁱ/ʾᵎ;

    const/4 v0, 0x0

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/4 v0, 0x2

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/4 v0, 0x3

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/4 v0, 0x4

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    return-void
.end method

.method public constructor <init>(Lʽⁱ/ـˆ;)V
    .locals 7

    iget-wide v0, p1, Lʽⁱ/ـˆ;->ﹳٴ:J

    iget-wide v2, p1, Lʽⁱ/ـˆ;->ⁱˊ:J

    iget-wide v4, p1, Lʽⁱ/ـˆ;->ʽ:J

    iget v6, p1, Lʽⁱ/ـˆ;->ˈ:F

    iget p1, p1, Lʽⁱ/ـˆ;->ˑﹳ:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lʽⁱ/ʾᵎ;->ﹳٴ:J

    iput-wide v2, p0, Lʽⁱ/ʾᵎ;->ⁱˊ:J

    iput-wide v4, p0, Lʽⁱ/ʾᵎ;->ʽ:J

    iput v6, p0, Lʽⁱ/ʾᵎ;->ˈ:F

    iput p1, p0, Lʽⁱ/ʾᵎ;->ˑﹳ:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lʽⁱ/ʾᵎ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lʽⁱ/ʾᵎ;

    iget-wide v3, p0, Lʽⁱ/ʾᵎ;->ﹳٴ:J

    iget-wide v5, p1, Lʽⁱ/ʾᵎ;->ﹳٴ:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lʽⁱ/ʾᵎ;->ⁱˊ:J

    iget-wide v5, p1, Lʽⁱ/ʾᵎ;->ⁱˊ:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lʽⁱ/ʾᵎ;->ʽ:J

    iget-wide v5, p1, Lʽⁱ/ʾᵎ;->ʽ:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Lʽⁱ/ʾᵎ;->ˈ:F

    iget v3, p1, Lʽⁱ/ʾᵎ;->ˈ:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget v1, p0, Lʽⁱ/ʾᵎ;->ˑﹳ:F

    iget p1, p1, Lʽⁱ/ʾᵎ;->ˑﹳ:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    iget-wide v0, p0, Lʽⁱ/ʾᵎ;->ﹳٴ:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lʽⁱ/ʾᵎ;->ⁱˊ:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lʽⁱ/ʾᵎ;->ʽ:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lʽⁱ/ʾᵎ;->ˈ:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lʽⁱ/ʾᵎ;->ˑﹳ:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    :cond_1
    add-int/2addr v0, v4

    return v0
.end method

.method public final ﹳٴ()Lʽⁱ/ـˆ;
    .locals 3

    new-instance v0, Lʽⁱ/ـˆ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-wide v1, p0, Lʽⁱ/ʾᵎ;->ﹳٴ:J

    iput-wide v1, v0, Lʽⁱ/ـˆ;->ﹳٴ:J

    iget-wide v1, p0, Lʽⁱ/ʾᵎ;->ⁱˊ:J

    iput-wide v1, v0, Lʽⁱ/ـˆ;->ⁱˊ:J

    iget-wide v1, p0, Lʽⁱ/ʾᵎ;->ʽ:J

    iput-wide v1, v0, Lʽⁱ/ـˆ;->ʽ:J

    iget v1, p0, Lʽⁱ/ʾᵎ;->ˈ:F

    iput v1, v0, Lʽⁱ/ـˆ;->ˈ:F

    iget v1, p0, Lʽⁱ/ʾᵎ;->ˑﹳ:F

    iput v1, v0, Lʽⁱ/ـˆ;->ˑﹳ:F

    return-object v0
.end method
