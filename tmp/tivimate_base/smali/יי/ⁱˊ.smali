.class public final Lיי/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lיי/ʼˎ;


# instance fields
.field public ʼˎ:I

.field public final ʽ:Lᐧˎ/ﹳᐧ;

.field public ˆʾ:I

.field public final ˈ:Ljava/lang/String;

.field public ˉʿ:Lʽⁱ/ﹳᐧ;

.field public ˉˆ:J

.field public final ˑﹳ:I

.field public ٴﹶ:Z

.field public ᵎﹶ:Ljava/lang/String;

.field public ᵔʾ:I

.field public ᵔᵢ:Lˊﾞ/ٴᵢ;

.field public final ⁱˊ:Lʻᴵ/ʻٴ;

.field public final synthetic ﹳٴ:I

.field public ﾞʻ:J

.field public final ﾞᴵ:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    iput p2, p0, Lיי/ⁱˊ;->ﹳٴ:I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lʻᴵ/ʻٴ;

    const/16 v0, 0x80

    new-array v1, v0, [B

    invoke-direct {p2, v0, v1}, Lʻᴵ/ʻٴ;-><init>(I[B)V

    iput-object p2, p0, Lיי/ⁱˊ;->ⁱˊ:Lʻᴵ/ʻٴ;

    new-instance v0, Lᐧˎ/ﹳᐧ;

    iget-object p2, p2, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    invoke-direct {v0, p2}, Lᐧˎ/ﹳᐧ;-><init>([B)V

    iput-object v0, p0, Lיי/ⁱˊ;->ʽ:Lᐧˎ/ﹳᐧ;

    const/4 p2, 0x0

    iput p2, p0, Lיי/ⁱˊ;->ʼˎ:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lיי/ⁱˊ;->ˉˆ:J

    iput-object p3, p0, Lיי/ⁱˊ;->ˈ:Ljava/lang/String;

    iput p1, p0, Lיי/ⁱˊ;->ˑﹳ:I

    iput-object p4, p0, Lיי/ⁱˊ;->ﾞᴵ:Ljava/lang/String;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lʻᴵ/ʻٴ;

    const/16 v0, 0x10

    new-array v1, v0, [B

    invoke-direct {p2, v0, v1}, Lʻᴵ/ʻٴ;-><init>(I[B)V

    iput-object p2, p0, Lיי/ⁱˊ;->ⁱˊ:Lʻᴵ/ʻٴ;

    new-instance v0, Lᐧˎ/ﹳᐧ;

    iget-object p2, p2, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    invoke-direct {v0, p2}, Lᐧˎ/ﹳᐧ;-><init>([B)V

    iput-object v0, p0, Lיי/ⁱˊ;->ʽ:Lᐧˎ/ﹳᐧ;

    const/4 p2, 0x0

    iput p2, p0, Lיי/ⁱˊ;->ʼˎ:I

    iput p2, p0, Lיי/ⁱˊ;->ˆʾ:I

    iput-boolean p2, p0, Lיי/ⁱˊ;->ٴﹶ:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lיי/ⁱˊ;->ˉˆ:J

    iput-object p3, p0, Lיי/ⁱˊ;->ˈ:Ljava/lang/String;

    iput p1, p0, Lיי/ⁱˊ;->ˑﹳ:I

    iput-object p4, p0, Lיי/ⁱˊ;->ﾞᴵ:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lיי/ⁱˊ;->ﹳٴ:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lיי/ⁱˊ;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final ᵎﹶ(Z)V
    .locals 0

    return-void
.end method

.method private final ﹳٴ(Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final ʽ(Lᐧˎ/ﹳᐧ;)V
    .locals 12

    .prologue
    iget v0, p0, Lיי/ⁱˊ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lיי/ⁱˊ;->ᵔᵢ:Lˊﾞ/ٴᵢ;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v0

    if-lez v0, :cond_d

    iget v0, p0, Lיי/ⁱˊ;->ʼˎ:I

    iget-object v1, p0, Lיי/ⁱˊ;->ʽ:Lᐧˎ/ﹳᐧ;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v0

    iget v1, p0, Lיי/ⁱˊ;->ᵔʾ:I

    iget v2, p0, Lיי/ⁱˊ;->ˆʾ:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lיי/ⁱˊ;->ᵔᵢ:Lˊﾞ/ٴᵢ;

    invoke-interface {v1, v0, p1}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget v1, p0, Lיי/ⁱˊ;->ˆʾ:I

    add-int/2addr v1, v0

    iput v1, p0, Lיי/ⁱˊ;->ˆʾ:I

    iget v0, p0, Lיי/ⁱˊ;->ᵔʾ:I

    if-ne v1, v0, :cond_0

    iget-wide v0, p0, Lיי/ⁱˊ;->ˉˆ:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v5

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-object v5, p0, Lיי/ⁱˊ;->ᵔᵢ:Lˊﾞ/ٴᵢ;

    iget-wide v6, p0, Lיי/ⁱˊ;->ˉˆ:J

    iget v9, p0, Lיי/ⁱˊ;->ᵔʾ:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v5 .. v11}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iget-wide v0, p0, Lיי/ⁱˊ;->ˉˆ:J

    iget-wide v2, p0, Lיי/ⁱˊ;->ﾞʻ:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lיי/ⁱˊ;->ˉˆ:J

    iput v4, p0, Lיי/ⁱˊ;->ʼˎ:I

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v3

    iget v5, p0, Lיי/ⁱˊ;->ˆʾ:I

    const/16 v6, 0x10

    rsub-int/lit8 v5, v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v5, p0, Lיי/ⁱˊ;->ˆʾ:I

    invoke-virtual {p1, v0, v5, v3}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    iget v0, p0, Lיי/ⁱˊ;->ˆʾ:I

    add-int/2addr v0, v3

    iput v0, p0, Lיי/ⁱˊ;->ˆʾ:I

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lיי/ⁱˊ;->ⁱˊ:Lʻᴵ/ʻٴ;

    invoke-virtual {v0, v4}, Lʻᴵ/ʻٴ;->ʽﹳ(I)V

    invoke-static {v0}, Lˊﾞ/ﹳٴ;->ʼᐧ(Lʻᴵ/ʻٴ;)Lʻᴵ/ˆʾ;

    move-result-object v0

    iget v3, v0, Lʻᴵ/ˆʾ;->ﹳٴ:I

    iget-object v5, p0, Lיי/ⁱˊ;->ˉʿ:Lʽⁱ/ﹳᐧ;

    const-string v7, "audio/ac4"

    if-eqz v5, :cond_4

    iget v8, v5, Lʽⁱ/ﹳᐧ;->ˊʻ:I

    if-ne v2, v8, :cond_4

    iget v8, v5, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    if-ne v3, v8, :cond_4

    iget-object v5, v5, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    new-instance v5, Lʽⁱ/ᵔﹳ;

    invoke-direct {v5}, Lʽⁱ/ᵔﹳ;-><init>()V

    iget-object v8, p0, Lיי/ⁱˊ;->ᵎﹶ:Ljava/lang/String;

    iput-object v8, v5, Lʽⁱ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    iget-object v8, p0, Lיי/ⁱˊ;->ﾞᴵ:Ljava/lang/String;

    invoke-static {v8}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    invoke-static {v7}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iput v2, v5, Lʽⁱ/ᵔﹳ;->ᴵᵔ:I

    iput v3, v5, Lʽⁱ/ᵔﹳ;->ˊʻ:I

    iget-object v3, p0, Lיי/ⁱˊ;->ˈ:Ljava/lang/String;

    iput-object v3, v5, Lʽⁱ/ᵔﹳ;->ˈ:Ljava/lang/String;

    iget v3, p0, Lיי/ⁱˊ;->ˑﹳ:I

    iput v3, v5, Lʽⁱ/ᵔﹳ;->ﾞᴵ:I

    new-instance v3, Lʽⁱ/ﹳᐧ;

    invoke-direct {v3, v5}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    iput-object v3, p0, Lיי/ⁱˊ;->ˉʿ:Lʽⁱ/ﹳᐧ;

    iget-object v5, p0, Lיי/ⁱˊ;->ᵔᵢ:Lˊﾞ/ٴᵢ;

    invoke-interface {v5, v3}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    :cond_5
    iget v3, v0, Lʻᴵ/ˆʾ;->ⁱˊ:I

    iput v3, p0, Lיי/ⁱˊ;->ᵔʾ:I

    iget v0, v0, Lʻᴵ/ˆʾ;->ʽ:I

    int-to-long v7, v0

    const-wide/32 v9, 0xf4240

    mul-long/2addr v7, v9

    iget-object v0, p0, Lיי/ⁱˊ;->ˉʿ:Lʽⁱ/ﹳᐧ;

    iget v0, v0, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    int-to-long v9, v0

    div-long/2addr v7, v9

    iput-wide v7, p0, Lיי/ⁱˊ;->ﾞʻ:J

    invoke-virtual {v1, v4}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    iget-object v0, p0, Lיי/ⁱˊ;->ᵔᵢ:Lˊﾞ/ٴᵢ;

    invoke-interface {v0, v6, v1}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iput v2, p0, Lיי/ⁱˊ;->ʼˎ:I

    goto/16 :goto_0

    :cond_6
    :goto_2
    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lיי/ⁱˊ;->ٴﹶ:Z

    const/16 v5, 0xac

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v0

    if-ne v0, v5, :cond_7

    move v0, v3

    goto :goto_3

    :cond_7
    move v0, v4

    :goto_3
    iput-boolean v0, p0, Lיי/ⁱˊ;->ٴﹶ:Z

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v0

    if-ne v0, v5, :cond_9

    move v5, v3

    goto :goto_4

    :cond_9
    move v5, v4

    :goto_4
    iput-boolean v5, p0, Lיי/ⁱˊ;->ٴﹶ:Z

    const/16 v5, 0x40

    const/16 v6, 0x41

    if-eq v0, v5, :cond_a

    if-ne v0, v6, :cond_6

    :cond_a
    if-ne v0, v6, :cond_b

    move v0, v3

    goto :goto_5

    :cond_b
    move v0, v4

    :goto_5
    iput v3, p0, Lיי/ⁱˊ;->ʼˎ:I

    iget-object v1, v1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/16 v7, -0x54

    aput-byte v7, v1, v4

    if-eqz v0, :cond_c

    move v5, v6

    :cond_c
    int-to-byte v0, v5

    aput-byte v0, v1, v3

    iput v2, p0, Lיי/ⁱˊ;->ˆʾ:I

    goto/16 :goto_0

    :cond_d
    return-void

    :pswitch_0
    iget-object v0, p0, Lיי/ⁱˊ;->ᵔᵢ:Lˊﾞ/ٴᵢ;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    :cond_e
    :goto_6
    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v0

    if-lez v0, :cond_1a

    iget v0, p0, Lיי/ⁱˊ;->ʼˎ:I

    const/4 v1, 0x2

    iget-object v2, p0, Lיי/ⁱˊ;->ʽ:Lᐧˎ/ﹳᐧ;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_15

    if-eq v0, v3, :cond_11

    if-eq v0, v1, :cond_f

    goto :goto_6

    :cond_f
    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v0

    iget v1, p0, Lיי/ⁱˊ;->ᵔʾ:I

    iget v2, p0, Lיי/ⁱˊ;->ˆʾ:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lיי/ⁱˊ;->ᵔᵢ:Lˊﾞ/ٴᵢ;

    invoke-interface {v1, v0, p1}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget v1, p0, Lיי/ⁱˊ;->ˆʾ:I

    add-int/2addr v1, v0

    iput v1, p0, Lיי/ⁱˊ;->ˆʾ:I

    iget v0, p0, Lיי/ⁱˊ;->ᵔʾ:I

    if-ne v1, v0, :cond_e

    iget-wide v0, p0, Lיי/ⁱˊ;->ˉˆ:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v5

    if-eqz v0, :cond_10

    goto :goto_7

    :cond_10
    move v3, v4

    :goto_7
    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-object v5, p0, Lיי/ⁱˊ;->ᵔᵢ:Lˊﾞ/ٴᵢ;

    iget-wide v6, p0, Lיי/ⁱˊ;->ˉˆ:J

    iget v9, p0, Lיי/ⁱˊ;->ᵔʾ:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v5 .. v11}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iget-wide v0, p0, Lיי/ⁱˊ;->ˉˆ:J

    iget-wide v2, p0, Lיי/ⁱˊ;->ﾞʻ:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lיי/ⁱˊ;->ˉˆ:J

    iput v4, p0, Lיי/ⁱˊ;->ʼˎ:I

    goto :goto_6

    :cond_11
    iget-object v0, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v3

    iget v5, p0, Lיי/ⁱˊ;->ˆʾ:I

    const/16 v6, 0x80

    rsub-int v5, v5, 0x80

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v5, p0, Lיי/ⁱˊ;->ˆʾ:I

    invoke-virtual {p1, v0, v5, v3}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    iget v0, p0, Lיי/ⁱˊ;->ˆʾ:I

    add-int/2addr v0, v3

    iput v0, p0, Lיי/ⁱˊ;->ˆʾ:I

    if-ne v0, v6, :cond_e

    iget-object v0, p0, Lיי/ⁱˊ;->ⁱˊ:Lʻᴵ/ʻٴ;

    invoke-virtual {v0, v4}, Lʻᴵ/ʻٴ;->ʽﹳ(I)V

    invoke-static {v0}, Lˊﾞ/ﹳٴ;->ˉˆ(Lʻᴵ/ʻٴ;)Lˊﾞ/ⁱˊ;

    move-result-object v0

    iget v3, v0, Lˊﾞ/ⁱˊ;->ﾞᴵ:I

    iget v5, v0, Lˊﾞ/ⁱˊ;->ⁱˊ:I

    iget v7, v0, Lˊﾞ/ⁱˊ;->ʽ:I

    iget-object v8, v0, Lˊﾞ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    iget-object v9, p0, Lיי/ⁱˊ;->ˉʿ:Lʽⁱ/ﹳᐧ;

    if-eqz v9, :cond_12

    iget v10, v9, Lʽⁱ/ﹳᐧ;->ˊʻ:I

    if-ne v7, v10, :cond_12

    iget v10, v9, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    if-ne v5, v10, :cond_12

    iget-object v9, v9, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-static {v8, v9}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    :cond_12
    new-instance v9, Lʽⁱ/ᵔﹳ;

    invoke-direct {v9}, Lʽⁱ/ᵔﹳ;-><init>()V

    iget-object v10, p0, Lיי/ⁱˊ;->ᵎﹶ:Ljava/lang/String;

    iput-object v10, v9, Lʽⁱ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    iget-object v10, p0, Lיי/ⁱˊ;->ﾞᴵ:Ljava/lang/String;

    invoke-static {v10}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    invoke-static {v8}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iput v7, v9, Lʽⁱ/ᵔﹳ;->ᴵᵔ:I

    iput v5, v9, Lʽⁱ/ᵔﹳ;->ˊʻ:I

    iget-object v5, p0, Lיי/ⁱˊ;->ˈ:Ljava/lang/String;

    iput-object v5, v9, Lʽⁱ/ᵔﹳ;->ˈ:Ljava/lang/String;

    iget v5, p0, Lיי/ⁱˊ;->ˑﹳ:I

    iput v5, v9, Lʽⁱ/ᵔﹳ;->ﾞᴵ:I

    iput v3, v9, Lʽⁱ/ᵔﹳ;->ʼˎ:I

    const-string v5, "audio/ac3"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    iput v3, v9, Lʽⁱ/ᵔﹳ;->ᵔᵢ:I

    :cond_13
    new-instance v3, Lʽⁱ/ﹳᐧ;

    invoke-direct {v3, v9}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    iput-object v3, p0, Lיי/ⁱˊ;->ˉʿ:Lʽⁱ/ﹳᐧ;

    iget-object v5, p0, Lיי/ⁱˊ;->ᵔᵢ:Lˊﾞ/ٴᵢ;

    invoke-interface {v5, v3}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    :cond_14
    iget v3, v0, Lˊﾞ/ⁱˊ;->ˈ:I

    iput v3, p0, Lיי/ⁱˊ;->ᵔʾ:I

    iget v0, v0, Lˊﾞ/ⁱˊ;->ˑﹳ:I

    int-to-long v7, v0

    const-wide/32 v9, 0xf4240

    mul-long/2addr v7, v9

    iget-object v0, p0, Lיי/ⁱˊ;->ˉʿ:Lʽⁱ/ﹳᐧ;

    iget v0, v0, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    int-to-long v9, v0

    div-long/2addr v7, v9

    iput-wide v7, p0, Lיי/ⁱˊ;->ﾞʻ:J

    invoke-virtual {v2, v4}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    iget-object v0, p0, Lיי/ⁱˊ;->ᵔᵢ:Lˊﾞ/ٴᵢ;

    invoke-interface {v0, v6, v2}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iput v1, p0, Lיי/ⁱˊ;->ʼˎ:I

    goto/16 :goto_6

    :cond_15
    :goto_8
    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v0

    if-lez v0, :cond_e

    iget-boolean v0, p0, Lיי/ⁱˊ;->ٴﹶ:Z

    const/16 v5, 0xb

    if-nez v0, :cond_17

    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v0

    if-ne v0, v5, :cond_16

    move v0, v3

    goto :goto_9

    :cond_16
    move v0, v4

    :goto_9
    iput-boolean v0, p0, Lיי/ⁱˊ;->ٴﹶ:Z

    goto :goto_8

    :cond_17
    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v0

    const/16 v6, 0x77

    if-ne v0, v6, :cond_18

    iput-boolean v4, p0, Lיי/ⁱˊ;->ٴﹶ:Z

    iput v3, p0, Lיי/ⁱˊ;->ʼˎ:I

    iget-object v0, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    aput-byte v5, v0, v4

    aput-byte v6, v0, v3

    iput v1, p0, Lיי/ⁱˊ;->ˆʾ:I

    goto/16 :goto_6

    :cond_18
    if-ne v0, v5, :cond_19

    move v0, v3

    goto :goto_a

    :cond_19
    move v0, v4

    :goto_a
    iput-boolean v0, p0, Lיי/ⁱˊ;->ٴﹶ:Z

    goto :goto_8

    :cond_1a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ˈ(Z)V
    .locals 0

    iget p1, p0, Lיי/ⁱˊ;->ﹳٴ:I

    return-void
.end method

.method public final ˑﹳ(IJ)V
    .locals 0

    .prologue
    iget p1, p0, Lיי/ⁱˊ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    iput-wide p2, p0, Lיי/ⁱˊ;->ˉˆ:J

    return-void

    :pswitch_0
    iput-wide p2, p0, Lיי/ⁱˊ;->ˉˆ:J

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ⁱˊ()V
    .locals 2

    .prologue
    iget v0, p0, Lיי/ⁱˊ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iput v0, p0, Lיי/ⁱˊ;->ʼˎ:I

    iput v0, p0, Lיי/ⁱˊ;->ˆʾ:I

    iput-boolean v0, p0, Lיי/ⁱˊ;->ٴﹶ:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lיי/ⁱˊ;->ˉˆ:J

    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lיי/ⁱˊ;->ʼˎ:I

    iput v0, p0, Lיי/ⁱˊ;->ˆʾ:I

    iput-boolean v0, p0, Lיי/ⁱˊ;->ٴﹶ:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lיי/ⁱˊ;->ˉˆ:J

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ﾞᴵ(Lˊﾞ/ᵔﹳ;Lיי/ٴᵢ;)V
    .locals 1

    .prologue
    iget v0, p0, Lיי/ⁱˊ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Lיי/ٴᵢ;->ﹳٴ()V

    invoke-virtual {p2}, Lיי/ٴᵢ;->ⁱˊ()V

    iget-object v0, p2, Lיי/ٴᵢ;->ˑﹳ:Ljava/lang/String;

    iput-object v0, p0, Lיי/ⁱˊ;->ᵎﹶ:Ljava/lang/String;

    invoke-virtual {p2}, Lיי/ٴᵢ;->ⁱˊ()V

    iget p2, p2, Lיי/ٴᵢ;->ˈ:I

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object p1

    iput-object p1, p0, Lיי/ⁱˊ;->ᵔᵢ:Lˊﾞ/ٴᵢ;

    return-void

    :pswitch_0
    invoke-virtual {p2}, Lיי/ٴᵢ;->ﹳٴ()V

    invoke-virtual {p2}, Lיי/ٴᵢ;->ⁱˊ()V

    iget-object v0, p2, Lיי/ٴᵢ;->ˑﹳ:Ljava/lang/String;

    iput-object v0, p0, Lיי/ⁱˊ;->ᵎﹶ:Ljava/lang/String;

    invoke-virtual {p2}, Lיי/ٴᵢ;->ⁱˊ()V

    iget p2, p2, Lיי/ٴᵢ;->ˈ:I

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object p1

    iput-object p1, p0, Lיי/ⁱˊ;->ᵔᵢ:Lˊﾞ/ٴᵢ;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
