.class public final Lʽᴵ/ʻٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field public ʽʽ:Lʽᴵ/ʻٴ;

.field public ʾˋ:Lʽᴵ/ʻٴ;

.field public ˈٴ:Lʽᴵ/ʻٴ;

.field public ˉٴ:Ljava/lang/Object;

.field public final ˊʻ:Ljava/lang/Object;

.field public final ٴᵢ:I

.field public ᴵˊ:Lʽᴵ/ʻٴ;

.field public ᴵᵔ:Lʽᴵ/ʻٴ;

.field public ᵎⁱ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lʽᴵ/ʻٴ;->ˊʻ:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lʽᴵ/ʻٴ;->ٴᵢ:I

    iput-object p0, p0, Lʽᴵ/ʻٴ;->ᴵᵔ:Lʽᴵ/ʻٴ;

    iput-object p0, p0, Lʽᴵ/ʻٴ;->ˈٴ:Lʽᴵ/ʻٴ;

    return-void
.end method

.method public constructor <init>(Lʽᴵ/ʻٴ;Ljava/lang/Object;ILʽᴵ/ʻٴ;Lʽᴵ/ʻٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽᴵ/ʻٴ;->ʾˋ:Lʽᴵ/ʻٴ;

    iput-object p2, p0, Lʽᴵ/ʻٴ;->ˊʻ:Ljava/lang/Object;

    iput p3, p0, Lʽᴵ/ʻٴ;->ٴᵢ:I

    const/4 p1, 0x1

    iput p1, p0, Lʽᴵ/ʻٴ;->ᵎⁱ:I

    iput-object p4, p0, Lʽᴵ/ʻٴ;->ˈٴ:Lʽᴵ/ʻٴ;

    iput-object p5, p0, Lʽᴵ/ʻٴ;->ᴵᵔ:Lʽᴵ/ʻٴ;

    iput-object p0, p5, Lʽᴵ/ʻٴ;->ˈٴ:Lʽᴵ/ʻٴ;

    iput-object p0, p4, Lʽᴵ/ʻٴ;->ᴵᵔ:Lʽᴵ/ʻٴ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lʽᴵ/ʻٴ;->ˊʻ:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lʽᴵ/ʻٴ;->ˉٴ:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lʽᴵ/ʻٴ;->ˊʻ:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lʽᴵ/ʻٴ;->ˉٴ:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lʽᴵ/ʻٴ;->ˊʻ:Ljava/lang/Object;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lʽᴵ/ʻٴ;->ˉٴ:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lʽᴵ/ʻٴ;->ˉٴ:Ljava/lang/Object;

    iput-object p1, p0, Lʽᴵ/ʻٴ;->ˉٴ:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lʽᴵ/ʻٴ;->ˊʻ:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʽᴵ/ʻٴ;->ˉٴ:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
