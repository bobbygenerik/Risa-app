.class public final Lיʻ/ˆﾞ;
.super Lיʻ/ʽ;
.source "SourceFile"


# instance fields
.field public final ﹳٴ:Lיʻ/ˆʾ;


# direct methods
.method public constructor <init>(Lיʻ/ˆʾ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lיʻ/ˆﾞ;->ﹳٴ:Lיʻ/ˆʾ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    instance-of v0, p1, Lיʻ/ˆﾞ;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lיʻ/ˆﾞ;

    iget-object p1, p1, Lיʻ/ˆﾞ;->ﹳٴ:Lיʻ/ˆʾ;

    iget-object v0, p0, Lיʻ/ˆﾞ;->ﹳٴ:Lיʻ/ˆʾ;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lיʻ/ˆﾞ;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lיʻ/ˆﾞ;->ﹳٴ:Lיʻ/ˆʾ;

    aput-object v2, v0, v1

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XChaCha20Poly1305 Parameters (variant: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lיʻ/ˆﾞ;->ﹳٴ:Lיʻ/ˆʾ;

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
    iget-object v0, p0, Lיʻ/ˆﾞ;->ﹳٴ:Lיʻ/ˆʾ;

    sget-object v1, Lיʻ/ˆʾ;->ᵎˊ:Lיʻ/ˆʾ;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
