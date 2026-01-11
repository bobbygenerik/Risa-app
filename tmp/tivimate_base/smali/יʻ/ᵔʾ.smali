.class public final Lיʻ/ᵔʾ;
.super Lיʻ/ʽ;
.source "SourceFile"


# instance fields
.field public final ʽ:I

.field public final ˈ:Lיʻ/ˆʾ;

.field public final ⁱˊ:I

.field public final ﹳٴ:I


# direct methods
.method public constructor <init>(IIILיʻ/ˆʾ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lיʻ/ᵔʾ;->ﹳٴ:I

    iput p2, p0, Lיʻ/ᵔʾ;->ⁱˊ:I

    iput p3, p0, Lיʻ/ᵔʾ;->ʽ:I

    iput-object p4, p0, Lיʻ/ᵔʾ;->ˈ:Lיʻ/ˆʾ;

    return-void
.end method

.method public static ⁱˊ()Lˏˆ/ﹳٴ;
    .locals 3

    new-instance v0, Lˏˆ/ﹳٴ;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lˏˆ/ﹳٴ;-><init>(IZ)V

    const/4 v1, 0x0

    iput-object v1, v0, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    iput-object v1, v0, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    iput-object v1, v0, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    sget-object v1, Lיʻ/ˆʾ;->ˉʿ:Lיʻ/ˆʾ;

    iput-object v1, v0, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    instance-of v0, p1, Lיʻ/ᵔʾ;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lיʻ/ᵔʾ;

    iget v0, p1, Lיʻ/ᵔʾ;->ﹳٴ:I

    iget v2, p0, Lיʻ/ᵔʾ;->ﹳٴ:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lיʻ/ᵔʾ;->ⁱˊ:I

    iget v2, p0, Lיʻ/ᵔʾ;->ⁱˊ:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lיʻ/ᵔʾ;->ʽ:I

    iget v2, p0, Lיʻ/ᵔʾ;->ʽ:I

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lיʻ/ᵔʾ;->ˈ:Lיʻ/ˆʾ;

    iget-object v0, p0, Lיʻ/ᵔʾ;->ˈ:Lיʻ/ˆʾ;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 6

    iget v0, p0, Lיʻ/ᵔʾ;->ﹳٴ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lיʻ/ᵔʾ;->ⁱˊ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lיʻ/ᵔʾ;->ʽ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-class v4, Lיʻ/ᵔʾ;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v2, v3, v0

    const/4 v0, 0x4

    iget-object v1, p0, Lיʻ/ᵔʾ;->ˈ:Lיʻ/ˆʾ;

    aput-object v1, v3, v0

    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AesEax Parameters (variant: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lיʻ/ᵔʾ;->ˈ:Lיʻ/ˆʾ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lיʻ/ᵔʾ;->ⁱˊ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte IV, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lיʻ/ᵔʾ;->ʽ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte tag, and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lיʻ/ᵔʾ;->ﹳٴ:I

    const-string v2, "-byte key)"

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˏי(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lיʻ/ᵔʾ;->ˈ:Lיʻ/ˆʾ;

    sget-object v1, Lיʻ/ˆʾ;->ˉʿ:Lיʻ/ˆʾ;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
