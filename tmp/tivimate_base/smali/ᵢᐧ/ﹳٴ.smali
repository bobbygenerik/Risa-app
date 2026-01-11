.class public final Lᵢᐧ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʽⁱ/ˊʻ;


# instance fields
.field public final ʽ:Ljava/lang/String;

.field public final ˈ:I

.field public final ˑﹳ:I

.field public final ᵎﹶ:I

.field public final ᵔᵢ:[B

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:I

.field public final ﾞᴵ:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lᵢᐧ/ﹳٴ;->ﹳٴ:I

    iput-object p2, p0, Lᵢᐧ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    iput-object p3, p0, Lᵢᐧ/ﹳٴ;->ʽ:Ljava/lang/String;

    iput p4, p0, Lᵢᐧ/ﹳٴ;->ˈ:I

    iput p5, p0, Lᵢᐧ/ﹳٴ;->ˑﹳ:I

    iput p6, p0, Lᵢᐧ/ﹳٴ;->ﾞᴵ:I

    iput p7, p0, Lᵢᐧ/ﹳٴ;->ᵎﹶ:I

    iput-object p8, p0, Lᵢᐧ/ﹳٴ;->ᵔᵢ:[B

    return-void
.end method

.method public static ˈ(Lᐧˎ/ﹳᐧ;)Lᵢᐧ/ﹳٴ;
    .locals 10

    invoke-virtual {p0}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v1

    invoke-virtual {p0}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v2}, Lᐧˎ/ﹳᐧ;->ـˆ(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v3}, Lᐧˎ/ﹳᐧ;->ـˆ(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v4

    invoke-virtual {p0}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v5

    invoke-virtual {p0}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v6

    invoke-virtual {p0}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v7

    invoke-virtual {p0}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v0

    new-array v8, v0, [B

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9, v0}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    new-instance v0, Lᵢᐧ/ﹳٴ;

    invoke-direct/range {v0 .. v8}, Lᵢᐧ/ﹳٴ;-><init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V

    return-object v0
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

    const-class v2, Lᵢᐧ/ﹳٴ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lᵢᐧ/ﹳٴ;

    iget v2, p0, Lᵢᐧ/ﹳٴ;->ﹳٴ:I

    iget v3, p1, Lᵢᐧ/ﹳٴ;->ﹳٴ:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lᵢᐧ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    iget-object v3, p1, Lᵢᐧ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lᵢᐧ/ﹳٴ;->ʽ:Ljava/lang/String;

    iget-object v3, p1, Lᵢᐧ/ﹳٴ;->ʽ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lᵢᐧ/ﹳٴ;->ˈ:I

    iget v3, p1, Lᵢᐧ/ﹳٴ;->ˈ:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lᵢᐧ/ﹳٴ;->ˑﹳ:I

    iget v3, p1, Lᵢᐧ/ﹳٴ;->ˑﹳ:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lᵢᐧ/ﹳٴ;->ﾞᴵ:I

    iget v3, p1, Lᵢᐧ/ﹳٴ;->ﾞᴵ:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lᵢᐧ/ﹳٴ;->ᵎﹶ:I

    iget v3, p1, Lᵢᐧ/ﹳٴ;->ᵎﹶ:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lᵢᐧ/ﹳٴ;->ᵔᵢ:[B

    iget-object p1, p1, Lᵢᐧ/ﹳٴ;->ᵔᵢ:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x20f

    iget v1, p0, Lᵢᐧ/ﹳٴ;->ﹳٴ:I

    add-int/2addr v0, v1

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lᵢᐧ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˉʿ(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lᵢᐧ/ﹳٴ;->ʽ:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˉʿ(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lᵢᐧ/ﹳٴ;->ˈ:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lᵢᐧ/ﹳٴ;->ˑﹳ:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lᵢᐧ/ﹳٴ;->ﾞᴵ:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lᵢᐧ/ﹳٴ;->ᵎﹶ:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lᵢᐧ/ﹳٴ;->ᵔᵢ:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Picture: mimeType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lᵢᐧ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᵢᐧ/ﹳٴ;->ʽ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic ʽ()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic ⁱˊ()Lʽⁱ/ﹳᐧ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final ﹳٴ(Lʽⁱ/ˈٴ;)V
    .locals 2

    iget-object v0, p0, Lᵢᐧ/ﹳٴ;->ᵔᵢ:[B

    iget v1, p0, Lᵢᐧ/ﹳٴ;->ﹳٴ:I

    invoke-virtual {p1, v1, v0}, Lʽⁱ/ˈٴ;->ﹳٴ(I[B)V

    return-void
.end method
