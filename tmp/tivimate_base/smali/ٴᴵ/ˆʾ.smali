.class public final Lٴᴵ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/lang/String;

.field public ˈ:I

.field public final ⁱˊ:J

.field public final ﹳٴ:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p5, :cond_0

    const-string p5, ""

    :cond_0
    iput-object p5, p0, Lٴᴵ/ˆʾ;->ʽ:Ljava/lang/String;

    iput-wide p1, p0, Lٴᴵ/ˆʾ;->ﹳٴ:J

    iput-wide p3, p0, Lٴᴵ/ˆʾ;->ⁱˊ:J

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

    const-class v2, Lٴᴵ/ˆʾ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lٴᴵ/ˆʾ;

    iget-wide v2, p0, Lٴᴵ/ˆʾ;->ﹳٴ:J

    iget-wide v4, p1, Lٴᴵ/ˆʾ;->ﹳٴ:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lٴᴵ/ˆʾ;->ⁱˊ:J

    iget-wide v4, p1, Lٴᴵ/ˆʾ;->ⁱˊ:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lٴᴵ/ˆʾ;->ʽ:Ljava/lang/String;

    iget-object p1, p1, Lٴᴵ/ˆʾ;->ʽ:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    iget v0, p0, Lٴᴵ/ˆʾ;->ˈ:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lٴᴵ/ˆʾ;->ﹳٴ:J

    long-to-int v0, v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lٴᴵ/ˆʾ;->ⁱˊ:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lٴᴵ/ˆʾ;->ʽ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lٴᴵ/ˆʾ;->ˈ:I

    :cond_0
    iget v0, p0, Lٴᴵ/ˆʾ;->ˈ:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RangedUri(referenceUri="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lٴᴵ/ˆʾ;->ʽ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lٴᴵ/ˆʾ;->ﹳٴ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lٴᴵ/ˆʾ;->ⁱˊ:J

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/media/session/ﹳٴ;->ˉʿ(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ(Lٴᴵ/ˆʾ;Ljava/lang/String;)Lٴᴵ/ˆʾ;
    .locals 16

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lٴᴵ/ˆʾ;->ʽ:Ljava/lang/String;

    invoke-static {v2, v3}, Lᐧˎ/ﹳٴ;->ʾˋ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v1, :cond_0

    iget-wide v4, v1, Lٴᴵ/ˆʾ;->ⁱˊ:J

    iget-object v6, v1, Lٴᴵ/ˆʾ;->ʽ:Ljava/lang/String;

    invoke-static {v2, v6}, Lᐧˎ/ﹳٴ;->ʾˋ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_4

    :cond_1
    iget-wide v6, v0, Lٴᴵ/ˆʾ;->ⁱˊ:J

    const-wide/16 v10, -0x1

    cmp-long v2, v6, v10

    move-wide v12, v6

    if-eqz v2, :cond_3

    move-wide v7, v4

    iget-wide v5, v0, Lٴᴵ/ˆʾ;->ﹳٴ:J

    add-long v14, v5, v12

    const/4 v2, 0x0

    iget-wide v3, v1, Lٴᴵ/ˆʾ;->ﹳٴ:J

    cmp-long v3, v14, v3

    if-nez v3, :cond_4

    new-instance v4, Lٴᴵ/ˆʾ;

    cmp-long v1, v7, v10

    if-nez v1, :cond_2

    :goto_0
    move-wide v7, v10

    goto :goto_1

    :cond_2
    add-long v10, v12, v7

    goto :goto_0

    :goto_1
    invoke-direct/range {v4 .. v9}, Lٴᴵ/ˆʾ;-><init>(JJLjava/lang/String;)V

    return-object v4

    :cond_3
    const/4 v2, 0x0

    move-wide v7, v4

    :cond_4
    cmp-long v3, v7, v10

    if-eqz v3, :cond_6

    iget-wide v5, v1, Lٴᴵ/ˆʾ;->ﹳٴ:J

    add-long v3, v5, v7

    iget-wide v14, v0, Lٴᴵ/ˆʾ;->ﹳٴ:J

    cmp-long v1, v3, v14

    if-nez v1, :cond_6

    new-instance v4, Lٴᴵ/ˆʾ;

    cmp-long v1, v12, v10

    if-nez v1, :cond_5

    :goto_2
    move-wide v7, v10

    goto :goto_3

    :cond_5
    add-long v10, v7, v12

    goto :goto_2

    :goto_3
    invoke-direct/range {v4 .. v9}, Lٴᴵ/ˆʾ;-><init>(JJLjava/lang/String;)V

    return-object v4

    :cond_6
    :goto_4
    return-object v2
.end method
