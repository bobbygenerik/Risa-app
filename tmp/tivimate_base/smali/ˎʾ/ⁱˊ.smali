.class public final Lˎʾ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˎʾ/ʼˎ;


# instance fields
.field public ʽ:Lˊﾞ/ٴᵢ;

.field public ˈ:I

.field public ˑﹳ:J

.field public ᵎﹶ:J

.field public final ⁱˊ:Lʻᴵ/ʻٴ;

.field public final ﹳٴ:Lˈـ/ﾞʻ;

.field public ﾞᴵ:J


# direct methods
.method public constructor <init>(Lˈـ/ﾞʻ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎʾ/ⁱˊ;->ﹳٴ:Lˈـ/ﾞʻ;

    new-instance p1, Lʻᴵ/ʻٴ;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lʻᴵ/ʻٴ;-><init>(I)V

    iput-object p1, p0, Lˎʾ/ⁱˊ;->ⁱˊ:Lʻᴵ/ʻٴ;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lˎʾ/ⁱˊ;->ˑﹳ:J

    return-void
.end method


# virtual methods
.method public final ʽ(J)V
    .locals 4

    .prologue
    iget-wide v0, p0, Lˎʾ/ⁱˊ;->ˑﹳ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput-wide p1, p0, Lˎʾ/ⁱˊ;->ˑﹳ:J

    return-void
.end method

.method public final ˈ(Lˊﾞ/ᵔﹳ;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object p1

    iput-object p1, p0, Lˎʾ/ⁱˊ;->ʽ:Lˊﾞ/ٴᵢ;

    iget-object p2, p0, Lˎʾ/ⁱˊ;->ﹳٴ:Lˈـ/ﾞʻ;

    iget-object p2, p2, Lˈـ/ﾞʻ;->ʽ:Lʽⁱ/ﹳᐧ;

    invoke-interface {p1, p2}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    return-void
.end method

.method public final ⁱˊ(JJ)V
    .locals 0

    iput-wide p1, p0, Lˎʾ/ⁱˊ;->ˑﹳ:J

    iput-wide p3, p0, Lˎʾ/ⁱˊ;->ᵎﹶ:J

    return-void
.end method

.method public final ﹳٴ(Lᐧˎ/ﹳᐧ;JIZ)V
    .locals 22

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v2

    const/4 v3, 0x3

    and-int/2addr v2, v3

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    iget-wide v6, v0, Lˎʾ/ⁱˊ;->ᵎﹶ:J

    iget-wide v10, v0, Lˎʾ/ⁱˊ;->ˑﹳ:J

    iget-object v5, v0, Lˎʾ/ⁱˊ;->ﹳٴ:Lˈـ/ﾞʻ;

    iget v5, v5, Lˈـ/ﾞʻ;->ⁱˊ:I

    move-wide/from16 v8, p2

    invoke-static/range {v5 .. v11}, Lcom/bumptech/glide/ʽ;->ᴵᵔ(IJJJ)J

    move-result-wide v13

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v7, :cond_1

    if-eq v2, v6, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v10, v0, Lˎʾ/ⁱˊ;->ˈ:I

    if-lez v10, :cond_2

    iget-object v6, v0, Lˎʾ/ⁱˊ;->ʽ:Lˊﾞ/ٴᵢ;

    sget-object v4, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    iget-wide v7, v0, Lˎʾ/ⁱˊ;->ﾞᴵ:J

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v6 .. v12}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iput v5, v0, Lˎʾ/ⁱˊ;->ˈ:I

    :cond_2
    :goto_0
    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v4

    iget-object v6, v0, Lˎʾ/ⁱˊ;->ʽ:Lˊﾞ/ٴᵢ;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v6, v4, v1}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget v1, v0, Lˎʾ/ⁱˊ;->ˈ:I

    add-int/2addr v1, v4

    iput v1, v0, Lˎʾ/ⁱˊ;->ˈ:I

    iput-wide v13, v0, Lˎʾ/ⁱˊ;->ﾞᴵ:J

    if-eqz p5, :cond_6

    if-ne v2, v3, :cond_6

    iget-object v12, v0, Lˎʾ/ⁱˊ;->ʽ:Lˊﾞ/ٴᵢ;

    sget-object v2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x1

    move/from16 v16, v1

    invoke-interface/range {v12 .. v18}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iput v5, v0, Lˎʾ/ⁱˊ;->ˈ:I

    return-void

    :cond_3
    iget v2, v0, Lˎʾ/ⁱˊ;->ˈ:I

    if-lez v2, :cond_4

    iget-object v15, v0, Lˎʾ/ⁱˊ;->ʽ:Lˊﾞ/ٴᵢ;

    sget-object v3, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    iget-wide v8, v0, Lˎʾ/ⁱˊ;->ﾞᴵ:J

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x1

    move/from16 v19, v2

    move-wide/from16 v16, v8

    invoke-interface/range {v15 .. v21}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iput v5, v0, Lˎʾ/ⁱˊ;->ˈ:I

    :cond_4
    if-ne v4, v7, :cond_5

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v2

    iget-object v3, v0, Lˎʾ/ⁱˊ;->ʽ:Lˊﾞ/ٴᵢ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3, v2, v1}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget-object v12, v0, Lˎʾ/ⁱˊ;->ʽ:Lˊﾞ/ٴᵢ;

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x1

    move/from16 v16, v2

    invoke-interface/range {v12 .. v18}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    return-void

    :cond_5
    iget-object v2, v1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget-object v3, v0, Lˎʾ/ⁱˊ;->ⁱˊ:Lʻᴵ/ʻٴ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v7, v2

    invoke-virtual {v3, v7, v2}, Lʻᴵ/ʻٴ;->יـ(I[B)V

    invoke-virtual {v3, v6}, Lʻᴵ/ʻٴ;->ʼʼ(I)V

    move-wide v7, v13

    :goto_1
    if-ge v5, v4, :cond_6

    invoke-static {v3}, Lˊﾞ/ﹳٴ;->ˉˆ(Lʻᴵ/ʻٴ;)Lˊﾞ/ⁱˊ;

    move-result-object v2

    iget v13, v2, Lˊﾞ/ⁱˊ;->ˈ:I

    iget-object v6, v0, Lˎʾ/ⁱˊ;->ʽ:Lˊﾞ/ٴᵢ;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v6, v13, v1}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget-object v6, v0, Lˎʾ/ⁱˊ;->ʽ:Lˊﾞ/ٴᵢ;

    sget-object v9, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    iget v10, v2, Lˊﾞ/ⁱˊ;->ˈ:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v6 .. v12}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iget v6, v2, Lˊﾞ/ⁱˊ;->ˑﹳ:I

    iget v2, v2, Lˊﾞ/ⁱˊ;->ⁱˊ:I

    div-int/2addr v6, v2

    int-to-long v9, v6

    const-wide/32 v11, 0xf4240

    mul-long/2addr v9, v11

    add-long/2addr v7, v9

    invoke-virtual {v3, v13}, Lʻᴵ/ʻٴ;->ʼʼ(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method
