.class public final Lיʻ/ᴵᵔ;
.super Lיʻ/ʽ;
.source "SourceFile"


# instance fields
.field public final ʽ:Lיʻ/ˆʾ;

.field public final ˈ:Lיʻ/ʽ;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Lיʻ/ˆʾ;


# direct methods
.method public constructor <init>(Lיʻ/ˆʾ;Ljava/lang/String;Lיʻ/ˆʾ;Lיʻ/ʽ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lיʻ/ᴵᵔ;->ﹳٴ:Lיʻ/ˆʾ;

    iput-object p2, p0, Lיʻ/ᴵᵔ;->ⁱˊ:Ljava/lang/String;

    iput-object p3, p0, Lיʻ/ᴵᵔ;->ʽ:Lיʻ/ˆʾ;

    iput-object p4, p0, Lיʻ/ᴵᵔ;->ˈ:Lיʻ/ʽ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    instance-of v0, p1, Lיʻ/ᴵᵔ;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lיʻ/ᴵᵔ;

    iget-object v0, p1, Lיʻ/ᴵᵔ;->ʽ:Lיʻ/ˆʾ;

    iget-object v2, p0, Lיʻ/ᴵᵔ;->ʽ:Lיʻ/ˆʾ;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lיʻ/ᴵᵔ;->ˈ:Lיʻ/ʽ;

    iget-object v2, p0, Lיʻ/ᴵᵔ;->ˈ:Lיʻ/ʽ;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lיʻ/ᴵᵔ;->ⁱˊ:Ljava/lang/String;

    iget-object v2, p0, Lיʻ/ᴵᵔ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lיʻ/ᴵᵔ;->ﹳٴ:Lיʻ/ˆʾ;

    iget-object v0, p0, Lיʻ/ᴵᵔ;->ﹳٴ:Lיʻ/ˆʾ;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lיʻ/ᴵᵔ;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lיʻ/ᴵᵔ;->ⁱˊ:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lיʻ/ᴵᵔ;->ʽ:Lיʻ/ˆʾ;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lיʻ/ᴵᵔ;->ˈ:Lיʻ/ʽ;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lיʻ/ᴵᵔ;->ﹳٴ:Lיʻ/ˆʾ;

    aput-object v2, v0, v1

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LegacyKmsEnvelopeAead Parameters (kekUri: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lיʻ/ᴵᵔ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dekParsingStrategy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lיʻ/ᴵᵔ;->ʽ:Lיʻ/ˆʾ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dekParametersForNewKeys: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lיʻ/ᴵᵔ;->ˈ:Lיʻ/ʽ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", variant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lיʻ/ᴵᵔ;->ﹳٴ:Lיʻ/ˆʾ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lיʻ/ᴵᵔ;->ﹳٴ:Lיʻ/ˆʾ;

    sget-object v1, Lיʻ/ˆʾ;->ˊʻ:Lיʻ/ˆʾ;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
