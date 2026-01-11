.class public final Lᴵˋ/ᴵᵔ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:J

.field public final ʽ:Ljava/util/HashSet;

.field public final ˆʾ:Lᴵˋ/ʽʽ;

.field public final ˈ:Lᴵˋ/ᵔᵢ;

.field public final ˑﹳ:Lᴵˋ/ᵔᵢ;

.field public final ٴﹶ:J

.field public final ᵎﹶ:I

.field public final ᵔᵢ:Lᴵˋ/ˑﹳ;

.field public final ⁱˊ:Lᴵˋ/ˈٴ;

.field public final ﹳٴ:Ljava/util/UUID;

.field public final ﾞʻ:I

.field public final ﾞᴵ:I


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lᴵˋ/ˈٴ;Ljava/util/HashSet;Lᴵˋ/ᵔᵢ;Lᴵˋ/ᵔᵢ;IILᴵˋ/ˑﹳ;JLᴵˋ/ʽʽ;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᴵˋ/ᴵᵔ;->ﹳٴ:Ljava/util/UUID;

    iput-object p2, p0, Lᴵˋ/ᴵᵔ;->ⁱˊ:Lᴵˋ/ˈٴ;

    iput-object p3, p0, Lᴵˋ/ᴵᵔ;->ʽ:Ljava/util/HashSet;

    iput-object p4, p0, Lᴵˋ/ᴵᵔ;->ˈ:Lᴵˋ/ᵔᵢ;

    iput-object p5, p0, Lᴵˋ/ᴵᵔ;->ˑﹳ:Lᴵˋ/ᵔᵢ;

    iput p6, p0, Lᴵˋ/ᴵᵔ;->ﾞᴵ:I

    iput p7, p0, Lᴵˋ/ᴵᵔ;->ᵎﹶ:I

    iput-object p8, p0, Lᴵˋ/ᴵᵔ;->ᵔᵢ:Lᴵˋ/ˑﹳ;

    iput-wide p9, p0, Lᴵˋ/ᴵᵔ;->ʼˎ:J

    iput-object p11, p0, Lᴵˋ/ᴵᵔ;->ˆʾ:Lᴵˋ/ʽʽ;

    iput-wide p12, p0, Lᴵˋ/ᴵᵔ;->ٴﹶ:J

    iput p14, p0, Lᴵˋ/ᴵᵔ;->ﾞʻ:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_d

    const-class v0, Lᴵˋ/ᴵᵔ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Lᴵˋ/ᴵᵔ;

    iget v0, p0, Lᴵˋ/ᴵᵔ;->ﾞᴵ:I

    iget v1, p1, Lᴵˋ/ᴵᵔ;->ﾞᴵ:I

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    :cond_2
    iget v0, p0, Lᴵˋ/ᴵᵔ;->ᵎﹶ:I

    iget v1, p1, Lᴵˋ/ᴵᵔ;->ᵎﹶ:I

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lᴵˋ/ᴵᵔ;->ﹳٴ:Ljava/util/UUID;

    iget-object v1, p1, Lᴵˋ/ᴵᵔ;->ﹳٴ:Ljava/util/UUID;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lᴵˋ/ᴵᵔ;->ⁱˊ:Lᴵˋ/ˈٴ;

    iget-object v1, p1, Lᴵˋ/ᴵᵔ;->ⁱˊ:Lᴵˋ/ˈٴ;

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lᴵˋ/ᴵᵔ;->ˈ:Lᴵˋ/ᵔᵢ;

    iget-object v1, p1, Lᴵˋ/ᴵᵔ;->ˈ:Lᴵˋ/ᵔᵢ;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lᴵˋ/ᴵᵔ;->ᵔᵢ:Lᴵˋ/ˑﹳ;

    iget-object v1, p1, Lᴵˋ/ᴵᵔ;->ᵔᵢ:Lᴵˋ/ˑﹳ;

    invoke-virtual {v0, v1}, Lᴵˋ/ˑﹳ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    iget-wide v0, p0, Lᴵˋ/ᴵᵔ;->ʼˎ:J

    iget-wide v2, p1, Lᴵˋ/ᴵᵔ;->ʼˎ:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lᴵˋ/ᴵᵔ;->ˆʾ:Lᴵˋ/ʽʽ;

    iget-object v1, p1, Lᴵˋ/ᴵᵔ;->ˆʾ:Lᴵˋ/ʽʽ;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    iget-wide v0, p0, Lᴵˋ/ᴵᵔ;->ٴﹶ:J

    iget-wide v2, p1, Lᴵˋ/ᴵᵔ;->ٴﹶ:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    goto :goto_0

    :cond_a
    iget v0, p0, Lᴵˋ/ᴵᵔ;->ﾞʻ:I

    iget v1, p1, Lᴵˋ/ᴵᵔ;->ﾞʻ:I

    if-eq v0, v1, :cond_b

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lᴵˋ/ᴵᵔ;->ʽ:Ljava/util/HashSet;

    iget-object v1, p1, Lᴵˋ/ᴵᵔ;->ʽ:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lᴵˋ/ᴵᵔ;->ˑﹳ:Lᴵˋ/ᵔᵢ;

    iget-object p1, p1, Lᴵˋ/ᴵᵔ;->ˑﹳ:Lᴵˋ/ᵔᵢ;

    invoke-static {v0, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    iget-object v0, p0, Lᴵˋ/ᴵᵔ;->ﹳٴ:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lᴵˋ/ᴵᵔ;->ⁱˊ:Lᴵˋ/ˈٴ;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lᴵˋ/ᴵᵔ;->ˈ:Lᴵˋ/ᵔᵢ;

    invoke-virtual {v0}, Lᴵˋ/ᵔᵢ;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lᴵˋ/ᴵᵔ;->ʽ:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lᴵˋ/ᴵᵔ;->ˑﹳ:Lᴵˋ/ᵔᵢ;

    invoke-virtual {v0}, Lᴵˋ/ᵔᵢ;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lᴵˋ/ᴵᵔ;->ﾞᴵ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lᴵˋ/ᴵᵔ;->ᵎﹶ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lᴵˋ/ᴵᵔ;->ᵔᵢ:Lᴵˋ/ˑﹳ;

    invoke-virtual {v1}, Lᴵˋ/ˑﹳ;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lᴵˋ/ᴵᵔ;->ʼˎ:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lᴵˋ/ᴵᵔ;->ˆʾ:Lᴵˋ/ʽʽ;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lᴵˋ/ʽʽ;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lᴵˋ/ᴵᵔ;->ٴﹶ:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lᴵˋ/ᴵᵔ;->ﾞʻ:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WorkInfo{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lᴵˋ/ᴵᵔ;->ﹳٴ:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᴵˋ/ᴵᵔ;->ⁱˊ:Lᴵˋ/ˈٴ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᴵˋ/ᴵᵔ;->ˈ:Lᴵˋ/ᵔᵢ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᴵˋ/ᴵᵔ;->ʽ:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᴵˋ/ᴵᵔ;->ˑﹳ:Lᴵˋ/ᵔᵢ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", runAttemptCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lᴵˋ/ᴵᵔ;->ﾞᴵ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", generation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lᴵˋ/ᴵᵔ;->ᵎﹶ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", constraints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᴵˋ/ᴵᵔ;->ᵔᵢ:Lᴵˋ/ˑﹳ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initialDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lᴵˋ/ᴵᵔ;->ʼˎ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", periodicityInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᴵˋ/ᴵᵔ;->ˆʾ:Lᴵˋ/ʽʽ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nextScheduleTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lᴵˋ/ᴵᵔ;->ٴﹶ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}, stopReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lᴵˋ/ᴵᵔ;->ﾞʻ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
