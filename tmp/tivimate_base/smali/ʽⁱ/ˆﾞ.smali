.class public final Lʽⁱ/ˆﾞ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:I

.field public final ʽ:Lʽⁱ/ᴵˊ;

.field public final ˈ:Ljava/lang/Object;

.field public final ˑﹳ:I

.field public final ᵎﹶ:J

.field public final ᵔᵢ:I

.field public final ⁱˊ:I

.field public final ﹳٴ:Ljava/lang/Object;

.field public final ﾞᴵ:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {v2, v3, v4, v0, v1}, Lʼﾞ/ˊˋ;->ـˆ(IIIII)V

    const/4 v0, 0x5

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/4 v0, 0x6

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILʽⁱ/ᴵˊ;Ljava/lang/Object;IJJII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽⁱ/ˆﾞ;->ﹳٴ:Ljava/lang/Object;

    iput p2, p0, Lʽⁱ/ˆﾞ;->ⁱˊ:I

    iput-object p3, p0, Lʽⁱ/ˆﾞ;->ʽ:Lʽⁱ/ᴵˊ;

    iput-object p4, p0, Lʽⁱ/ˆﾞ;->ˈ:Ljava/lang/Object;

    iput p5, p0, Lʽⁱ/ˆﾞ;->ˑﹳ:I

    iput-wide p6, p0, Lʽⁱ/ˆﾞ;->ﾞᴵ:J

    iput-wide p8, p0, Lʽⁱ/ˆﾞ;->ᵎﹶ:J

    iput p10, p0, Lʽⁱ/ˆﾞ;->ᵔᵢ:I

    iput p11, p0, Lʽⁱ/ˆﾞ;->ʼˎ:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lʽⁱ/ˆﾞ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lʽⁱ/ˆﾞ;

    iget v2, p0, Lʽⁱ/ˆﾞ;->ⁱˊ:I

    iget v3, p1, Lʽⁱ/ˆﾞ;->ⁱˊ:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lʽⁱ/ˆﾞ;->ˑﹳ:I

    iget v3, p1, Lʽⁱ/ˆﾞ;->ˑﹳ:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lʽⁱ/ˆﾞ;->ﾞᴵ:J

    iget-wide v4, p1, Lʽⁱ/ˆﾞ;->ﾞᴵ:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lʽⁱ/ˆﾞ;->ᵎﹶ:J

    iget-wide v4, p1, Lʽⁱ/ˆﾞ;->ᵎﹶ:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lʽⁱ/ˆﾞ;->ᵔᵢ:I

    iget v3, p1, Lʽⁱ/ˆﾞ;->ᵔᵢ:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lʽⁱ/ˆﾞ;->ʼˎ:I

    iget v3, p1, Lʽⁱ/ˆﾞ;->ʼˎ:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lʽⁱ/ˆﾞ;->ʽ:Lʽⁱ/ᴵˊ;

    iget-object v3, p1, Lʽⁱ/ˆﾞ;->ʽ:Lʽⁱ/ᴵˊ;

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lʽⁱ/ˆﾞ;->ﹳٴ:Ljava/lang/Object;

    iget-object v3, p1, Lʽⁱ/ˆﾞ;->ﹳٴ:Ljava/lang/Object;

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lʽⁱ/ˆﾞ;->ˈ:Ljava/lang/Object;

    iget-object p1, p1, Lʽⁱ/ˆﾞ;->ˈ:Ljava/lang/Object;

    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 9

    iget v0, p0, Lʽⁱ/ˆﾞ;->ⁱˊ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lʽⁱ/ˆﾞ;->ˑﹳ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Lʽⁱ/ˆﾞ;->ﾞᴵ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lʽⁱ/ˆﾞ;->ᵎﹶ:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v4, p0, Lʽⁱ/ˆﾞ;->ᵔᵢ:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lʽⁱ/ˆﾞ;->ʼˎ:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lʽⁱ/ˆﾞ;->ﹳٴ:Ljava/lang/Object;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v0, 0x2

    iget-object v7, p0, Lʽⁱ/ˆﾞ;->ʽ:Lʽⁱ/ᴵˊ;

    aput-object v7, v6, v0

    const/4 v0, 0x3

    iget-object v7, p0, Lʽⁱ/ˆﾞ;->ˈ:Ljava/lang/Object;

    aput-object v7, v6, v0

    const/4 v0, 0x4

    aput-object v1, v6, v0

    const/4 v0, 0x5

    aput-object v2, v6, v0

    const/4 v0, 0x6

    aput-object v3, v6, v0

    const/4 v0, 0x7

    aput-object v4, v6, v0

    const/16 v0, 0x8

    aput-object v5, v6, v0

    invoke-static {v6}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mediaItem="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lʽⁱ/ˆﾞ;->ⁱˊ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lʽⁱ/ˆﾞ;->ˑﹳ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lʽⁱ/ˆﾞ;->ﾞᴵ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    iget v2, p0, Lʽⁱ/ˆﾞ;->ᵔᵢ:I

    if-ne v2, v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, ", contentPos="

    invoke-static {v0, v1}, Lʻٴ/ᵎﹶ;->ʽ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lʽⁱ/ˆﾞ;->ᵎﹶ:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", adGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lʽⁱ/ˆﾞ;->ʼˎ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
