.class public final Lʽⁱ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ᵔᵢ:Lʽⁱ/ʼˎ;


# instance fields
.field public final ʽ:I

.field public final ˈ:[B

.field public final ˑﹳ:I

.field public ᵎﹶ:I

.field public final ⁱˊ:I

.field public final ﹳٴ:I

.field public final ﾞᴵ:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lʽⁱ/ʼˎ;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, -0x1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lʽⁱ/ʼˎ;-><init>(III[BII)V

    sput-object v0, Lʽⁱ/ʼˎ;->ᵔᵢ:Lʽⁱ/ʼˎ;

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {v2, v3, v4, v0, v1}, Lʼﾞ/ˊˋ;->ـˆ(IIIII)V

    const/4 v0, 0x5

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    return-void
.end method

.method public constructor <init>(III[BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lʽⁱ/ʼˎ;->ﹳٴ:I

    iput p2, p0, Lʽⁱ/ʼˎ;->ⁱˊ:I

    iput p3, p0, Lʽⁱ/ʼˎ;->ʽ:I

    iput-object p4, p0, Lʽⁱ/ʼˎ;->ˈ:[B

    iput p5, p0, Lʽⁱ/ʼˎ;->ˑﹳ:I

    iput p6, p0, Lʽⁱ/ʼˎ;->ﾞᴵ:I

    return-void
.end method

.method public static ʽ(I)Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, -0x1

    if-eq p0, v0, :cond_6

    const/16 v0, 0xa

    if-eq p0, v0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const-string v0, "Undefined color transfer "

    invoke-static {p0, v0}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "HLG"

    return-object p0

    :cond_1
    const-string p0, "ST2084 PQ"

    return-object p0

    :cond_2
    const-string p0, "SDR SMPTE 170M"

    return-object p0

    :cond_3
    const-string p0, "sRGB"

    return-object p0

    :cond_4
    const-string p0, "Linear"

    return-object p0

    :cond_5
    const-string p0, "Gamma 2.2"

    return-object p0

    :cond_6
    const-string p0, "Unset color transfer"

    return-object p0
.end method

.method public static ˑﹳ(Lʽⁱ/ʼˎ;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lʽⁱ/ʼˎ;->ﹳٴ:I

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v0, :cond_1

    if-ne v1, v2, :cond_6

    :cond_1
    iget v1, p0, Lʽⁱ/ʼˎ;->ⁱˊ:I

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_6

    :cond_2
    iget v1, p0, Lʽⁱ/ʼˎ;->ʽ:I

    if-eq v1, v3, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    :cond_3
    iget-object v1, p0, Lʽⁱ/ʼˎ;->ˈ:[B

    if-nez v1, :cond_6

    iget v1, p0, Lʽⁱ/ʼˎ;->ﾞᴵ:I

    const/16 v2, 0x8

    if-eq v1, v3, :cond_4

    if-ne v1, v2, :cond_6

    :cond_4
    iget p0, p0, Lʽⁱ/ʼˎ;->ˑﹳ:I

    if-eq p0, v3, :cond_5

    if-ne p0, v2, :cond_6

    :cond_5
    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static ᵎﹶ(I)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10

    const/4 v1, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    const/4 v2, 0x7

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_4

    if-eq p0, v2, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_0
    return v2

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    const/16 p0, 0xa

    return p0

    :cond_4
    const/4 p0, 0x3

    return p0
.end method

.method public static ⁱˊ(I)Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string v0, "Undefined color space "

    invoke-static {p0, v0}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "BT601"

    return-object p0

    :cond_1
    const-string p0, "BT709"

    return-object p0

    :cond_2
    const-string p0, "BT2020"

    return-object p0

    :cond_3
    const-string p0, "Unset color space"

    return-object p0
.end method

.method public static ﹳٴ(I)Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string v0, "Undefined color range "

    invoke-static {p0, v0}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Limited range"

    return-object p0

    :cond_1
    const-string p0, "Full range"

    return-object p0

    :cond_2
    const-string p0, "Unset color range"

    return-object p0
.end method

.method public static ﾞᴵ(I)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    const/4 v1, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    return v1

    :cond_2
    return v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lʽⁱ/ʼˎ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lʽⁱ/ʼˎ;

    iget v2, p0, Lʽⁱ/ʼˎ;->ﹳٴ:I

    iget v3, p1, Lʽⁱ/ʼˎ;->ﹳٴ:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lʽⁱ/ʼˎ;->ⁱˊ:I

    iget v3, p1, Lʽⁱ/ʼˎ;->ⁱˊ:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lʽⁱ/ʼˎ;->ʽ:I

    iget v3, p1, Lʽⁱ/ʼˎ;->ʽ:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lʽⁱ/ʼˎ;->ˈ:[B

    iget-object v3, p1, Lʽⁱ/ʼˎ;->ˈ:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lʽⁱ/ʼˎ;->ˑﹳ:I

    iget v3, p1, Lʽⁱ/ʼˎ;->ˑﹳ:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lʽⁱ/ʼˎ;->ﾞᴵ:I

    iget p1, p1, Lʽⁱ/ʼˎ;->ﾞᴵ:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    iget v0, p0, Lʽⁱ/ʼˎ;->ᵎﹶ:I

    if-nez v0, :cond_0

    const/16 v0, 0x20f

    iget v1, p0, Lʽⁱ/ʼˎ;->ﹳٴ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lʽⁱ/ʼˎ;->ⁱˊ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lʽⁱ/ʼˎ;->ʽ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lʽⁱ/ʼˎ;->ˈ:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lʽⁱ/ʼˎ;->ˑﹳ:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lʽⁱ/ʼˎ;->ﾞᴵ:I

    add-int/2addr v1, v0

    iput v1, p0, Lʽⁱ/ʼˎ;->ᵎﹶ:I

    :cond_0
    iget v0, p0, Lʽⁱ/ʼˎ;->ᵎﹶ:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColorInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lʽⁱ/ʼˎ;->ﹳٴ:I

    invoke-static {v1}, Lʽⁱ/ʼˎ;->ⁱˊ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lʽⁱ/ʼˎ;->ⁱˊ:I

    invoke-static {v2}, Lʽⁱ/ʼˎ;->ﹳٴ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lʽⁱ/ʼˎ;->ʽ:I

    invoke-static {v2}, Lʽⁱ/ʼˎ;->ʽ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lʽⁱ/ʼˎ;->ˈ:[B

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "NA"

    const/4 v3, -0x1

    iget v4, p0, Lʽⁱ/ʼˎ;->ˑﹳ:I

    if-eq v4, v3, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "bit Luma"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lʽⁱ/ʼˎ;->ﾞᴵ:I

    if-eq v1, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "bit Chroma"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v1, ")"

    invoke-static {v0, v2, v1}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˈ()Z
    .locals 2

    .prologue
    iget v0, p0, Lʽⁱ/ʼˎ;->ﹳٴ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lʽⁱ/ʼˎ;->ⁱˊ:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lʽⁱ/ʼˎ;->ʽ:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
