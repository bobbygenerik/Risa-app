.class public final Lʾﾞ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˑﹳ:Lʾﾞ/ᵎﹶ;


# instance fields
.field public final ʽ:I

.field public final ˈ:I

.field public final ⁱˊ:I

.field public final ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lʾﾞ/ᵎﹶ;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, v1}, Lʾﾞ/ᵎﹶ;-><init>(III)V

    sput-object v0, Lʾﾞ/ᵎﹶ;->ˑﹳ:Lʾﾞ/ᵎﹶ;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lʾﾞ/ᵎﹶ;->ﹳٴ:I

    iput p2, p0, Lʾﾞ/ᵎﹶ;->ⁱˊ:I

    iput p3, p0, Lʾﾞ/ᵎﹶ;->ʽ:I

    invoke-static {p3}, Lᐧˎ/ʼʼ;->ˈʿ(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p3}, Lᐧˎ/ʼʼ;->ˏי(I)I

    move-result p1

    mul-int/2addr p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lʾﾞ/ᵎﹶ;->ˈ:I

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
    instance-of v1, p1, Lʾﾞ/ᵎﹶ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lʾﾞ/ᵎﹶ;

    iget v1, p0, Lʾﾞ/ᵎﹶ;->ﹳٴ:I

    iget v3, p1, Lʾﾞ/ᵎﹶ;->ﹳٴ:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lʾﾞ/ᵎﹶ;->ⁱˊ:I

    iget v3, p1, Lʾﾞ/ᵎﹶ;->ⁱˊ:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lʾﾞ/ᵎﹶ;->ʽ:I

    iget p1, p1, Lʾﾞ/ᵎﹶ;->ʽ:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lʾﾞ/ᵎﹶ;->ﹳٴ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lʾﾞ/ᵎﹶ;->ⁱˊ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lʾﾞ/ᵎﹶ;->ʽ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioFormat[sampleRate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lʾﾞ/ᵎﹶ;->ﹳٴ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lʾﾞ/ᵎﹶ;->ⁱˊ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", encoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lʾﾞ/ᵎﹶ;->ʽ:I

    const/16 v2, 0x5d

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->יـ(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
