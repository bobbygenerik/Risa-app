.class public final Lﹳʽ/ˆʾ;
.super Lٴʻ/ʼˎ;
.source "SourceFile"


# instance fields
.field public final ﹳٴ:Lﹳʽ/ˊʻ;


# direct methods
.method public constructor <init>(Lﹳʽ/ˊʻ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳʽ/ˆʾ;->ﹳٴ:Lﹳʽ/ˊʻ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    instance-of v0, p1, Lﹳʽ/ˆʾ;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lﹳʽ/ˆʾ;

    iget-object p1, p1, Lﹳʽ/ˆʾ;->ﹳٴ:Lﹳʽ/ˊʻ;

    iget-object v0, p0, Lﹳʽ/ˆʾ;->ﹳٴ:Lﹳʽ/ˊʻ;

    iget-object v2, v0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lᴵﹳ/ᵎᵔ;

    invoke-virtual {v2}, Lᴵﹳ/ᵎᵔ;->ˈٴ()Lᴵﹳ/י;

    move-result-object v2

    iget-object v3, p1, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Lᴵﹳ/ᵎᵔ;

    iget-object p1, p1, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lᴵﹳ/ᵎᵔ;

    invoke-virtual {v3}, Lᴵﹳ/ᵎᵔ;->ˈٴ()Lᴵﹳ/י;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lᴵﹳ/ᵎᵔ;

    invoke-virtual {v2}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᴵﹳ/ᵎᵔ;

    invoke-virtual {v0}, Lᴵﹳ/ᵎᵔ;->ˊʻ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v0

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ˊʻ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lﹳʽ/ˆʾ;->ﹳٴ:Lﹳʽ/ˊʻ;

    iget-object v1, v0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lᴵﹳ/ᵎᵔ;

    iget-object v0, v0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾᐧ/ﹳٴ;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    iget-object v0, p0, Lﹳʽ/ˆʾ;->ﹳٴ:Lﹳʽ/ˊʻ;

    iget-object v1, v0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lᴵﹳ/ᵎᵔ;

    invoke-virtual {v1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᴵﹳ/ᵎᵔ;

    invoke-virtual {v0}, Lᴵﹳ/ᵎᵔ;->ˈٴ()Lᴵﹳ/י;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const-string v0, "UNKNOWN"

    goto :goto_0

    :cond_0
    const-string v0, "CRUNCHY"

    goto :goto_0

    :cond_1
    const-string v0, "RAW"

    goto :goto_0

    :cond_2
    const-string v0, "LEGACY"

    goto :goto_0

    :cond_3
    const-string v0, "TINK"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(typeUrl="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", outputPrefixType="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lﹳʽ/ˆʾ;->ﹳٴ:Lﹳʽ/ˊʻ;

    iget-object v0, v0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᴵﹳ/ᵎᵔ;

    invoke-virtual {v0}, Lᴵﹳ/ᵎᵔ;->ˈٴ()Lᴵﹳ/י;

    move-result-object v0

    sget-object v1, Lᴵﹳ/י;->ᴵᵔ:Lᴵﹳ/י;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
