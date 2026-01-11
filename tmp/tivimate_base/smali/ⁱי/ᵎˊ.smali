.class public final Lⁱי/ᵎˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Z

.field public final ʽ:J

.field public final ˆʾ:Z

.field public final ˈ:J

.field public final ˑﹳ:J

.field public final ᵎﹶ:Z

.field public final ᵔᵢ:Z

.field public final ⁱˊ:J

.field public final ﹳٴ:Lﹳᵢ/ᵢˏ;

.field public final ﾞᴵ:Z


# direct methods
.method public constructor <init>(Lﹳᵢ/ᵢˏ;JJJJZZZZZ)V
    .locals 7

    .prologue
    move/from16 v0, p11

    move/from16 v1, p12

    move/from16 v2, p13

    move/from16 v3, p14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v6, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v4

    :goto_1
    invoke-static {v6}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v6, v5

    goto :goto_3

    :cond_3
    :goto_2
    move v6, v4

    :goto_3
    invoke-static {v6}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    move v4, v5

    :cond_5
    :goto_4
    invoke-static {v4}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    iput-object p1, p0, Lⁱי/ᵎˊ;->ﹳٴ:Lﹳᵢ/ᵢˏ;

    iput-wide p2, p0, Lⁱי/ᵎˊ;->ⁱˊ:J

    iput-wide p4, p0, Lⁱי/ᵎˊ;->ʽ:J

    iput-wide p6, p0, Lⁱי/ᵎˊ;->ˈ:J

    move-wide p1, p8

    iput-wide p1, p0, Lⁱי/ᵎˊ;->ˑﹳ:J

    move/from16 p1, p10

    iput-boolean p1, p0, Lⁱי/ᵎˊ;->ﾞᴵ:Z

    iput-boolean v0, p0, Lⁱי/ᵎˊ;->ᵎﹶ:Z

    iput-boolean v1, p0, Lⁱי/ᵎˊ;->ᵔᵢ:Z

    iput-boolean v2, p0, Lⁱי/ᵎˊ;->ʼˎ:Z

    iput-boolean v3, p0, Lⁱי/ᵎˊ;->ˆʾ:Z

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

    const-class v2, Lⁱי/ᵎˊ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lⁱי/ᵎˊ;

    iget-wide v2, p0, Lⁱי/ᵎˊ;->ⁱˊ:J

    iget-wide v4, p1, Lⁱי/ᵎˊ;->ⁱˊ:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lⁱי/ᵎˊ;->ʽ:J

    iget-wide v4, p1, Lⁱי/ᵎˊ;->ʽ:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lⁱי/ᵎˊ;->ˈ:J

    iget-wide v4, p1, Lⁱי/ᵎˊ;->ˈ:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lⁱי/ᵎˊ;->ˑﹳ:J

    iget-wide v4, p1, Lⁱי/ᵎˊ;->ˑﹳ:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lⁱי/ᵎˊ;->ﾞᴵ:Z

    iget-boolean v3, p1, Lⁱי/ᵎˊ;->ﾞᴵ:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lⁱי/ᵎˊ;->ᵎﹶ:Z

    iget-boolean v3, p1, Lⁱי/ᵎˊ;->ᵎﹶ:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lⁱי/ᵎˊ;->ᵔᵢ:Z

    iget-boolean v3, p1, Lⁱי/ᵎˊ;->ᵔᵢ:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lⁱי/ᵎˊ;->ʼˎ:Z

    iget-boolean v3, p1, Lⁱי/ᵎˊ;->ʼˎ:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lⁱי/ᵎˊ;->ˆʾ:Z

    iget-boolean v3, p1, Lⁱי/ᵎˊ;->ˆʾ:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lⁱי/ᵎˊ;->ﹳٴ:Lﹳᵢ/ᵢˏ;

    iget-object p1, p1, Lⁱי/ᵎˊ;->ﹳٴ:Lﹳᵢ/ᵢˏ;

    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lⁱי/ᵎˊ;->ﹳٴ:Lﹳᵢ/ᵢˏ;

    invoke-virtual {v0}, Lﹳᵢ/ᵢˏ;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lⁱי/ᵎˊ;->ⁱˊ:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lⁱי/ᵎˊ;->ʽ:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lⁱי/ᵎˊ;->ˈ:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lⁱי/ᵎˊ;->ˑﹳ:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lⁱי/ᵎˊ;->ﾞᴵ:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lⁱי/ᵎˊ;->ᵎﹶ:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lⁱי/ᵎˊ;->ᵔᵢ:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lⁱי/ᵎˊ;->ʼˎ:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lⁱי/ᵎˊ;->ˆʾ:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public final ⁱˊ(J)Lⁱי/ᵎˊ;
    .locals 17

    .prologue
    move-object/from16 v0, p0

    iget-wide v1, v0, Lⁱי/ᵎˊ;->ⁱˊ:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Lⁱי/ᵎˊ;

    iget-boolean v15, v0, Lⁱי/ᵎˊ;->ʼˎ:Z

    iget-boolean v1, v0, Lⁱי/ᵎˊ;->ˆʾ:Z

    iget-object v3, v0, Lⁱי/ᵎˊ;->ﹳٴ:Lﹳᵢ/ᵢˏ;

    iget-wide v6, v0, Lⁱי/ᵎˊ;->ʽ:J

    iget-wide v8, v0, Lⁱי/ᵎˊ;->ˈ:J

    iget-wide v10, v0, Lⁱי/ᵎˊ;->ˑﹳ:J

    iget-boolean v12, v0, Lⁱי/ᵎˊ;->ﾞᴵ:Z

    iget-boolean v13, v0, Lⁱי/ᵎˊ;->ᵎﹶ:Z

    iget-boolean v14, v0, Lⁱי/ᵎˊ;->ᵔᵢ:Z

    move-wide/from16 v4, p1

    move/from16 v16, v1

    invoke-direct/range {v2 .. v16}, Lⁱי/ᵎˊ;-><init>(Lﹳᵢ/ᵢˏ;JJJJZZZZZ)V

    return-object v2
.end method

.method public final ﹳٴ(J)Lⁱי/ᵎˊ;
    .locals 17

    .prologue
    move-object/from16 v0, p0

    iget-wide v1, v0, Lⁱי/ᵎˊ;->ʽ:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Lⁱי/ᵎˊ;

    iget-boolean v15, v0, Lⁱי/ᵎˊ;->ʼˎ:Z

    iget-boolean v1, v0, Lⁱי/ᵎˊ;->ˆʾ:Z

    iget-object v3, v0, Lⁱי/ᵎˊ;->ﹳٴ:Lﹳᵢ/ᵢˏ;

    iget-wide v4, v0, Lⁱי/ᵎˊ;->ⁱˊ:J

    iget-wide v8, v0, Lⁱי/ᵎˊ;->ˈ:J

    iget-wide v10, v0, Lⁱי/ᵎˊ;->ˑﹳ:J

    iget-boolean v12, v0, Lⁱי/ᵎˊ;->ﾞᴵ:Z

    iget-boolean v13, v0, Lⁱי/ᵎˊ;->ᵎﹶ:Z

    iget-boolean v14, v0, Lⁱי/ᵎˊ;->ᵔᵢ:Z

    move-wide/from16 v6, p1

    move/from16 v16, v1

    invoke-direct/range {v2 .. v16}, Lⁱי/ᵎˊ;-><init>(Lﹳᵢ/ᵢˏ;JJJJZZZZZ)V

    return-object v2
.end method
