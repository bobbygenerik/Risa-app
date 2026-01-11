.class public final Lˎʾ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˎʾ/ʼˎ;


# instance fields
.field public ʼˎ:Z

.field public ʽ:J

.field public ˆʾ:Z

.field public ˈ:I

.field public ˑﹳ:I

.field public ᵎﹶ:J

.field public ᵔᵢ:Z

.field public ⁱˊ:Lˊﾞ/ٴᵢ;

.field public final ﹳٴ:Lˈـ/ﾞʻ;

.field public ﾞᴵ:J


# direct methods
.method public constructor <init>(Lˈـ/ﾞʻ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎʾ/ٴﹶ;->ﹳٴ:Lˈـ/ﾞʻ;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lˎʾ/ٴﹶ;->ʽ:J

    const/4 p1, -0x1

    iput p1, p0, Lˎʾ/ٴﹶ;->ˈ:I

    iput p1, p0, Lˎʾ/ٴﹶ;->ˑﹳ:I

    iput-wide v0, p0, Lˎʾ/ٴﹶ;->ﾞᴵ:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lˎʾ/ٴﹶ;->ᵎﹶ:J

    return-void
.end method


# virtual methods
.method public final ʽ(J)V
    .locals 4

    .prologue
    iget-wide v0, p0, Lˎʾ/ٴﹶ;->ʽ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput-wide p1, p0, Lˎʾ/ٴﹶ;->ʽ:J

    return-void
.end method

.method public final ˈ(Lˊﾞ/ᵔﹳ;I)V
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object p1

    iput-object p1, p0, Lˎʾ/ٴﹶ;->ⁱˊ:Lˊﾞ/ٴᵢ;

    iget-object p2, p0, Lˎʾ/ٴﹶ;->ﹳٴ:Lˈـ/ﾞʻ;

    iget-object p2, p2, Lˈـ/ﾞʻ;->ʽ:Lʽⁱ/ﹳᐧ;

    invoke-interface {p1, p2}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    return-void
.end method

.method public final ⁱˊ(JJ)V
    .locals 0

    iput-wide p1, p0, Lˎʾ/ٴﹶ;->ʽ:J

    const/4 p1, -0x1

    iput p1, p0, Lˎʾ/ٴﹶ;->ˑﹳ:I

    iput-wide p3, p0, Lˎʾ/ٴﹶ;->ᵎﹶ:J

    return-void
.end method

.method public final ﹳٴ(Lᐧˎ/ﹳᐧ;JIZ)V
    .locals 18

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    iget-object v3, v0, Lˎʾ/ٴﹶ;->ⁱˊ:Lˊﾞ/ٴᵢ;

    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v3

    and-int/lit8 v4, v3, 0x10

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/16 v10, 0x10

    if-ne v4, v10, :cond_1

    and-int/lit8 v4, v3, 0x7

    if-nez v4, :cond_1

    iget-boolean v4, v0, Lˎʾ/ٴﹶ;->ᵔᵢ:Z

    if-eqz v4, :cond_0

    iget v4, v0, Lˎʾ/ٴﹶ;->ˑﹳ:I

    if-lez v4, :cond_0

    iget-object v11, v0, Lˎʾ/ٴﹶ;->ⁱˊ:Lˊﾞ/ٴᵢ;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v12, v0, Lˎʾ/ٴﹶ;->ﾞᴵ:J

    iget-boolean v14, v0, Lˎʾ/ٴﹶ;->ʼˎ:Z

    iget v15, v0, Lˎʾ/ٴﹶ;->ˑﹳ:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v11 .. v17}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iput v8, v0, Lˎʾ/ٴﹶ;->ˑﹳ:I

    iput-wide v5, v0, Lˎʾ/ٴﹶ;->ﾞᴵ:J

    iput-boolean v7, v0, Lˎʾ/ٴﹶ;->ᵔᵢ:Z

    :cond_0
    iput-boolean v9, v0, Lˎʾ/ٴﹶ;->ᵔᵢ:Z

    goto :goto_0

    :cond_1
    iget-boolean v4, v0, Lˎʾ/ٴﹶ;->ᵔᵢ:Z

    const-string v11, "RtpVP8Reader"

    if-eqz v4, :cond_e

    iget v4, v0, Lˎʾ/ٴﹶ;->ˈ:I

    invoke-static {v4}, Lˈـ/ʼˎ;->ﹳٴ(I)I

    move-result v4

    if-ge v2, v4, :cond_2

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "; received: "

    const-string v3, ". Dropping packet."

    const-string v5, "Received RTP packet with unexpected sequence number. Expected: "

    invoke-static {v5, v4, v1, v2, v3}, Lﹳˎ/ˆʾ;->ʽ(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v3

    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_3

    invoke-virtual {v1, v9}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    :cond_3
    and-int/lit8 v4, v3, 0x40

    if-eqz v4, :cond_4

    invoke-virtual {v1, v9}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    :cond_4
    and-int/lit8 v4, v3, 0x20

    if-nez v4, :cond_5

    and-int/2addr v3, v10

    if-eqz v3, :cond_6

    :cond_5
    invoke-virtual {v1, v9}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    :cond_6
    iget v3, v0, Lˎʾ/ٴﹶ;->ˑﹳ:I

    if-ne v3, v8, :cond_8

    iget-boolean v3, v0, Lˎʾ/ٴﹶ;->ᵔᵢ:Z

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ᵔᵢ()I

    move-result v3

    and-int/2addr v3, v9

    if-nez v3, :cond_7

    move v3, v9

    goto :goto_1

    :cond_7
    move v3, v7

    :goto_1
    iput-boolean v3, v0, Lˎʾ/ٴﹶ;->ʼˎ:Z

    :cond_8
    iget-boolean v3, v0, Lˎʾ/ٴﹶ;->ˆʾ:Z

    if-nez v3, :cond_b

    iget v3, v1, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    add-int/lit8 v4, v3, 0x6

    invoke-virtual {v1, v4}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳᐧ()I

    move-result v4

    and-int/lit16 v4, v4, 0x3fff

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳᐧ()I

    move-result v10

    and-int/lit16 v10, v10, 0x3fff

    invoke-virtual {v1, v3}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    iget-object v3, v0, Lˎʾ/ٴﹶ;->ﹳٴ:Lˈـ/ﾞʻ;

    iget-object v3, v3, Lˈـ/ﾞʻ;->ʽ:Lʽⁱ/ﹳᐧ;

    iget v11, v3, Lʽⁱ/ﹳᐧ;->ʽﹳ:I

    if-ne v4, v11, :cond_9

    iget v11, v3, Lʽⁱ/ﹳᐧ;->ʻٴ:I

    if-eq v10, v11, :cond_a

    :cond_9
    iget-object v11, v0, Lˎʾ/ٴﹶ;->ⁱˊ:Lˊﾞ/ٴᵢ;

    invoke-virtual {v3}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v3

    iput v4, v3, Lʽⁱ/ᵔﹳ;->ˏי:I

    iput v10, v3, Lʽⁱ/ᵔﹳ;->ʽﹳ:I

    invoke-static {v3, v11}, Lﹳˎ/ˆʾ;->ﾞᴵ(Lʽⁱ/ᵔﹳ;Lˊﾞ/ٴᵢ;)V

    :cond_a
    iput-boolean v9, v0, Lˎʾ/ٴﹶ;->ˆʾ:Z

    :cond_b
    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v3

    iget-object v4, v0, Lˎʾ/ٴﹶ;->ⁱˊ:Lˊﾞ/ٴᵢ;

    invoke-interface {v4, v3, v1}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget v1, v0, Lˎʾ/ٴﹶ;->ˑﹳ:I

    if-ne v1, v8, :cond_c

    iput v3, v0, Lˎʾ/ٴﹶ;->ˑﹳ:I

    goto :goto_2

    :cond_c
    add-int/2addr v1, v3

    iput v1, v0, Lˎʾ/ٴﹶ;->ˑﹳ:I

    :goto_2
    iget-wide v10, v0, Lˎʾ/ٴﹶ;->ᵎﹶ:J

    iget-wide v14, v0, Lˎʾ/ٴﹶ;->ʽ:J

    const v9, 0x15f90

    move-wide/from16 v12, p2

    invoke-static/range {v9 .. v15}, Lcom/bumptech/glide/ʽ;->ᴵᵔ(IJJJ)J

    move-result-wide v3

    iput-wide v3, v0, Lˎʾ/ٴﹶ;->ﾞᴵ:J

    if-eqz p5, :cond_d

    iget-object v9, v0, Lˎʾ/ٴﹶ;->ⁱˊ:Lˊﾞ/ٴᵢ;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v10, v0, Lˎʾ/ٴﹶ;->ﾞᴵ:J

    iget-boolean v12, v0, Lˎʾ/ٴﹶ;->ʼˎ:Z

    iget v13, v0, Lˎʾ/ٴﹶ;->ˑﹳ:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iput v8, v0, Lˎʾ/ٴﹶ;->ˑﹳ:I

    iput-wide v5, v0, Lˎʾ/ٴﹶ;->ﾞᴵ:J

    iput-boolean v7, v0, Lˎʾ/ٴﹶ;->ᵔᵢ:Z

    :cond_d
    iput v2, v0, Lˎʾ/ٴﹶ;->ˈ:I

    return-void

    :cond_e
    const-string v1, "RTP packet is not the start of a new VP8 partition, skipping."

    invoke-static {v11, v1}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
