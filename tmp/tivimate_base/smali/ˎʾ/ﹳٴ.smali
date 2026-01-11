.class public final Lˎʾ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˎʾ/ʼˎ;


# instance fields
.field public ʼˎ:J

.field public final ʽ:I

.field public final ˈ:I

.field public final ˑﹳ:I

.field public ᵎﹶ:J

.field public ᵔᵢ:Lˊﾞ/ٴᵢ;

.field public final ⁱˊ:Lʻᴵ/ʻٴ;

.field public final ﹳٴ:Lˈـ/ﾞʻ;

.field public final ﾞᴵ:I


# direct methods
.method public constructor <init>(Lˈـ/ﾞʻ;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎʾ/ﹳٴ;->ﹳٴ:Lˈـ/ﾞʻ;

    new-instance v0, Lʻᴵ/ʻٴ;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lʻᴵ/ʻٴ;-><init>(I)V

    iput-object v0, p0, Lˎʾ/ﹳٴ;->ⁱˊ:Lʻᴵ/ʻٴ;

    iget v0, p1, Lˈـ/ﾞʻ;->ⁱˊ:I

    iput v0, p0, Lˎʾ/ﹳٴ;->ʽ:I

    iget-object p1, p1, Lˈـ/ﾞʻ;->ˈ:Lʼʻ/ᵔי;

    const-string v0, "mode"

    invoke-virtual {p1, v0}, Lʼʻ/ᵔי;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "AAC-hbr"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xd

    iput p1, p0, Lˎʾ/ﹳٴ;->ˈ:I

    const/4 p1, 0x3

    iput p1, p0, Lˎʾ/ﹳٴ;->ˑﹳ:I

    goto :goto_0

    :cond_0
    const-string v0, "AAC-lbr"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    iput p1, p0, Lˎʾ/ﹳٴ;->ˈ:I

    const/4 p1, 0x2

    iput p1, p0, Lˎʾ/ﹳٴ;->ˑﹳ:I

    :goto_0
    iget p1, p0, Lˎʾ/ﹳٴ;->ˑﹳ:I

    iget v0, p0, Lˎʾ/ﹳٴ;->ˈ:I

    add-int/2addr p1, v0

    iput p1, p0, Lˎʾ/ﹳٴ;->ﾞᴵ:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "AAC mode not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ʽ(J)V
    .locals 0

    iput-wide p1, p0, Lˎʾ/ﹳٴ;->ᵎﹶ:J

    return-void
.end method

.method public final ˈ(Lˊﾞ/ᵔﹳ;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object p1

    iput-object p1, p0, Lˎʾ/ﹳٴ;->ᵔᵢ:Lˊﾞ/ٴᵢ;

    iget-object p2, p0, Lˎʾ/ﹳٴ;->ﹳٴ:Lˈـ/ﾞʻ;

    iget-object p2, p2, Lˈـ/ﾞʻ;->ʽ:Lʽⁱ/ﹳᐧ;

    invoke-interface {p1, p2}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    return-void
.end method

.method public final ⁱˊ(JJ)V
    .locals 0

    iput-wide p1, p0, Lˎʾ/ﹳٴ;->ᵎﹶ:J

    iput-wide p3, p0, Lˎʾ/ﹳٴ;->ʼˎ:J

    return-void
.end method

.method public final ﹳٴ(Lᐧˎ/ﹳᐧ;JIZ)V
    .locals 18

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lˎʾ/ﹳٴ;->ᵔᵢ:Lˊﾞ/ٴᵢ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ʻٴ()S

    move-result v2

    iget v3, v0, Lˎʾ/ﹳٴ;->ﾞᴵ:I

    div-int v3, v2, v3

    iget-wide v5, v0, Lˎʾ/ﹳٴ;->ʼˎ:J

    iget-wide v9, v0, Lˎʾ/ﹳٴ;->ᵎﹶ:J

    iget v4, v0, Lˎʾ/ﹳٴ;->ʽ:I

    move-wide/from16 v7, p2

    invoke-static/range {v4 .. v10}, Lcom/bumptech/glide/ʽ;->ᴵᵔ(IJJJ)J

    move-result-wide v12

    iget-object v4, v0, Lˎʾ/ﹳٴ;->ⁱˊ:Lʻᴵ/ʻٴ;

    invoke-virtual {v4, v1}, Lʻᴵ/ʻٴ;->ˏי(Lᐧˎ/ﹳᐧ;)V

    const/4 v5, 0x1

    iget v6, v0, Lˎʾ/ﹳٴ;->ˑﹳ:I

    iget v7, v0, Lˎʾ/ﹳٴ;->ˈ:I

    if-ne v3, v5, :cond_0

    invoke-virtual {v4, v7}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v15

    invoke-virtual {v4, v6}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    iget-object v2, v0, Lˎʾ/ﹳٴ;->ᵔᵢ:Lˊﾞ/ٴᵢ;

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v3

    invoke-interface {v2, v3, v1}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    if-eqz p5, :cond_1

    iget-object v11, v0, Lˎʾ/ﹳٴ;->ᵔᵢ:Lˊﾞ/ٴᵢ;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x1

    invoke-interface/range {v11 .. v17}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    const/4 v2, 0x0

    move-wide v9, v12

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {v4, v7}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v12

    invoke-virtual {v4, v6}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    iget-object v5, v0, Lˎʾ/ﹳٴ;->ᵔᵢ:Lˊﾞ/ٴᵢ;

    invoke-interface {v5, v12, v1}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget-object v8, v0, Lˎʾ/ﹳٴ;->ᵔᵢ:Lˊﾞ/ٴᵢ;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x1

    invoke-interface/range {v8 .. v14}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    int-to-long v11, v3

    iget v5, v0, Lˎʾ/ﹳٴ;->ʽ:I

    int-to-long v13, v5

    sget-object v17, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v15, v13

    const-wide/32 v13, 0xf4240

    invoke-static/range {v11 .. v17}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v11

    add-long/2addr v9, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
