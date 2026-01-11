.class public abstract Lʼﹳ/ˉˆ;
.super Lʽⁱ/ᵎﹶ;
.source "SourceFile"


# instance fields
.field public ʽʽ:Lˋʼ/ﹳٴ;

.field public ˈٴ:Lʼﹳ/ᵎﹶ;

.field public final ᴵˊ:I

.field public ᴵᵔ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lʼﹳ/ٴﹶ;

    invoke-direct {v0}, Lʼﹳ/ٴﹶ;-><init>()V

    invoke-direct {p0, v0}, Lʽⁱ/ᵎﹶ;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(ILʼﹳ/ʽ;Lʼﹳ/ﾞʻ;)V
    .locals 8

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lʼﹳ/ˉˆ;-><init>(ILʼﹳ/ʽ;Lʼﹳ/ﾞʻ;JJ)V

    return-void
.end method

.method public constructor <init>(ILʼﹳ/ʽ;Lʼﹳ/ﾞʻ;JJ)V
    .locals 1

    new-instance v0, Lʼﹳ/ٴﹶ;

    invoke-direct {v0}, Lʼﹳ/ٴﹶ;-><init>()V

    invoke-direct {p0, v0}, Lʽⁱ/ᵎﹶ;-><init>(Ljava/lang/Object;)V

    iput p1, p0, Lʼﹳ/ˉˆ;->ᴵˊ:I

    iput-object p2, v0, Lʼﹳ/ٴﹶ;->ﹳٴ:Lʼﹳ/ʽ;

    iput-object p3, v0, Lʼﹳ/ٴﹶ;->ˑﹳ:Lʼﹳ/ﾞʻ;

    iput-wide p4, v0, Lʼﹳ/ٴﹶ;->ᵔᵢ:J

    iput-wide p6, v0, Lʼﹳ/ٴﹶ;->ʼˎ:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lˋʼ/ⁱˊ;

    check-cast v1, Lʼﹳ/ٴﹶ;

    iget-object v1, v1, Lʼﹳ/ٴﹶ;->ˑﹳ:Lʼﹳ/ﾞʻ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with message id << "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lˋʼ/ⁱˊ;

    check-cast v1, Lʼﹳ/ٴﹶ;

    iget-wide v1, v1, Lʼﹳ/ٴﹶ;->ﾞᴵ:J

    const-string v3, " >>"

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/media/session/ﹳٴ;->ˉʿ(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ʼᵢ(Lˋʼ/ﹳٴ;)V
    .locals 5

    .prologue
    iget-object v0, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    iget-object v1, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lˋʼ/ⁱˊ;

    check-cast v1, Lʼﹳ/ٴﹶ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p1, Lˎʿ/ⁱˊ;->ˈ:I

    iput v2, v1, Lʼﹳ/ٴﹶ;->ᵔʾ:I

    const/4 v2, 0x4

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    invoke-virtual {p1, v2, v3}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    iget-object v2, v1, Lʼﹳ/ٴﹶ;->ﹳٴ:Lʼﹳ/ʽ;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    iget v2, v1, Lʼﹳ/ٴﹶ;->ⁱˊ:I

    invoke-virtual {p1, v2}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Lˋʼ/ﹳٴ;->ʼᐧ(I)V

    :goto_0
    iget-object v2, v1, Lʼﹳ/ٴﹶ;->ﹳٴ:Lʼﹳ/ʽ;

    invoke-virtual {v2}, Lʼﹳ/ʽ;->ﹳٴ()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lˋʼ/ﹳٴ;->ﹳᐧ()V

    iget-object v2, v1, Lʼﹳ/ٴﹶ;->ˑﹳ:Lʼﹳ/ﾞʻ;

    iget v2, v2, Lʼﹳ/ﾞʻ;->ʾˋ:I

    invoke-virtual {p1, v2}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    iget v2, v1, Lʼﹳ/ٴﹶ;->ʽ:I

    iget v3, v1, Lʼﹳ/ٴﹶ;->ⁱˊ:I

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    iget-wide v2, v1, Lʼﹳ/ٴﹶ;->ٴﹶ:J

    invoke-virtual {p1, v2, v3}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    iget v2, v1, Lʼﹳ/ٴﹶ;->ﾞʻ:I

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    iget-wide v2, v1, Lʼﹳ/ٴﹶ;->ﾞᴵ:J

    invoke-virtual {v0, p1, v2, v3}, Lˎʿ/ʽ;->ﾞᴵ(Lˎʿ/ⁱˊ;J)V

    iget-wide v2, v1, Lʼﹳ/ٴﹶ;->ٴﹶ:J

    sget-object v4, Lʼﹳ/ˉʿ;->ᴵˊ:Lʼﹳ/ˉʿ;

    invoke-static {v2, v3, v4}, Lᴵʿ/ﹳٴ;->ⁱˊ(JLᴵʿ/ʽ;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, v1, Lʼﹳ/ٴﹶ;->ᵎﹶ:J

    invoke-virtual {v0, p1, v2, v3}, Lˎʿ/ʽ;->ﾞᴵ(Lˎʿ/ⁱˊ;J)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lˋʼ/ﹳٴ;->ﹳᐧ()V

    iget-wide v2, v1, Lʼﹳ/ٴﹶ;->ʼˎ:J

    invoke-virtual {p1, v2, v3}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    :goto_1
    iget-wide v1, v1, Lʼﹳ/ٴﹶ;->ᵔᵢ:J

    invoke-virtual {v0, p1, v1, v2}, Lˎʿ/ʽ;->ﾞᴵ(Lˎʿ/ⁱˊ;J)V

    sget-object v0, Lʼﹳ/ٴﹶ;->ˉˆ:[B

    const/16 v1, 0x10

    invoke-virtual {p1, v1, v0}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    invoke-virtual {p0, p1}, Lʼﹳ/ˉˆ;->יˉ(Lˋʼ/ﹳٴ;)V

    return-void

    :cond_2
    new-array v0, v3, [B

    fill-array-data v0, :array_1

    invoke-virtual {p1, v3, v0}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    invoke-virtual {p1, v3}, Lˋʼ/ﹳٴ;->ʼᐧ(I)V

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "SMB 3.x not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 1
        -0x2t
        0x53t
        0x4dt
        0x42t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public ʽˑ()Lʼﹳ/ˉˆ;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic ˈٴ(Lˋʼ/ﹳٴ;)V
    .locals 0

    invoke-virtual {p0, p1}, Lʼﹳ/ˉˆ;->ʼᵢ(Lˋʼ/ﹳٴ;)V

    return-void
.end method

.method public ˋˊ(Lˋʼ/ﹳٴ;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should be implemented by specific message type"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public יˉ(Lˋʼ/ﹳٴ;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should be implemented by specific message type"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ﹶˎ()I
    .locals 1

    const/high16 v0, 0x10000

    return v0
.end method
