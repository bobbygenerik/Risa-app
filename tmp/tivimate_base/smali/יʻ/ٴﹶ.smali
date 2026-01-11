.class public final Lיʻ/ٴﹶ;
.super Lיʻ/ʽ;
.source "SourceFile"


# instance fields
.field public final ʽ:I

.field public final ˈ:I

.field public final ˑﹳ:Lיʻ/ˆʾ;

.field public final ⁱˊ:I

.field public final ﹳٴ:I

.field public final ﾞᴵ:Lיʻ/ˆʾ;


# direct methods
.method public constructor <init>(IIIILיʻ/ˆʾ;Lיʻ/ˆʾ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lיʻ/ٴﹶ;->ﹳٴ:I

    iput p2, p0, Lיʻ/ٴﹶ;->ⁱˊ:I

    iput p3, p0, Lיʻ/ٴﹶ;->ʽ:I

    iput p4, p0, Lיʻ/ٴﹶ;->ˈ:I

    iput-object p5, p0, Lיʻ/ٴﹶ;->ˑﹳ:Lיʻ/ˆʾ;

    iput-object p6, p0, Lיʻ/ٴﹶ;->ﾞᴵ:Lיʻ/ˆʾ;

    return-void
.end method

.method public static ⁱˊ()Lﹳʽ/ᴵᵔ;
    .locals 2

    new-instance v0, Lﹳʽ/ᴵᵔ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    iput-object v1, v0, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    iput-object v1, v0, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    iput-object v1, v0, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    iput-object v1, v0, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    sget-object v1, Lיʻ/ˆʾ;->ˆʾ:Lיʻ/ˆʾ;

    iput-object v1, v0, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    instance-of v0, p1, Lיʻ/ٴﹶ;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lיʻ/ٴﹶ;

    iget v0, p1, Lיʻ/ٴﹶ;->ﹳٴ:I

    iget v2, p0, Lיʻ/ٴﹶ;->ﹳٴ:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lיʻ/ٴﹶ;->ⁱˊ:I

    iget v2, p0, Lיʻ/ٴﹶ;->ⁱˊ:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lיʻ/ٴﹶ;->ʽ:I

    iget v2, p0, Lיʻ/ٴﹶ;->ʽ:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lיʻ/ٴﹶ;->ˈ:I

    iget v2, p0, Lיʻ/ٴﹶ;->ˈ:I

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lיʻ/ٴﹶ;->ˑﹳ:Lיʻ/ˆʾ;

    iget-object v2, p0, Lיʻ/ٴﹶ;->ˑﹳ:Lיʻ/ˆʾ;

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lיʻ/ٴﹶ;->ﾞᴵ:Lיʻ/ˆʾ;

    iget-object v0, p0, Lיʻ/ٴﹶ;->ﾞᴵ:Lיʻ/ˆʾ;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 7

    iget v0, p0, Lיʻ/ٴﹶ;->ﹳٴ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lיʻ/ٴﹶ;->ⁱˊ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lיʻ/ٴﹶ;->ʽ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lיʻ/ٴﹶ;->ˈ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const-class v5, Lיʻ/ٴﹶ;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lיʻ/ٴﹶ;->ˑﹳ:Lיʻ/ˆʾ;

    aput-object v1, v4, v0

    const/4 v0, 0x6

    iget-object v1, p0, Lיʻ/ٴﹶ;->ﾞᴵ:Lיʻ/ˆʾ;

    aput-object v1, v4, v0

    invoke-static {v4}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AesCtrHmacAead Parameters (variant: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lיʻ/ٴﹶ;->ˑﹳ:Lיʻ/ˆʾ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hashType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lיʻ/ٴﹶ;->ﾞᴵ:Lיʻ/ˆʾ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lיʻ/ٴﹶ;->ʽ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte IV, and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lיʻ/ٴﹶ;->ˈ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte tags, and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lיʻ/ٴﹶ;->ﹳٴ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte AES key, and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lיʻ/ٴﹶ;->ⁱˊ:I

    const-string v2, "-byte HMAC key)"

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˏי(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lיʻ/ٴﹶ;->ˑﹳ:Lיʻ/ˆʾ;

    sget-object v1, Lיʻ/ˆʾ;->ˆʾ:Lיʻ/ˆʾ;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
