.class public final Lיˑ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lיˑ/ⁱˊ;


# instance fields
.field public ʽ:J

.field public ˈ:I

.field public ˑﹳ:Ljava/lang/Object;

.field public ᵎﹶ:Ljava/lang/Object;

.field public ᵔᵢ:Ljava/lang/Object;

.field public ⁱˊ:J

.field public ﹳٴ:I

.field public ﾞᴵ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lˊﾞ/ᵔﹳ;Lˊﾞ/ٴᵢ;Lcom/google/android/material/datepicker/ᵔʾ;Ljava/lang/String;I)V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lיˑ/ʽ;->ˑﹳ:Ljava/lang/Object;

    iput-object p2, p0, Lיˑ/ʽ;->ﾞᴵ:Ljava/lang/Object;

    iput-object p3, p0, Lיˑ/ʽ;->ᵎﹶ:Ljava/lang/Object;

    iget p1, p3, Lcom/google/android/material/datepicker/ᵔʾ;->ʾˋ:I

    iget p2, p3, Lcom/google/android/material/datepicker/ᵔʾ;->ᴵˊ:I

    iget v0, p3, Lcom/google/android/material/datepicker/ᵔʾ;->ˈٴ:I

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x8

    iget p3, p3, Lcom/google/android/material/datepicker/ᵔʾ;->ʽʽ:I

    if-ne p3, v0, :cond_0

    mul-int p3, p2, v0

    mul-int/lit8 v1, p3, 0x8

    div-int/lit8 p3, p3, 0xa

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lיˑ/ʽ;->ﹳٴ:I

    new-instance v0, Lʽⁱ/ᵔﹳ;

    invoke-direct {v0}, Lʽⁱ/ᵔﹳ;-><init>()V

    const-string v2, "audio/wav"

    invoke-static {v2}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    invoke-static {p4}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iput v1, v0, Lʽⁱ/ᵔﹳ;->ᵔᵢ:I

    iput v1, v0, Lʽⁱ/ᵔﹳ;->ʼˎ:I

    iput p3, v0, Lʽⁱ/ᵔﹳ;->ᵔʾ:I

    iput p1, v0, Lʽⁱ/ᵔﹳ;->ᴵᵔ:I

    iput p2, v0, Lʽⁱ/ᵔﹳ;->ˊʻ:I

    iput p5, v0, Lʽⁱ/ᵔﹳ;->ٴᵢ:I

    new-instance p1, Lʽⁱ/ﹳᐧ;

    invoke-direct {p1, v0}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    iput-object p1, p0, Lיˑ/ʽ;->ᵔᵢ:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Expected block size: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; got: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public ʽ(J)V
    .locals 0

    iput-wide p1, p0, Lיˑ/ʽ;->ⁱˊ:J

    const/4 p1, 0x0

    iput p1, p0, Lיˑ/ʽ;->ˈ:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lיˑ/ʽ;->ʽ:J

    return-void
.end method

.method public ⁱˊ(IJ)V
    .locals 7

    new-instance v0, Lיˑ/ﾞᴵ;

    iget-object v1, p0, Lיˑ/ʽ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/datepicker/ᵔʾ;

    const/4 v2, 0x1

    int-to-long v3, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lיˑ/ﾞᴵ;-><init>(Lcom/google/android/material/datepicker/ᵔʾ;IJJ)V

    iget-object p1, p0, Lיˑ/ʽ;->ˑﹳ:Ljava/lang/Object;

    check-cast p1, Lˊﾞ/ᵔﹳ;

    invoke-interface {p1, v0}, Lˊﾞ/ᵔﹳ;->ˑﹳ(Lˊﾞ/ʾˋ;)V

    iget-object p1, p0, Lיˑ/ʽ;->ﾞᴵ:Ljava/lang/Object;

    check-cast p1, Lˊﾞ/ٴᵢ;

    iget-object p2, p0, Lיˑ/ʽ;->ᵔᵢ:Ljava/lang/Object;

    check-cast p2, Lʽⁱ/ﹳᐧ;

    invoke-interface {p1, p2}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    return-void
.end method

.method public ﹳٴ(Lˊﾞ/ʼᐧ;J)Z
    .locals 18

    .prologue
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x1

    if-lez v5, :cond_1

    iget v7, v0, Lיˑ/ʽ;->ˈ:I

    iget v8, v0, Lיˑ/ʽ;->ﹳٴ:I

    if-ge v7, v8, :cond_1

    sub-int/2addr v8, v7

    int-to-long v7, v8

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v5, v7

    iget-object v7, v0, Lיˑ/ʽ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v7, Lˊﾞ/ٴᵢ;

    move-object/from16 v8, p1

    invoke-interface {v7, v8, v5, v6}, Lˊﾞ/ٴᵢ;->ʽ(Lʽⁱ/ˆʾ;IZ)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    move-wide v1, v3

    goto :goto_0

    :cond_0
    iget v3, v0, Lיˑ/ʽ;->ˈ:I

    add-int/2addr v3, v5

    iput v3, v0, Lיˑ/ʽ;->ˈ:I

    int-to-long v3, v5

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lיˑ/ʽ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/datepicker/ᵔʾ;

    iget v2, v1, Lcom/google/android/material/datepicker/ᵔʾ;->ʽʽ:I

    iget v3, v0, Lיˑ/ʽ;->ˈ:I

    div-int/2addr v3, v2

    if-lez v3, :cond_2

    iget-wide v7, v0, Lיˑ/ʽ;->ⁱˊ:J

    iget-wide v9, v0, Lיˑ/ʽ;->ʽ:J

    iget v1, v1, Lcom/google/android/material/datepicker/ᵔʾ;->ᴵˊ:I

    int-to-long v13, v1

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v15, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v11, 0xf4240

    invoke-static/range {v9 .. v15}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    add-long v12, v7, v9

    mul-int v15, v3, v2

    iget v1, v0, Lיˑ/ʽ;->ˈ:I

    sub-int v16, v1, v15

    iget-object v1, v0, Lיˑ/ʽ;->ﾞᴵ:Ljava/lang/Object;

    move-object v11, v1

    check-cast v11, Lˊﾞ/ٴᵢ;

    const/4 v14, 0x1

    const/16 v17, 0x0

    invoke-interface/range {v11 .. v17}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    move/from16 v1, v16

    iget-wide v7, v0, Lיˑ/ʽ;->ʽ:J

    int-to-long v2, v3

    add-long/2addr v7, v2

    iput-wide v7, v0, Lיˑ/ʽ;->ʽ:J

    iput v1, v0, Lיˑ/ʽ;->ˈ:I

    :cond_2
    if-gtz v5, :cond_3

    return v6

    :cond_3
    const/4 v1, 0x0

    return v1
.end method
