.class public final Lᵔـ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﾞᴵ:Lᵔـ/ﹳٴ;


# instance fields
.field public final ʽ:I

.field public final ˈ:J

.field public final ˑﹳ:I

.field public final ⁱˊ:I

.field public final ﹳٴ:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lᵔـ/ﹳٴ;

    const-wide/32 v5, 0x240c8400

    const v7, 0x14000

    const-wide/32 v1, 0xa00000

    const/16 v3, 0xc8

    const/16 v4, 0x2710

    invoke-direct/range {v0 .. v7}, Lᵔـ/ﹳٴ;-><init>(JIIJI)V

    sput-object v0, Lᵔـ/ﹳٴ;->ﾞᴵ:Lᵔـ/ﹳٴ;

    return-void
.end method

.method public constructor <init>(JIIJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lᵔـ/ﹳٴ;->ﹳٴ:J

    iput p3, p0, Lᵔـ/ﹳٴ;->ⁱˊ:I

    iput p4, p0, Lᵔـ/ﹳٴ;->ʽ:I

    iput-wide p5, p0, Lᵔـ/ﹳٴ;->ˈ:J

    iput p7, p0, Lᵔـ/ﹳٴ;->ˑﹳ:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lᵔـ/ﹳٴ;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lᵔـ/ﹳٴ;

    iget-wide v3, p0, Lᵔـ/ﹳٴ;->ﹳٴ:J

    iget-wide v5, p1, Lᵔـ/ﹳٴ;->ﹳٴ:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lᵔـ/ﹳٴ;->ⁱˊ:I

    iget v3, p1, Lᵔـ/ﹳٴ;->ⁱˊ:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lᵔـ/ﹳٴ;->ʽ:I

    iget v3, p1, Lᵔـ/ﹳٴ;->ʽ:I

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lᵔـ/ﹳٴ;->ˈ:J

    iget-wide v5, p1, Lᵔـ/ﹳٴ;->ˈ:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lᵔـ/ﹳٴ;->ˑﹳ:I

    iget p1, p1, Lᵔـ/ﹳٴ;->ˑﹳ:I

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 7

    iget-wide v0, p0, Lᵔـ/ﹳٴ;->ﹳٴ:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v3, p0, Lᵔـ/ﹳٴ;->ⁱˊ:I

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v3, p0, Lᵔـ/ﹳٴ;->ʽ:I

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-wide v3, p0, Lᵔـ/ﹳٴ;->ˈ:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v2, v3

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lᵔـ/ﹳٴ;->ˑﹳ:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EventStoreConfig{maxStorageSizeInBytes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lᵔـ/ﹳٴ;->ﹳٴ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", loadBatchSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lᵔـ/ﹳٴ;->ⁱˊ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", criticalSectionEnterTimeoutMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lᵔـ/ﹳٴ;->ʽ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventCleanUpAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lᵔـ/ﹳٴ;->ˈ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxBlobByteSizePerRow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lᵔـ/ﹳٴ;->ˑﹳ:I

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˏי(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
