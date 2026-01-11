.class public final Lˆˑ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Lˊﾞ/ﾞᴵ;

.field public final ˈ:I

.field public final ⁱˊ:Lˊﾞ/ʼˎ;

.field public final ﹳٴ:Lˊﾞ/ˑﹳ;


# direct methods
.method public constructor <init>(Lˊﾞ/ᵎﹶ;Lˊﾞ/ʼˎ;JJJJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lˆˑ/ﹳٴ;->ⁱˊ:Lˊﾞ/ʼˎ;

    iput p13, p0, Lˆˑ/ﹳٴ;->ˈ:I

    move-object p2, p1

    new-instance p1, Lˊﾞ/ˑﹳ;

    invoke-direct/range {p1 .. p12}, Lˊﾞ/ˑﹳ;-><init>(Lˊﾞ/ᵎﹶ;JJJJJ)V

    iput-object p1, p0, Lˆˑ/ﹳٴ;->ﹳٴ:Lˊﾞ/ˑﹳ;

    return-void
.end method

.method public static ʽ(Lˊﾞ/ʼᐧ;JLʽⁱ/ˏי;)I
    .locals 2

    .prologue
    invoke-interface {p0}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-wide p1, p3, Lʽⁱ/ˏי;->ﹳٴ:J

    const/4 p0, 0x1

    return p0
.end method

.method public static ﹳٴ(I[B)I
    .locals 2

    aget-byte v0, p1, p0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p0, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p0, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x3

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final ˈ(J)V
    .locals 16

    .prologue
    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    iget-object v1, v0, Lˆˑ/ﹳٴ;->ʽ:Lˊﾞ/ﾞᴵ;

    if-eqz v1, :cond_0

    iget-wide v4, v1, Lˊﾞ/ﾞᴵ;->ﹳٴ:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lˊﾞ/ﾞᴵ;

    iget-object v4, v0, Lˆˑ/ﹳٴ;->ﹳٴ:Lˊﾞ/ˑﹳ;

    iget-object v5, v4, Lˊﾞ/ˑﹳ;->ﹳٴ:Lˊﾞ/ᵎﹶ;

    invoke-interface {v5, v2, v3}, Lˊﾞ/ᵎﹶ;->ٴﹶ(J)J

    move-result-wide v5

    move-wide v8, v5

    iget-wide v6, v4, Lˊﾞ/ˑﹳ;->ʽ:J

    move-wide v10, v8

    iget-wide v8, v4, Lˊﾞ/ˑﹳ;->ˈ:J

    move-wide v12, v10

    iget-wide v10, v4, Lˊﾞ/ˑﹳ;->ˑﹳ:J

    iget-wide v4, v4, Lˊﾞ/ˑﹳ;->ﾞᴵ:J

    move-wide v14, v12

    move-wide v12, v4

    move-wide v4, v14

    invoke-direct/range {v1 .. v13}, Lˊﾞ/ﾞᴵ;-><init>(JJJJJJ)V

    iput-object v1, v0, Lˆˑ/ﹳٴ;->ʽ:Lˊﾞ/ﾞᴵ;

    return-void
.end method

.method public final ⁱˊ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I
    .locals 27

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :goto_0
    iget-object v3, v0, Lˆˑ/ﹳٴ;->ʽ:Lˊﾞ/ﾞᴵ;

    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-wide v4, v3, Lˊﾞ/ﾞᴵ;->ﾞᴵ:J

    iget-wide v6, v3, Lˊﾞ/ﾞᴵ;->ᵎﹶ:J

    iget-wide v8, v3, Lˊﾞ/ﾞᴵ;->ᵔᵢ:J

    sub-long/2addr v6, v4

    iget v10, v0, Lˆˑ/ﹳٴ;->ˈ:I

    int-to-long v10, v10

    cmp-long v6, v6, v10

    const/4 v7, 0x0

    iget-object v10, v0, Lˆˑ/ﹳٴ;->ⁱˊ:Lˊﾞ/ʼˎ;

    if-gtz v6, :cond_0

    iput-object v7, v0, Lˆˑ/ﹳٴ;->ʽ:Lˊﾞ/ﾞᴵ;

    invoke-interface {v10}, Lˊﾞ/ʼˎ;->ﾞᴵ()V

    invoke-static {v1, v4, v5, v2}, Lˆˑ/ﹳٴ;->ʽ(Lˊﾞ/ʼᐧ;JLʽⁱ/ˏי;)I

    move-result v1

    return v1

    :cond_0
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v4

    sub-long v4, v8, v4

    const-wide/16 v11, 0x0

    cmp-long v6, v4, v11

    if-ltz v6, :cond_6

    const-wide/32 v13, 0x40000

    cmp-long v6, v4, v13

    if-gtz v6, :cond_6

    long-to-int v4, v4

    invoke-interface {v1, v4}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    iget-wide v4, v3, Lˊﾞ/ﾞᴵ;->ⁱˊ:J

    invoke-interface {v10, v1, v4, v5}, Lˊﾞ/ʼˎ;->ʽ(Lˊﾞ/ʼᐧ;J)Lˊﾞ/ᵔᵢ;

    move-result-object v4

    iget v5, v4, Lˊﾞ/ᵔᵢ;->ﹳٴ:I

    move-wide v15, v11

    iget-wide v11, v4, Lˊﾞ/ᵔᵢ;->ⁱˊ:J

    move-wide/from16 v17, v13

    iget-wide v13, v4, Lˊﾞ/ᵔᵢ;->ʽ:J

    const/4 v4, -0x3

    if-eq v5, v4, :cond_5

    const/4 v4, -0x2

    if-eq v5, v4, :cond_4

    const/4 v4, -0x1

    if-eq v5, v4, :cond_3

    if-nez v5, :cond_2

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v3

    sub-long v3, v13, v3

    cmp-long v5, v3, v15

    if-ltz v5, :cond_1

    cmp-long v5, v3, v17

    if-gtz v5, :cond_1

    long-to-int v3, v3

    invoke-interface {v1, v3}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    :cond_1
    iput-object v7, v0, Lˆˑ/ﹳٴ;->ʽ:Lˊﾞ/ﾞᴵ;

    invoke-interface {v10}, Lˊﾞ/ʼˎ;->ﾞᴵ()V

    invoke-static {v1, v13, v14, v2}, Lˆˑ/ﹳٴ;->ʽ(Lˊﾞ/ʼᐧ;JLʽⁱ/ˏי;)I

    move-result v1

    return v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid case"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iput-wide v11, v3, Lˊﾞ/ﾞᴵ;->ˑﹳ:J

    iput-wide v13, v3, Lˊﾞ/ﾞᴵ;->ᵎﹶ:J

    iget-wide v4, v3, Lˊﾞ/ﾞᴵ;->ⁱˊ:J

    iget-wide v6, v3, Lˊﾞ/ﾞᴵ;->ˈ:J

    iget-wide v8, v3, Lˊﾞ/ﾞᴵ;->ﾞᴵ:J

    move-wide v15, v4

    iget-wide v4, v3, Lˊﾞ/ﾞᴵ;->ʽ:J

    move-wide/from16 v25, v4

    move-wide/from16 v17, v6

    move-wide/from16 v21, v8

    move-wide/from16 v19, v11

    move-wide/from16 v23, v13

    invoke-static/range {v15 .. v26}, Lˊﾞ/ﾞᴵ;->ﹳٴ(JJJJJJ)J

    move-result-wide v4

    iput-wide v4, v3, Lˊﾞ/ﾞᴵ;->ᵔᵢ:J

    goto/16 :goto_0

    :cond_4
    move-wide v4, v11

    move-wide v6, v13

    iput-wide v4, v3, Lˊﾞ/ﾞᴵ;->ˈ:J

    iput-wide v6, v3, Lˊﾞ/ﾞᴵ;->ﾞᴵ:J

    iget-wide v8, v3, Lˊﾞ/ﾞᴵ;->ⁱˊ:J

    iget-wide v10, v3, Lˊﾞ/ﾞᴵ;->ˑﹳ:J

    iget-wide v12, v3, Lˊﾞ/ﾞᴵ;->ᵎﹶ:J

    iget-wide v14, v3, Lˊﾞ/ﾞᴵ;->ʽ:J

    move-wide/from16 v17, v4

    move-wide/from16 v21, v6

    move-wide/from16 v19, v10

    move-wide/from16 v23, v12

    move-wide/from16 v25, v14

    move-wide v15, v8

    invoke-static/range {v15 .. v26}, Lˊﾞ/ﾞᴵ;->ﹳٴ(JJJJJJ)J

    move-result-wide v4

    iput-wide v4, v3, Lˊﾞ/ﾞᴵ;->ᵔᵢ:J

    goto/16 :goto_0

    :cond_5
    iput-object v7, v0, Lˆˑ/ﹳٴ;->ʽ:Lˊﾞ/ﾞᴵ;

    invoke-interface {v10}, Lˊﾞ/ʼˎ;->ﾞᴵ()V

    invoke-static {v1, v8, v9, v2}, Lˆˑ/ﹳٴ;->ʽ(Lˊﾞ/ʼᐧ;JLʽⁱ/ˏי;)I

    move-result v1

    return v1

    :cond_6
    invoke-static {v1, v8, v9, v2}, Lˆˑ/ﹳٴ;->ʽ(Lˊﾞ/ʼᐧ;JLʽⁱ/ˏי;)I

    move-result v1

    return v1
.end method
