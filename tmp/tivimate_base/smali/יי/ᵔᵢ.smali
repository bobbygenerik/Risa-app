.class public final Lיי/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lיי/ʼˎ;


# instance fields
.field public ʽ:J

.field public ˈ:I

.field public ˑﹳ:I

.field public ᵎﹶ:Ljava/lang/Object;

.field public ⁱˊ:Z

.field public final synthetic ﹳٴ:I

.field public final ﾞᴵ:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lיי/ᵔᵢ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lᐧˎ/ﹳᐧ;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iput-object v0, p0, Lיי/ᵔᵢ;->ﾞᴵ:Ljava/lang/Object;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lיי/ᵔᵢ;->ʽ:J

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lיי/ᵔᵢ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lיי/ᵔᵢ;->ﾞᴵ:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lˊﾞ/ٴᵢ;

    iput-object p1, p0, Lיי/ᵔᵢ;->ᵎﹶ:Ljava/lang/Object;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lיי/ᵔᵢ;->ʽ:J

    return-void
.end method


# virtual methods
.method public final ʽ(Lᐧˎ/ﹳᐧ;)V
    .locals 8

    .prologue
    iget v0, p0, Lיי/ᵔᵢ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lיי/ᵔᵢ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Lᐧˎ/ﹳᐧ;

    iget-object v1, p0, Lיי/ᵔᵢ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v1, Lˊﾞ/ٴᵢ;

    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-boolean v1, p0, Lיי/ᵔᵢ;->ⁱˊ:Z

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v1

    iget v2, p0, Lיי/ᵔᵢ;->ˑﹳ:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_3

    rsub-int/lit8 v2, v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v4, p1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v5, p1, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    iget-object v6, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v7, p0, Lיי/ᵔᵢ;->ˑﹳ:I

    invoke-static {v4, v5, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lיי/ᵔᵢ;->ˑﹳ:I

    add-int/2addr v4, v2

    if-ne v4, v3, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    const/16 v4, 0x49

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v5

    if-ne v4, v5, :cond_2

    const/16 v4, 0x44

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v5

    if-ne v4, v5, :cond_2

    const/16 v4, 0x33

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʾᵎ()I

    move-result v0

    add-int/2addr v0, v3

    iput v0, p0, Lיי/ᵔᵢ;->ˈ:I

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    invoke-static {p1, v0}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lיי/ᵔᵢ;->ⁱˊ:Z

    goto :goto_2

    :cond_3
    :goto_1
    iget v0, p0, Lיי/ᵔᵢ;->ˈ:I

    iget v2, p0, Lיי/ᵔᵢ;->ˑﹳ:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lיי/ᵔᵢ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v1, Lˊﾞ/ٴᵢ;

    invoke-interface {v1, v0, p1}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget p1, p0, Lיי/ᵔᵢ;->ˑﹳ:I

    add-int/2addr p1, v0

    iput p1, p0, Lיי/ᵔᵢ;->ˑﹳ:I

    :goto_2
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lיי/ᵔᵢ;->ⁱˊ:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lיי/ᵔᵢ;->ˈ:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    iput-boolean v2, p0, Lיי/ᵔᵢ;->ⁱˊ:Z

    :cond_5
    iget v0, p0, Lיי/ᵔᵢ;->ˈ:I

    sub-int/2addr v0, v3

    iput v0, p0, Lיי/ᵔᵢ;->ˈ:I

    iget-boolean v0, p0, Lיי/ᵔᵢ;->ⁱˊ:Z

    :goto_3
    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    iget v0, p0, Lיי/ᵔᵢ;->ˈ:I

    if-ne v0, v3, :cond_9

    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean v2, p0, Lיי/ᵔᵢ;->ⁱˊ:Z

    :cond_8
    iget v0, p0, Lיי/ᵔᵢ;->ˈ:I

    sub-int/2addr v0, v3

    iput v0, p0, Lיי/ᵔᵢ;->ˈ:I

    iget-boolean v0, p0, Lיי/ᵔᵢ;->ⁱˊ:Z

    :goto_4
    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    iget v0, p1, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v1

    iget-object v3, p0, Lיי/ᵔᵢ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v3, [Lˊﾞ/ٴᵢ;

    array-length v4, v3

    :goto_5
    if-ge v2, v4, :cond_a

    aget-object v5, v3, v2

    invoke-virtual {p1, v0}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-interface {v5, v1, p1}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    iget p1, p0, Lיי/ᵔᵢ;->ˑﹳ:I

    add-int/2addr p1, v1

    iput p1, p0, Lיי/ᵔᵢ;->ˑﹳ:I

    :cond_b
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ˈ(Z)V
    .locals 10

    .prologue
    iget p1, p0, Lיי/ᵔᵢ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lיי/ᵔᵢ;->ᵎﹶ:Ljava/lang/Object;

    check-cast p1, Lˊﾞ/ٴᵢ;

    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lיי/ᵔᵢ;->ⁱˊ:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lיי/ᵔᵢ;->ˈ:I

    if-eqz p1, :cond_2

    iget v0, p0, Lיי/ᵔᵢ;->ˑﹳ:I

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v0, p0, Lיי/ᵔᵢ;->ʽ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-object p1, p0, Lיי/ᵔᵢ;->ᵎﹶ:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lˊﾞ/ٴᵢ;

    iget-wide v2, p0, Lיי/ᵔᵢ;->ʽ:J

    iget v5, p0, Lיי/ᵔᵢ;->ˈ:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v7}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iput-boolean v0, p0, Lיי/ᵔᵢ;->ⁱˊ:Z

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    iget-boolean p1, p0, Lיי/ᵔᵢ;->ⁱˊ:Z

    if-eqz p1, :cond_5

    iget-wide v0, p0, Lיי/ᵔᵢ;->ʽ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    move p1, v0

    :goto_2
    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-object p1, p0, Lיי/ᵔᵢ;->ᵎﹶ:Ljava/lang/Object;

    check-cast p1, [Lˊﾞ/ٴᵢ;

    array-length v1, p1

    move v2, v0

    :goto_3
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    iget-wide v4, p0, Lיי/ᵔᵢ;->ʽ:J

    iget v7, p0, Lיי/ᵔᵢ;->ˑﹳ:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v9}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iput-boolean v0, p0, Lיי/ᵔᵢ;->ⁱˊ:Z

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ˑﹳ(IJ)V
    .locals 1

    .prologue
    iget v0, p0, Lיי/ᵔᵢ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lיי/ᵔᵢ;->ⁱˊ:Z

    iput-wide p2, p0, Lיי/ᵔᵢ;->ʽ:J

    const/4 p1, 0x0

    iput p1, p0, Lיי/ᵔᵢ;->ˈ:I

    iput p1, p0, Lיי/ᵔᵢ;->ˑﹳ:I

    :goto_0
    return-void

    :pswitch_0
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lיי/ᵔᵢ;->ⁱˊ:Z

    iput-wide p2, p0, Lיי/ᵔᵢ;->ʽ:J

    const/4 p1, 0x0

    iput p1, p0, Lיי/ᵔᵢ;->ˑﹳ:I

    const/4 p1, 0x2

    iput p1, p0, Lיי/ᵔᵢ;->ˈ:I

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ⁱˊ()V
    .locals 2

    .prologue
    iget v0, p0, Lיי/ᵔᵢ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lיי/ᵔᵢ;->ⁱˊ:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lיי/ᵔᵢ;->ʽ:J

    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lיי/ᵔᵢ;->ⁱˊ:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lיי/ᵔᵢ;->ʽ:J

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ﾞᴵ(Lˊﾞ/ᵔﹳ;Lיי/ٴᵢ;)V
    .locals 6

    .prologue
    iget v0, p0, Lיי/ᵔᵢ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Lיי/ٴᵢ;->ﹳٴ()V

    invoke-virtual {p2}, Lיי/ٴᵢ;->ⁱˊ()V

    iget v0, p2, Lיי/ٴᵢ;->ˈ:I

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object p1

    iput-object p1, p0, Lיי/ᵔᵢ;->ᵎﹶ:Ljava/lang/Object;

    new-instance v0, Lʽⁱ/ᵔﹳ;

    invoke-direct {v0}, Lʽⁱ/ᵔﹳ;-><init>()V

    invoke-virtual {p2}, Lיי/ٴᵢ;->ⁱˊ()V

    iget-object p2, p2, Lיי/ٴᵢ;->ˑﹳ:Ljava/lang/String;

    iput-object p2, v0, Lʽⁱ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    const-string p2, "video/mp2t"

    invoke-static {p2}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    const-string p2, "application/id3"

    invoke-static {p2}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    invoke-static {v0, p1}, Lﹳˎ/ˆʾ;->ﾞᴵ(Lʽⁱ/ᵔﹳ;Lˊﾞ/ٴᵢ;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lיי/ᵔᵢ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v0, [Lˊﾞ/ٴᵢ;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lיי/ᵔᵢ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lיי/ˊʻ;

    invoke-virtual {p2}, Lיי/ٴᵢ;->ﹳٴ()V

    invoke-virtual {p2}, Lיי/ٴᵢ;->ⁱˊ()V

    iget v3, p2, Lיי/ٴᵢ;->ˈ:I

    const/4 v4, 0x3

    invoke-interface {p1, v3, v4}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object v3

    new-instance v4, Lʽⁱ/ᵔﹳ;

    invoke-direct {v4}, Lʽⁱ/ᵔﹳ;-><init>()V

    invoke-virtual {p2}, Lיי/ٴᵢ;->ⁱˊ()V

    iget-object v5, p2, Lיי/ٴᵢ;->ˑﹳ:Ljava/lang/String;

    iput-object v5, v4, Lʽⁱ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    const-string v5, "video/mp2t"

    invoke-static {v5}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    const-string v5, "application/dvbsubs"

    invoke-static {v5}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iget-object v5, v2, Lיי/ˊʻ;->ⁱˊ:[B

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v4, Lʽⁱ/ᵔﹳ;->ʼᐧ:Ljava/util/List;

    iget-object v2, v2, Lיי/ˊʻ;->ﹳٴ:Ljava/lang/String;

    iput-object v2, v4, Lʽⁱ/ᵔﹳ;->ˈ:Ljava/lang/String;

    invoke-static {v4, v3}, Lﹳˎ/ˆʾ;->ﾞᴵ(Lʽⁱ/ᵔﹳ;Lˊﾞ/ٴᵢ;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
