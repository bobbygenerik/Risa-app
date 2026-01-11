.class public final Lˑᵎ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:I

.field public final ʼᐧ:Ljava/util/List;

.field public final ʽ:Lᴵˋ/ᵔᵢ;

.field public final ˆʾ:J

.field public final ˈ:J

.field public final ˉʿ:I

.field public final ˉˆ:I

.field public final ˑﹳ:J

.field public final ٴﹶ:J

.field public final ᵎﹶ:Lᴵˋ/ˑﹳ;

.field public final ᵔʾ:J

.field public final ᵔᵢ:I

.field public final ᵔﹳ:Ljava/util/List;

.field public final ⁱˊ:Lᴵˋ/ˈٴ;

.field public final ﹳٴ:Ljava/lang/String;

.field public final ﾞʻ:I

.field public final ﾞᴵ:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lᴵˋ/ˈٴ;Lᴵˋ/ᵔᵢ;JJJLᴵˋ/ˑﹳ;IIJJIIJILjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˑᵎ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    iput-object p2, p0, Lˑᵎ/ᵔﹳ;->ⁱˊ:Lᴵˋ/ˈٴ;

    iput-object p3, p0, Lˑᵎ/ᵔﹳ;->ʽ:Lᴵˋ/ᵔᵢ;

    iput-wide p4, p0, Lˑᵎ/ᵔﹳ;->ˈ:J

    iput-wide p6, p0, Lˑᵎ/ᵔﹳ;->ˑﹳ:J

    iput-wide p8, p0, Lˑᵎ/ᵔﹳ;->ﾞᴵ:J

    iput-object p10, p0, Lˑᵎ/ᵔﹳ;->ᵎﹶ:Lᴵˋ/ˑﹳ;

    iput p11, p0, Lˑᵎ/ᵔﹳ;->ᵔᵢ:I

    iput p12, p0, Lˑᵎ/ᵔﹳ;->ʼˎ:I

    iput-wide p13, p0, Lˑᵎ/ᵔﹳ;->ˆʾ:J

    move-wide p1, p15

    iput-wide p1, p0, Lˑᵎ/ᵔﹳ;->ٴﹶ:J

    move/from16 p1, p17

    iput p1, p0, Lˑᵎ/ᵔﹳ;->ﾞʻ:I

    move/from16 p1, p18

    iput p1, p0, Lˑᵎ/ᵔﹳ;->ˉʿ:I

    move-wide/from16 p1, p19

    iput-wide p1, p0, Lˑᵎ/ᵔﹳ;->ᵔʾ:J

    move/from16 p1, p21

    iput p1, p0, Lˑᵎ/ᵔﹳ;->ˉˆ:I

    move-object/from16 p1, p22

    iput-object p1, p0, Lˑᵎ/ᵔﹳ;->ʼᐧ:Ljava/util/List;

    move-object/from16 p1, p23

    iput-object p1, p0, Lˑᵎ/ᵔﹳ;->ᵔﹳ:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    if-ne p0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Lˑᵎ/ᵔﹳ;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Lˑᵎ/ᵔﹳ;

    iget-object v0, p0, Lˑᵎ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    iget-object v1, p1, Lˑᵎ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lˑᵎ/ᵔﹳ;->ⁱˊ:Lᴵˋ/ˈٴ;

    iget-object v1, p1, Lˑᵎ/ᵔﹳ;->ⁱˊ:Lᴵˋ/ˈٴ;

    if-eq v0, v1, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lˑᵎ/ᵔﹳ;->ʽ:Lᴵˋ/ᵔᵢ;

    iget-object v1, p1, Lˑᵎ/ᵔﹳ;->ʽ:Lᴵˋ/ᵔᵢ;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    iget-wide v0, p0, Lˑᵎ/ᵔﹳ;->ˈ:J

    iget-wide v2, p1, Lˑᵎ/ᵔﹳ;->ˈ:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    goto/16 :goto_0

    :cond_5
    iget-wide v0, p0, Lˑᵎ/ᵔﹳ;->ˑﹳ:J

    iget-wide v2, p1, Lˑᵎ/ᵔﹳ;->ˑﹳ:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    goto/16 :goto_0

    :cond_6
    iget-wide v0, p0, Lˑᵎ/ᵔﹳ;->ﾞᴵ:J

    iget-wide v2, p1, Lˑᵎ/ᵔﹳ;->ﾞᴵ:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lˑᵎ/ᵔﹳ;->ᵎﹶ:Lᴵˋ/ˑﹳ;

    iget-object v1, p1, Lˑᵎ/ᵔﹳ;->ᵎﹶ:Lᴵˋ/ˑﹳ;

    invoke-virtual {v0, v1}, Lᴵˋ/ˑﹳ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    iget v0, p0, Lˑᵎ/ᵔﹳ;->ᵔᵢ:I

    iget v1, p1, Lˑᵎ/ᵔﹳ;->ᵔᵢ:I

    if-eq v0, v1, :cond_9

    goto :goto_0

    :cond_9
    iget v0, p0, Lˑᵎ/ᵔﹳ;->ʼˎ:I

    iget v1, p1, Lˑᵎ/ᵔﹳ;->ʼˎ:I

    if-eq v0, v1, :cond_a

    goto :goto_0

    :cond_a
    iget-wide v0, p0, Lˑᵎ/ᵔﹳ;->ˆʾ:J

    iget-wide v2, p1, Lˑᵎ/ᵔﹳ;->ˆʾ:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    goto :goto_0

    :cond_b
    iget-wide v0, p0, Lˑᵎ/ᵔﹳ;->ٴﹶ:J

    iget-wide v2, p1, Lˑᵎ/ᵔﹳ;->ٴﹶ:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    goto :goto_0

    :cond_c
    iget v0, p0, Lˑᵎ/ᵔﹳ;->ﾞʻ:I

    iget v1, p1, Lˑᵎ/ᵔﹳ;->ﾞʻ:I

    if-eq v0, v1, :cond_d

    goto :goto_0

    :cond_d
    iget v0, p0, Lˑᵎ/ᵔﹳ;->ˉʿ:I

    iget v1, p1, Lˑᵎ/ᵔﹳ;->ˉʿ:I

    if-eq v0, v1, :cond_e

    goto :goto_0

    :cond_e
    iget-wide v0, p0, Lˑᵎ/ᵔﹳ;->ᵔʾ:J

    iget-wide v2, p1, Lˑᵎ/ᵔﹳ;->ᵔʾ:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    goto :goto_0

    :cond_f
    iget v0, p0, Lˑᵎ/ᵔﹳ;->ˉˆ:I

    iget v1, p1, Lˑᵎ/ᵔﹳ;->ˉˆ:I

    if-eq v0, v1, :cond_10

    goto :goto_0

    :cond_10
    iget-object v0, p0, Lˑᵎ/ᵔﹳ;->ʼᐧ:Ljava/util/List;

    iget-object v1, p1, Lˑᵎ/ᵔﹳ;->ʼᐧ:Ljava/util/List;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    iget-object v0, p0, Lˑᵎ/ᵔﹳ;->ᵔﹳ:Ljava/util/List;

    iget-object p1, p1, Lˑᵎ/ᵔﹳ;->ᵔﹳ:Ljava/util/List;

    invoke-static {v0, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_12
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lˑᵎ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lˑᵎ/ᵔﹳ;->ⁱˊ:Lᴵˋ/ˈٴ;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lˑᵎ/ᵔﹳ;->ʽ:Lᴵˋ/ᵔᵢ;

    invoke-virtual {v0}, Lᴵˋ/ᵔᵢ;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lˑᵎ/ᵔﹳ;->ˈ:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lˑᵎ/ᵔﹳ;->ˑﹳ:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lˑᵎ/ᵔﹳ;->ﾞᴵ:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lˑᵎ/ᵔﹳ;->ᵎﹶ:Lᴵˋ/ˑﹳ;

    invoke-virtual {v1}, Lᴵˋ/ˑﹳ;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lˑᵎ/ᵔﹳ;->ᵔᵢ:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lˑᵎ/ᵔﹳ;->ʼˎ:I

    invoke-static {v0}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lˑᵎ/ᵔﹳ;->ˆʾ:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lˑᵎ/ᵔﹳ;->ٴﹶ:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lˑᵎ/ᵔﹳ;->ﾞʻ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lˑᵎ/ᵔﹳ;->ˉʿ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lˑᵎ/ᵔﹳ;->ᵔʾ:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lˑᵎ/ᵔﹳ;->ˉˆ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lˑᵎ/ᵔﹳ;->ʼᐧ:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lˑᵎ/ᵔﹳ;->ᵔﹳ:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WorkInfoPojo(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˑᵎ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˑᵎ/ᵔﹳ;->ⁱˊ:Lᴵˋ/ˈٴ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", output="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˑᵎ/ᵔﹳ;->ʽ:Lᴵˋ/ᵔᵢ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initialDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lˑᵎ/ᵔﹳ;->ˈ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", intervalDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lˑᵎ/ᵔﹳ;->ˑﹳ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", flexDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lˑᵎ/ᵔﹳ;->ﾞᴵ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", constraints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˑᵎ/ᵔﹳ;->ᵎﹶ:Lᴵˋ/ˑﹳ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", runAttemptCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˑᵎ/ᵔﹳ;->ᵔᵢ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backoffPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    iget v2, p0, Lˑᵎ/ᵔﹳ;->ʼˎ:I

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    if-eq v2, v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    const-string v1, "LINEAR"

    goto :goto_0

    :cond_1
    const-string v1, "EXPONENTIAL"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", backoffDelayDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lˑᵎ/ᵔﹳ;->ˆʾ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastEnqueueTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lˑᵎ/ᵔﹳ;->ٴﹶ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", periodCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˑᵎ/ᵔﹳ;->ﾞʻ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", generation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˑᵎ/ᵔﹳ;->ˉʿ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nextScheduleTimeOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lˑᵎ/ᵔﹳ;->ᵔʾ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", stopReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˑᵎ/ᵔﹳ;->ˉˆ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˑᵎ/ᵔﹳ;->ʼᐧ:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˑᵎ/ᵔﹳ;->ᵔﹳ:Ljava/util/List;

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lˉˆ/ٴᴵ;->ˉʿ(Ljava/lang/StringBuilder;Ljava/util/List;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
