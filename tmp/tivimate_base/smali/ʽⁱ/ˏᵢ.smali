.class public final Lʽⁱ/ˏᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˈ:Lʽⁱ/ˏᵢ;


# instance fields
.field public final ʽ:F

.field public final ⁱˊ:I

.field public final ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lʽⁱ/ˏᵢ;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lʽⁱ/ˏᵢ;-><init>(II)V

    sput-object v0, Lʽⁱ/ˏᵢ;->ˈ:Lʽⁱ/ˏᵢ;

    invoke-static {v1}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/4 v0, 0x3

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    return-void
.end method

.method public constructor <init>(FII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lʽⁱ/ˏᵢ;->ﹳٴ:I

    iput p3, p0, Lʽⁱ/ˏᵢ;->ⁱˊ:I

    iput p1, p0, Lʽⁱ/ˏᵢ;->ʽ:F

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, p1, p2}, Lʽⁱ/ˏᵢ;-><init>(FII)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lʽⁱ/ˏᵢ;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lʽⁱ/ˏᵢ;

    iget v1, p0, Lʽⁱ/ˏᵢ;->ﹳٴ:I

    iget v3, p1, Lʽⁱ/ˏᵢ;->ﹳٴ:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lʽⁱ/ˏᵢ;->ⁱˊ:I

    iget v3, p1, Lʽⁱ/ˏᵢ;->ⁱˊ:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lʽⁱ/ˏᵢ;->ʽ:F

    iget p1, p1, Lʽⁱ/ˏᵢ;->ʽ:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    const/16 v0, 0xd9

    iget v1, p0, Lʽⁱ/ˏᵢ;->ﹳٴ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lʽⁱ/ˏᵢ;->ⁱˊ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lʽⁱ/ˏᵢ;->ʽ:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
