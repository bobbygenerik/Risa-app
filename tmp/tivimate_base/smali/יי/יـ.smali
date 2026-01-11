.class public final Lיי/יـ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lיי/ʼˎ;


# instance fields
.field public final ʼˎ:Lˋˋ/ˉٴ;

.field public ʽ:Lˊﾞ/ٴᵢ;

.field public final ˆʾ:Lˋˋ/ˉٴ;

.field public ˈ:Lיי/ﹳᐧ;

.field public ˉʿ:J

.field public ˑﹳ:Z

.field public final ٴﹶ:Lˋˋ/ˉٴ;

.field public final ᵎﹶ:Lˋˋ/ˉٴ;

.field public final ᵔʾ:Lᐧˎ/ﹳᐧ;

.field public final ᵔᵢ:Lˋˋ/ˉٴ;

.field public ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Lcom/parse/ٴʼ;

.field public ﾞʻ:J

.field public final ﾞᴵ:[Z


# direct methods
.method public constructor <init>(Lcom/parse/ٴʼ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lיי/יـ;->ﹳٴ:Lcom/parse/ٴʼ;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lיי/יـ;->ﾞᴵ:[Z

    new-instance p1, Lˋˋ/ˉٴ;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lˋˋ/ˉٴ;-><init>(I)V

    iput-object p1, p0, Lיי/יـ;->ᵎﹶ:Lˋˋ/ˉٴ;

    new-instance p1, Lˋˋ/ˉٴ;

    const/16 v0, 0x21

    invoke-direct {p1, v0}, Lˋˋ/ˉٴ;-><init>(I)V

    iput-object p1, p0, Lיי/יـ;->ᵔᵢ:Lˋˋ/ˉٴ;

    new-instance p1, Lˋˋ/ˉٴ;

    const/16 v0, 0x22

    invoke-direct {p1, v0}, Lˋˋ/ˉٴ;-><init>(I)V

    iput-object p1, p0, Lיי/יـ;->ʼˎ:Lˋˋ/ˉٴ;

    new-instance p1, Lˋˋ/ˉٴ;

    const/16 v0, 0x27

    invoke-direct {p1, v0}, Lˋˋ/ˉٴ;-><init>(I)V

    iput-object p1, p0, Lיי/יـ;->ˆʾ:Lˋˋ/ˉٴ;

    new-instance p1, Lˋˋ/ˉٴ;

    const/16 v0, 0x28

    invoke-direct {p1, v0}, Lˋˋ/ˉٴ;-><init>(I)V

    iput-object p1, p0, Lיי/יـ;->ٴﹶ:Lˋˋ/ˉٴ;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lיי/יـ;->ˉʿ:J

    new-instance p1, Lᐧˎ/ﹳᐧ;

    invoke-direct {p1}, Lᐧˎ/ﹳᐧ;-><init>()V

    iput-object p1, p0, Lיי/יـ;->ᵔʾ:Lᐧˎ/ﹳᐧ;

    return-void
.end method


# virtual methods
.method public final ʽ(Lᐧˎ/ﹳᐧ;)V
    .locals 12

    .prologue
    iget-object v1, p0, Lיי/יـ;->ʽ:Lˊﾞ/ٴᵢ;

    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v1

    if-lez v1, :cond_5

    iget v1, p1, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    iget v7, p1, Lᐧˎ/ﹳᐧ;->ʽ:I

    iget-object v8, p1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget-wide v2, p0, Lיי/יـ;->ﾞʻ:J

    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lיי/יـ;->ﾞʻ:J

    iget-object v2, p0, Lיי/יـ;->ʽ:Lˊﾞ/ٴᵢ;

    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v3

    invoke-interface {v2, v3, p1}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    :goto_0
    if-ge v1, v7, :cond_0

    iget-object v2, p0, Lיי/יـ;->ﾞᴵ:[Z

    invoke-static {v8, v1, v7, v2}, Lʻᴵ/ﹳᐧ;->ⁱˊ([BII[Z)I

    move-result v2

    if-ne v2, v7, :cond_1

    invoke-virtual {p0, v8, v1, v7}, Lיי/יـ;->ᵎﹶ([BII)V

    return-void

    :cond_1
    add-int/lit8 v3, v2, 0x3

    aget-byte v3, v8, v3

    and-int/lit8 v3, v3, 0x7e

    shr-int/lit8 v9, v3, 0x1

    if-lez v2, :cond_2

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, v8, v3

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x4

    :goto_1
    move v10, v2

    move v11, v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x3

    goto :goto_1

    :goto_2
    sub-int v2, v10, v1

    if-lez v2, :cond_3

    invoke-virtual {p0, v8, v1, v10}, Lיי/יـ;->ᵎﹶ([BII)V

    :cond_3
    sub-int v1, v7, v10

    iget-wide v3, p0, Lיי/יـ;->ﾞʻ:J

    int-to-long v5, v1

    sub-long/2addr v3, v5

    if-gez v2, :cond_4

    neg-int v2, v2

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    iget-wide v5, p0, Lיי/יـ;->ˉʿ:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lיי/יـ;->ﹳٴ(IIJJ)V

    iget-wide v5, p0, Lיי/יـ;->ˉʿ:J

    move v2, v9

    invoke-virtual/range {v0 .. v6}, Lיי/יـ;->ᵔᵢ(IIJJ)V

    add-int v1, v10, v11

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final ˈ(Z)V
    .locals 7

    .prologue
    iget-object v1, p0, Lיי/יـ;->ʽ:Lˊﾞ/ٴᵢ;

    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lיי/יـ;->ﹳٴ:Lcom/parse/ٴʼ;

    iget-object v1, v1, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lʻᴵ/ʼʼ;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lʻᴵ/ʼʼ;->ʼˎ(I)V

    iget-wide v3, p0, Lיי/יـ;->ﾞʻ:J

    iget-wide v5, p0, Lיי/יـ;->ˉʿ:J

    const/4 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lיי/יـ;->ﹳٴ(IIJJ)V

    iget-wide v3, p0, Lיי/יـ;->ﾞʻ:J

    const/16 v2, 0x30

    iget-wide v5, p0, Lיי/יـ;->ˉʿ:J

    invoke-virtual/range {v0 .. v6}, Lיי/יـ;->ᵔᵢ(IIJJ)V

    :cond_0
    return-void
.end method

.method public final ˑﹳ(IJ)V
    .locals 0

    iput-wide p2, p0, Lיי/יـ;->ˉʿ:J

    return-void
.end method

.method public final ᵎﹶ([BII)V
    .locals 3

    .prologue
    iget-object v0, p0, Lיי/יـ;->ˈ:Lיי/ﹳᐧ;

    iget-boolean v1, v0, Lיי/ﹳᐧ;->ﾞᴵ:Z

    if-eqz v1, :cond_2

    add-int/lit8 v1, p2, 0x2

    iget v2, v0, Lיי/ﹳᐧ;->ˈ:I

    sub-int/2addr v1, v2

    if-ge v1, p3, :cond_1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lיי/ﹳᐧ;->ᵎﹶ:Z

    iput-boolean v2, v0, Lיי/ﹳᐧ;->ﾞᴵ:Z

    goto :goto_1

    :cond_1
    sub-int v1, p3, p2

    add-int/2addr v1, v2

    iput v1, v0, Lיי/ﹳᐧ;->ˈ:I

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lיי/יـ;->ˑﹳ:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lיי/יـ;->ᵎﹶ:Lˋˋ/ˉٴ;

    invoke-virtual {v0, p1, p2, p3}, Lˋˋ/ˉٴ;->ﹳٴ([BII)V

    iget-object v0, p0, Lיי/יـ;->ᵔᵢ:Lˋˋ/ˉٴ;

    invoke-virtual {v0, p1, p2, p3}, Lˋˋ/ˉٴ;->ﹳٴ([BII)V

    iget-object v0, p0, Lיי/יـ;->ʼˎ:Lˋˋ/ˉٴ;

    invoke-virtual {v0, p1, p2, p3}, Lˋˋ/ˉٴ;->ﹳٴ([BII)V

    :cond_3
    iget-object v0, p0, Lיי/יـ;->ˆʾ:Lˋˋ/ˉٴ;

    invoke-virtual {v0, p1, p2, p3}, Lˋˋ/ˉٴ;->ﹳٴ([BII)V

    iget-object v0, p0, Lיי/יـ;->ٴﹶ:Lˋˋ/ˉٴ;

    invoke-virtual {v0, p1, p2, p3}, Lˋˋ/ˉٴ;->ﹳٴ([BII)V

    return-void
.end method

.method public final ᵔᵢ(IIJJ)V
    .locals 3

    .prologue
    iget-object v0, p0, Lיי/יـ;->ˈ:Lיי/ﹳᐧ;

    iget-boolean v1, p0, Lיי/יـ;->ˑﹳ:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Lיי/ﹳᐧ;->ᵎﹶ:Z

    iput-boolean v2, v0, Lיי/ﹳᐧ;->ᵔᵢ:Z

    iput-wide p5, v0, Lיי/ﹳᐧ;->ˑﹳ:J

    iput v2, v0, Lיי/ﹳᐧ;->ˈ:I

    iput-wide p3, v0, Lיי/ﹳᐧ;->ⁱˊ:J

    const/4 p3, 0x1

    const/16 p4, 0x20

    if-lt p2, p4, :cond_5

    const/16 p5, 0x28

    if-ne p2, p5, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p5, v0, Lיי/ﹳᐧ;->ʼˎ:Z

    if-eqz p5, :cond_2

    iget-boolean p5, v0, Lיי/ﹳᐧ;->ˆʾ:Z

    if-nez p5, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lיי/ﹳᐧ;->ﹳٴ(I)V

    :cond_1
    iput-boolean v2, v0, Lיי/ﹳᐧ;->ʼˎ:Z

    :cond_2
    if-gt p4, p2, :cond_3

    const/16 p1, 0x23

    if-le p2, p1, :cond_4

    :cond_3
    const/16 p1, 0x27

    if-ne p2, p1, :cond_5

    :cond_4
    iget-boolean p1, v0, Lיי/ﹳᐧ;->ˆʾ:Z

    xor-int/2addr p1, p3

    iput-boolean p1, v0, Lיי/ﹳᐧ;->ᵔᵢ:Z

    iput-boolean p3, v0, Lיי/ﹳᐧ;->ˆʾ:Z

    :cond_5
    :goto_0
    const/16 p1, 0x10

    if-lt p2, p1, :cond_6

    const/16 p1, 0x15

    if-gt p2, p1, :cond_6

    move p1, p3

    goto :goto_1

    :cond_6
    move p1, v2

    :goto_1
    iput-boolean p1, v0, Lיי/ﹳᐧ;->ʽ:Z

    if-nez p1, :cond_7

    const/16 p1, 0x9

    if-gt p2, p1, :cond_8

    :cond_7
    move v2, p3

    :cond_8
    iput-boolean v2, v0, Lיי/ﹳᐧ;->ﾞᴵ:Z

    iget-boolean p1, p0, Lיי/יـ;->ˑﹳ:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lיי/יـ;->ᵎﹶ:Lˋˋ/ˉٴ;

    invoke-virtual {p1, p2}, Lˋˋ/ˉٴ;->ᵔᵢ(I)V

    iget-object p1, p0, Lיי/יـ;->ᵔᵢ:Lˋˋ/ˉٴ;

    invoke-virtual {p1, p2}, Lˋˋ/ˉٴ;->ᵔᵢ(I)V

    iget-object p1, p0, Lיי/יـ;->ʼˎ:Lˋˋ/ˉٴ;

    invoke-virtual {p1, p2}, Lˋˋ/ˉٴ;->ᵔᵢ(I)V

    :cond_9
    iget-object p1, p0, Lיי/יـ;->ˆʾ:Lˋˋ/ˉٴ;

    invoke-virtual {p1, p2}, Lˋˋ/ˉٴ;->ᵔᵢ(I)V

    iget-object p1, p0, Lיי/יـ;->ٴﹶ:Lˋˋ/ˉٴ;

    invoke-virtual {p1, p2}, Lˋˋ/ˉٴ;->ᵔᵢ(I)V

    return-void
.end method

.method public final ⁱˊ()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lיי/יـ;->ﾞʻ:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lיי/יـ;->ˉʿ:J

    iget-object v0, p0, Lיי/יـ;->ﾞᴵ:[Z

    invoke-static {v0}, Lʻᴵ/ﹳᐧ;->ﹳٴ([Z)V

    iget-object v0, p0, Lיי/יـ;->ᵎﹶ:Lˋˋ/ˉٴ;

    invoke-virtual {v0}, Lˋˋ/ˉٴ;->ᵎﹶ()V

    iget-object v0, p0, Lיי/יـ;->ᵔᵢ:Lˋˋ/ˉٴ;

    invoke-virtual {v0}, Lˋˋ/ˉٴ;->ᵎﹶ()V

    iget-object v0, p0, Lיי/יـ;->ʼˎ:Lˋˋ/ˉٴ;

    invoke-virtual {v0}, Lˋˋ/ˉٴ;->ᵎﹶ()V

    iget-object v0, p0, Lיי/יـ;->ˆʾ:Lˋˋ/ˉٴ;

    invoke-virtual {v0}, Lˋˋ/ˉٴ;->ᵎﹶ()V

    iget-object v0, p0, Lיי/יـ;->ٴﹶ:Lˋˋ/ˉٴ;

    invoke-virtual {v0}, Lˋˋ/ˉٴ;->ᵎﹶ()V

    iget-object v0, p0, Lיי/יـ;->ﹳٴ:Lcom/parse/ٴʼ;

    iget-object v0, v0, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lʻᴵ/ʼʼ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lʻᴵ/ʼʼ;->ʼˎ(I)V

    iget-object v0, p0, Lיי/יـ;->ˈ:Lיי/ﹳᐧ;

    if-eqz v0, :cond_0

    iput-boolean v1, v0, Lיי/ﹳᐧ;->ﾞᴵ:Z

    iput-boolean v1, v0, Lיי/ﹳᐧ;->ᵎﹶ:Z

    iput-boolean v1, v0, Lיי/ﹳᐧ;->ᵔᵢ:Z

    iput-boolean v1, v0, Lיי/ﹳᐧ;->ʼˎ:Z

    iput-boolean v1, v0, Lיי/ﹳᐧ;->ˆʾ:Z

    :cond_0
    return-void
.end method

.method public final ﹳٴ(IIJJ)V
    .locals 20

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v2, p5

    iget-object v4, v0, Lיי/יـ;->ﹳٴ:Lcom/parse/ٴʼ;

    iget-object v4, v4, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    check-cast v4, Lʻᴵ/ʼʼ;

    iget-object v5, v0, Lיי/יـ;->ˈ:Lיי/ﹳᐧ;

    iget-boolean v6, v0, Lיי/יـ;->ˑﹳ:Z

    iget-boolean v7, v5, Lיי/ﹳᐧ;->ˆʾ:Z

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_0

    iget-boolean v7, v5, Lיי/ﹳᐧ;->ᵎﹶ:Z

    if-eqz v7, :cond_0

    iget-boolean v6, v5, Lיי/ﹳᐧ;->ʽ:Z

    iput-boolean v6, v5, Lיי/ﹳᐧ;->ˉʿ:Z

    iput-boolean v8, v5, Lיי/ﹳᐧ;->ˆʾ:Z

    goto :goto_0

    :cond_0
    iget-boolean v7, v5, Lיי/ﹳᐧ;->ᵔᵢ:Z

    if-nez v7, :cond_1

    iget-boolean v7, v5, Lיי/ﹳᐧ;->ᵎﹶ:Z

    if-eqz v7, :cond_3

    :cond_1
    if-eqz v6, :cond_2

    iget-boolean v6, v5, Lיי/ﹳᐧ;->ʼˎ:Z

    if-eqz v6, :cond_2

    iget-wide v6, v5, Lיי/ﹳᐧ;->ⁱˊ:J

    sub-long v6, p3, v6

    long-to-int v6, v6

    add-int v6, p1, v6

    invoke-virtual {v5, v6}, Lיי/ﹳᐧ;->ﹳٴ(I)V

    :cond_2
    iget-wide v6, v5, Lיי/ﹳᐧ;->ⁱˊ:J

    iput-wide v6, v5, Lיי/ﹳᐧ;->ٴﹶ:J

    iget-wide v6, v5, Lיי/ﹳᐧ;->ˑﹳ:J

    iput-wide v6, v5, Lיי/ﹳᐧ;->ﾞʻ:J

    iget-boolean v6, v5, Lיי/ﹳᐧ;->ʽ:Z

    iput-boolean v6, v5, Lיי/ﹳᐧ;->ˉʿ:Z

    iput-boolean v9, v5, Lיי/ﹳᐧ;->ʼˎ:Z

    :cond_3
    :goto_0
    iget-boolean v5, v0, Lיי/יـ;->ˑﹳ:Z

    if-nez v5, :cond_6

    iget-object v5, v0, Lיי/יـ;->ᵎﹶ:Lˋˋ/ˉٴ;

    invoke-virtual {v5, v1}, Lˋˋ/ˉٴ;->ˑﹳ(I)Z

    iget-object v6, v0, Lיי/יـ;->ᵔᵢ:Lˋˋ/ˉٴ;

    invoke-virtual {v6, v1}, Lˋˋ/ˉٴ;->ˑﹳ(I)Z

    iget-object v7, v0, Lיי/יـ;->ʼˎ:Lˋˋ/ˉٴ;

    invoke-virtual {v7, v1}, Lˋˋ/ˉٴ;->ˑﹳ(I)Z

    iget-boolean v10, v5, Lˋˋ/ˉٴ;->ˈ:Z

    if-eqz v10, :cond_6

    iget-boolean v10, v6, Lˋˋ/ˉٴ;->ˈ:Z

    if-eqz v10, :cond_6

    iget-boolean v10, v7, Lˋˋ/ˉٴ;->ˈ:Z

    if-eqz v10, :cond_6

    iget-object v10, v0, Lיי/יـ;->ⁱˊ:Ljava/lang/String;

    iget v11, v5, Lˋˋ/ˉٴ;->ˑﹳ:I

    iget v12, v6, Lˋˋ/ˉٴ;->ˑﹳ:I

    add-int/2addr v12, v11

    iget v13, v7, Lˋˋ/ˉٴ;->ˑﹳ:I

    add-int/2addr v12, v13

    new-array v12, v12, [B

    iget-object v13, v5, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v13, [B

    invoke-static {v13, v8, v12, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, v6, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v11, [B

    iget v13, v5, Lˋˋ/ˉٴ;->ˑﹳ:I

    iget v14, v6, Lˋˋ/ˉٴ;->ˑﹳ:I

    invoke-static {v11, v8, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, v7, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v11, [B

    iget v5, v5, Lˋˋ/ˉٴ;->ˑﹳ:I

    iget v13, v6, Lˋˋ/ˉٴ;->ˑﹳ:I

    add-int/2addr v5, v13

    iget v7, v7, Lˋˋ/ˉٴ;->ˑﹳ:I

    invoke-static {v11, v8, v12, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v6, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v5, [B

    iget v6, v6, Lˋˋ/ˉٴ;->ˑﹳ:I

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {v5, v7, v6, v8}, Lʻᴵ/ﹳᐧ;->ᵔᵢ([BIILˏˆ/ﹳٴ;)Lʻᴵ/ᵔʾ;

    move-result-object v5

    iget-object v6, v5, Lʻᴵ/ᵔʾ;->ⁱˊ:Lʻᴵ/ٴﹶ;

    if-eqz v6, :cond_4

    iget v13, v6, Lʻᴵ/ٴﹶ;->ﹳٴ:I

    iget-boolean v14, v6, Lʻᴵ/ٴﹶ;->ⁱˊ:Z

    iget v15, v6, Lʻᴵ/ٴﹶ;->ʽ:I

    iget v7, v6, Lʻᴵ/ٴﹶ;->ˈ:I

    iget-object v8, v6, Lʻᴵ/ٴﹶ;->ˑﹳ:[I

    iget v6, v6, Lʻᴵ/ٴﹶ;->ﾞᴵ:I

    move/from16 v18, v6

    move/from16 v16, v7

    move-object/from16 v17, v8

    invoke-static/range {v13 .. v18}, Lᐧˎ/ʽ;->ⁱˊ(IZII[II)Ljava/lang/String;

    move-result-object v8

    :cond_4
    new-instance v6, Lʽⁱ/ᵔﹳ;

    invoke-direct {v6}, Lʽⁱ/ᵔﹳ;-><init>()V

    iput-object v10, v6, Lʽⁱ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    const-string v7, "video/mp2t"

    invoke-static {v7}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    const-string v7, "video/hevc"

    invoke-static {v7}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iput-object v8, v6, Lʽⁱ/ᵔﹳ;->ˆʾ:Ljava/lang/String;

    iget v7, v5, Lʻᴵ/ᵔʾ;->ˑﹳ:I

    iput v7, v6, Lʽⁱ/ᵔﹳ;->ˏי:I

    iget v7, v5, Lʻᴵ/ᵔʾ;->ﾞᴵ:I

    iput v7, v6, Lʽⁱ/ᵔﹳ;->ʽﹳ:I

    iget v7, v5, Lʻᴵ/ᵔʾ;->ᵎﹶ:I

    iput v7, v6, Lʽⁱ/ᵔﹳ;->ʻٴ:I

    iget v7, v5, Lʻᴵ/ᵔʾ;->ᵔᵢ:I

    iput v7, v6, Lʽⁱ/ᵔﹳ;->ـˆ:I

    iget v14, v5, Lʻᴵ/ᵔʾ;->ٴﹶ:I

    iget v15, v5, Lʻᴵ/ᵔʾ;->ﾞʻ:I

    iget v7, v5, Lʻᴵ/ᵔʾ;->ˉʿ:I

    iget v8, v5, Lʻᴵ/ᵔʾ;->ʽ:I

    add-int/lit8 v18, v8, 0x8

    iget v8, v5, Lʻᴵ/ᵔʾ;->ˈ:I

    add-int/lit8 v19, v8, 0x8

    new-instance v13, Lʽⁱ/ʼˎ;

    const/16 v17, 0x0

    move/from16 v16, v7

    invoke-direct/range {v13 .. v19}, Lʽⁱ/ʼˎ;-><init>(III[BII)V

    iput-object v13, v6, Lʽⁱ/ᵔﹳ;->ʽʽ:Lʽⁱ/ʼˎ;

    iget v7, v5, Lʻᴵ/ᵔʾ;->ʼˎ:F

    iput v7, v6, Lʽⁱ/ᵔﹳ;->ᵢˏ:F

    iget v7, v5, Lʻᴵ/ᵔʾ;->ˆʾ:I

    iput v7, v6, Lʽⁱ/ᵔﹳ;->ˉˆ:I

    iget v5, v5, Lʻᴵ/ᵔʾ;->ﹳٴ:I

    add-int/2addr v5, v9

    iput v5, v6, Lʽⁱ/ᵔﹳ;->ˈٴ:I

    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v6, Lʽⁱ/ᵔﹳ;->ʼᐧ:Ljava/util/List;

    new-instance v5, Lʽⁱ/ﹳᐧ;

    invoke-direct {v5, v6}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    iget-object v6, v0, Lיי/יـ;->ʽ:Lˊﾞ/ٴᵢ;

    invoke-interface {v6, v5}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    const/4 v6, -0x1

    iget v5, v5, Lʽⁱ/ﹳᐧ;->ʼᐧ:I

    if-eq v5, v6, :cond_5

    invoke-virtual {v4, v5}, Lʻᴵ/ʼʼ;->ʻٴ(I)V

    iput-boolean v9, v0, Lיי/יـ;->ˑﹳ:Z

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_6
    :goto_1
    iget-object v5, v0, Lיי/יـ;->ˆʾ:Lˋˋ/ˉٴ;

    invoke-virtual {v5, v1}, Lˋˋ/ˉٴ;->ˑﹳ(I)Z

    move-result v6

    const/4 v7, 0x5

    iget-object v8, v0, Lיי/יـ;->ᵔʾ:Lᐧˎ/ﹳᐧ;

    if-eqz v6, :cond_7

    iget-object v6, v5, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v6, [B

    iget v9, v5, Lˋˋ/ˉٴ;->ˑﹳ:I

    invoke-static {v9, v6}, Lʻᴵ/ﹳᐧ;->ˉʿ(I[B)I

    move-result v6

    iget-object v5, v5, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v5, [B

    invoke-virtual {v8, v6, v5}, Lᐧˎ/ﹳᐧ;->ᵎⁱ(I[B)V

    invoke-virtual {v8, v7}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-virtual {v4, v2, v3, v8}, Lʻᴵ/ʼʼ;->ﹳٴ(JLᐧˎ/ﹳᐧ;)V

    :cond_7
    iget-object v5, v0, Lיי/יـ;->ٴﹶ:Lˋˋ/ˉٴ;

    invoke-virtual {v5, v1}, Lˋˋ/ˉٴ;->ˑﹳ(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v5, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v1, [B

    iget v6, v5, Lˋˋ/ˉٴ;->ˑﹳ:I

    invoke-static {v6, v1}, Lʻᴵ/ﹳᐧ;->ˉʿ(I[B)I

    move-result v1

    iget-object v5, v5, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v5, [B

    invoke-virtual {v8, v1, v5}, Lᐧˎ/ﹳᐧ;->ᵎⁱ(I[B)V

    invoke-virtual {v8, v7}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-virtual {v4, v2, v3, v8}, Lʻᴵ/ʼʼ;->ﹳٴ(JLᐧˎ/ﹳᐧ;)V

    :cond_8
    return-void
.end method

.method public final ﾞᴵ(Lˊﾞ/ᵔﹳ;Lיי/ٴᵢ;)V
    .locals 2

    invoke-virtual {p2}, Lיי/ٴᵢ;->ﹳٴ()V

    invoke-virtual {p2}, Lיי/ٴᵢ;->ⁱˊ()V

    iget-object v0, p2, Lיי/ٴᵢ;->ˑﹳ:Ljava/lang/String;

    iput-object v0, p0, Lיי/יـ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {p2}, Lיי/ٴᵢ;->ⁱˊ()V

    iget v0, p2, Lיי/ٴᵢ;->ˈ:I

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object v0

    iput-object v0, p0, Lיי/יـ;->ʽ:Lˊﾞ/ٴᵢ;

    new-instance v1, Lיי/ﹳᐧ;

    invoke-direct {v1, v0}, Lיי/ﹳᐧ;-><init>(Lˊﾞ/ٴᵢ;)V

    iput-object v1, p0, Lיי/יـ;->ˈ:Lיי/ﹳᐧ;

    iget-object v0, p0, Lיי/יـ;->ﹳٴ:Lcom/parse/ٴʼ;

    invoke-virtual {v0, p1, p2}, Lcom/parse/ٴʼ;->ᵎⁱ(Lˊﾞ/ᵔﹳ;Lיי/ٴᵢ;)V

    return-void
.end method
