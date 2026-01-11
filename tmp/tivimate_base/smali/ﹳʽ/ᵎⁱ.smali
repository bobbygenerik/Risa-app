.class public final Lﹳʽ/ᵎⁱ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Lʾᐧ/ﹳٴ;

.field public final ﹳٴ:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lʾᐧ/ﹳٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳʽ/ᵎⁱ;->ﹳٴ:Ljava/lang/Class;

    iput-object p2, p0, Lﹳʽ/ᵎⁱ;->ⁱˊ:Lʾᐧ/ﹳٴ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    instance-of v0, p1, Lﹳʽ/ᵎⁱ;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lﹳʽ/ᵎⁱ;

    iget-object v0, p1, Lﹳʽ/ᵎⁱ;->ﹳٴ:Ljava/lang/Class;

    iget-object v2, p0, Lﹳʽ/ᵎⁱ;->ﹳٴ:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lﹳʽ/ᵎⁱ;->ⁱˊ:Lʾᐧ/ﹳٴ;

    iget-object v0, p0, Lﹳʽ/ᵎⁱ;->ⁱˊ:Lʾᐧ/ﹳٴ;

    invoke-virtual {p1, v0}, Lʾᐧ/ﹳٴ;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lﹳʽ/ᵎⁱ;->ﹳٴ:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lﹳʽ/ᵎⁱ;->ⁱˊ:Lʾᐧ/ﹳٴ;

    aput-object v2, v0, v1

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lﹳʽ/ᵎⁱ;->ﹳٴ:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", object identifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lﹳʽ/ᵎⁱ;->ⁱˊ:Lʾᐧ/ﹳٴ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
