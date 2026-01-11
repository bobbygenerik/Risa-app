.class public final Lﹶ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˈ:Lﹶ/ﹳٴ;


# instance fields
.field public final ʽ:Lʼʻ/ᵔٴ;

.field public final ⁱˊ:I

.field public final ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/16 v2, 0xa

    const/4 v3, 0x2

    if-lt v0, v1, :cond_1

    new-instance v0, Lﹶ/ﹳٴ;

    new-instance v1, Lʼʻ/ˆﾞ;

    const/4 v4, 0x4

    invoke-direct {v1, v4}, Lʼʻ/ʽʽ;-><init>(I)V

    const/4 v4, 0x1

    :goto_0
    if-gt v4, v2, :cond_0

    invoke-static {v4}, Lᐧˎ/ʼʼ;->יـ(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lʼʻ/ˆﾞ;->ᵎﹶ()Lʼʻ/ᵔٴ;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lﹶ/ﹳٴ;-><init>(ILjava/util/Set;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lﹶ/ﹳٴ;

    invoke-direct {v0, v3, v2}, Lﹶ/ﹳٴ;-><init>(II)V

    :goto_1
    sput-object v0, Lﹶ/ﹳٴ;->ˈ:Lﹶ/ﹳٴ;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lﹶ/ﹳٴ;->ﹳٴ:I

    iput p2, p0, Lﹶ/ﹳٴ;->ⁱˊ:I

    const/4 p1, 0x0

    iput-object p1, p0, Lﹶ/ﹳٴ;->ʽ:Lʼʻ/ᵔٴ;

    return-void
.end method

.method public constructor <init>(ILjava/util/Set;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lﹶ/ﹳٴ;->ﹳٴ:I

    invoke-static {p2}, Lʼʻ/ᵔٴ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵔٴ;

    move-result-object p1

    iput-object p1, p0, Lﹶ/ﹳٴ;->ʽ:Lʼʻ/ᵔٴ;

    invoke-virtual {p1}, Lʼʻ/ˈٴ;->ᵔᵢ()Lʼʻ/ٴﹳ;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    :cond_0
    iput p2, p0, Lﹶ/ﹳٴ;->ⁱˊ:I

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
    instance-of v1, p1, Lﹶ/ﹳٴ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lﹶ/ﹳٴ;

    iget v1, p0, Lﹶ/ﹳٴ;->ﹳٴ:I

    iget v3, p1, Lﹶ/ﹳٴ;->ﹳٴ:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lﹶ/ﹳٴ;->ⁱˊ:I

    iget v3, p1, Lﹶ/ﹳٴ;->ⁱˊ:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lﹶ/ﹳٴ;->ʽ:Lʼʻ/ᵔٴ;

    iget-object p1, p1, Lﹶ/ﹳٴ;->ʽ:Lʼʻ/ᵔٴ;

    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    iget v0, p0, Lﹶ/ﹳٴ;->ﹳٴ:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lﹶ/ﹳٴ;->ⁱˊ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lﹶ/ﹳٴ;->ʽ:Lʼʻ/ᵔٴ;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lʼʻ/ᵔٴ;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioProfile[format="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lﹶ/ﹳٴ;->ﹳٴ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxChannelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lﹶ/ﹳٴ;->ⁱˊ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channelMasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lﹶ/ﹳٴ;->ʽ:Lʼʻ/ᵔٴ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
